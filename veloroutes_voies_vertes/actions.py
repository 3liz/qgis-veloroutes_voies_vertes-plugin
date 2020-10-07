"""
Created on Tue Jul  7 10:06:14 2020

@author: enola sengeissen

Actions."""

from qgis.core import (
    QgsProviderRegistry,
    QgsExpressionContextUtils,
    QgsProject,
    QgsProviderConnectionException,
    QgsExpression,
)

from qgis.utils import iface

__copyright__ = 'Copyright 2019, 3Liz'
__license__ = 'GPL version 3'
__email__ = 'info@3liz.org'
__revision__ = '$Format:%H$'


def split_segment(*args):
    id_seg = int(args[0])
    xnode = args[1]
    ynode = args[2]
    project = QgsProject.instance()
    connection_name = QgsExpressionContextUtils.projectScope(project).variable(
        "veloroutes_connection_name"
    )
    if not connection_name:
        iface.messageBar().pushCritical('Véloroutes', 'Vous devez configurer le plugin')
        return
    metadata = QgsProviderRegistry.instance().providerMetadata('postgres')
    connection = metadata.findConnection(connection_name)
    try:
        sql = """SELECT veloroutes.split({},{},{})""".format(id_seg, xnode, ynode)
        connection.executeSql(sql)
        msg = "Le segment {} a bien été coupé".format(id_seg)
        iface.messageBar().pushInfo('Véloroutes', msg)
    except QgsProviderConnectionException as e:
        iface.messageBar().pushCritical('Véloroutes', e.args[0])


def _remove_selected_from_relation(
    agg_id: int, src_primary_key: str, src_layer_name: str, rel_primary_key: str, rel_layer_name: str):
    # get arguments
    id_value = agg_id

    # get project instance
    project = QgsProject.instance()

    # get layers needed
    src_layer = project.mapLayersByName(src_layer_name)

    # Control if layers exists
    if not len(src_layer):
        iface.messageBar().pushCritical('Véloroutes', 'La couche {} n\'a pas été trouvée'.format(
            src_layer_name))
        return
    src_layer = src_layer[0]

    rel_layer = project.mapLayersByName(rel_layer_name)
    if not len(rel_layer):
        iface.messageBar().pushCritical('Véloroutes', 'La table {} n\'a pas été trouvée'.format(
            rel_layer_name))
        return
    rel_layer = rel_layer[0]

    # count number of features selected from src_layer
    count = src_layer.selectedFeatureCount()
    if count < 1:
        iface.messageBar().pushCritical(
            'Véloroutes',
            'Vous devez sélectionner au moins un objet de la couche {}'.format(src_layer_name))
        return

    # get list rel_layer
    couple_rel = []
    for feat in rel_layer.getFeatures(QgsExpression.createFieldEqualityExpression(src_primary_key, id_value)):
        couple_rel.append((feat[src_primary_key], feat[rel_primary_key]))

    # create list of couples between src_primary_key and rel_primary_key
    features = src_layer.getSelectedFeatures()
    couple_id = []
    for feat in features:
        couple_id.append((id_value, feat[rel_primary_key]))

    # test between two lists
    match_list = []
    for item in couple_rel:
        if item in couple_id:
            match_list.append(item)

    # test if match_list is empty
    if len(match_list) < 1:
        iface.messageBar().pushInfo(
            'Véloroutes',
            'Pas d\'objet de la couche {} à supprimer'.format(rel_layer_name))
        return
    rel_layer.startEditing()
    count = 0
    for feat in rel_layer.getFeatures(QgsExpression.createFieldEqualityExpression(src_primary_key, id_value)):
        if (feat[src_primary_key], feat[rel_primary_key]) in match_list:
            rel_layer.deleteFeature(feat.id())
            count += 1
    rel_layer.commitChanges()
    msg = "{} objet(s) ont été supprimées de la couche {}".format(count, rel_layer_name)
    iface.messageBar().pushInfo('Véloroutes', msg)


def remove_selected_portion(*args):
    _remove_selected_from_relation(int(args[0]), 'id_itineraire', 'v_portion', 'id_portion', 'etape')


def remove_selected_segment(*args):
    _remove_selected_from_relation(int(args[0]), 'id_portion', 'segment', 'id_segment', 'element')
