"""
Created on Tue Jul  7 10:06:14 2020

@author: enola sengeissen

Actions."""

from qgis.core import (
    QgsProviderRegistry,
    QgsMessageLog,
    Qgis,
    QgsExpressionContextUtils,
    QgsProject,
)

from qgis.utils import iface

__copyright__ = 'Copyright 2019, 3Liz'
__license__ = 'GPL version 3'
__email__ = 'info@3liz.org'
__revision__ = '$Format:%H$'


def split_segment(*args):
    id_seg = int(args[0])
    xnode= args[1]
    ynode= args[2]
    project= QgsProject.instance()
    connection_name = QgsExpressionContextUtils.projectScope(project).variable(
            "veloroutes_connection_name"
    )
    if not connection_name:
        iface.messageBar().pushCritical('Véloroutes', 'Vous devez configurer le plugin')
        return
    metadata = QgsProviderRegistry.instance().providerMetadata('postgres')
    connection = metadata.findConnection(connection_name)
    try:
        sql="""SELECT veloroutes.split({},{},{})""".format(id_seg, xnode, ynode)
        connection.executeSql(sql)
        msg= "Le segment " + str(id_seg) + " a bien été coupé"
        iface.messageBar().pushInfo('Véloroutes', msg)
    except Exception as e:  # attempt to use QgsProviderConnectionException instead cf #34
        msg = e.args[0]
        iface.messageBar().pushCritical('Véloroutes', msg)
    message = "segment " + str(id_seg) +" split"
    QgsMessageLog.logMessage(message, 'VéloroutesPlugin', Qgis.Info)
