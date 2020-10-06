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


def remove_selected_portion(*args):
    # get arguments
    id_iti = int(args[0])

    # get project instance
    project = QgsProject.instance()

    # get layers needed
    layer_portions = project.mapLayersByName('v_portion')

    # Control if layers exists
    if not len(layer_portions):
        iface.messageBar().pushCritical('Véloroutes', 'La couche v_portion n\'a pas été trouvée')
        return
    layer_portions = layer_portions[0]

    layer_etape = project.mapLayersByName('etape')
    if not len(layer_etape):
        iface.messageBar().pushCritical('Véloroutes', 'La table etape n\'a pas été trouvée')
        return
    layer_etape = layer_etape[0]

    # count number of features selected from v_portion layer
    count = layer_portions.selectedFeatureCount()
    if count < 1:
        iface.messageBar().pushCritical('Véloroutes', 'Vous devez sélectionner au moins une portion')
        return

    # get list etape
    couple_etape = []
    for feat in layer_etape.getFeatures(QgsExpression.createFieldEqualityExpression('id_itineraire', id_iti)):
        couple_etape.append((feat['id_itineraire'], feat['id_portion']))

    # create list of couples between args (id_iti) and feature (id_portion)
    features = layer_portions.getSelectedFeatures()
    couple_id = []
    for feat in features:
        couple_id.append((id_iti, feat['id_portion']))

    # test between two lists
    match_list = []
    for item in couple_etape:
        if item in couple_id:
            match_list.append(item)

    # test if match_list is empty
    if len(match_list) < 1:
        iface.messageBar().pushInfo('Véloroutes', 'Pas d\'étape à supprimer')
        return
    layer_etape.startEditing()
    count = 0
    for feat in layer_etape.getFeatures(QgsExpression.createFieldEqualityExpression('id_itineraire', id_iti)):
        if (feat['id_itineraire'], feat['id_portion']) in match_list:
            layer_etape.deleteFeature(feat.id())
            count += 1
    layer_etape.commitChanges()
    msg = "{} étapes ont été supprimées".format(count)
    iface.messageBar().pushInfo('Véloroutes', msg)
