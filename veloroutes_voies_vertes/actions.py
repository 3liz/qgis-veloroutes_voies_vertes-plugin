"""
Created on Tue Jul  7 10:06:14 2020

@author: enola sengeissen

Actions."""

from qgis.core import (
    QgsProviderRegistry,
    QgsMessageLog,
    Qgis,
    QgsExpressionContextUtils
)

__copyright__ = 'Copyright 2019, 3Liz'
__license__ = 'GPL version 3'
__email__ = 'info@3liz.org'
__revision__ = '$Format:%H$'


def split_segment(*args):
    id_seg = int(args[0])
    xnode= args[1]
    ynode= args[2]

    metadata = QgsProviderRegistry.instance().providerMetadata('postgres')
    connection_name = QgsExpressionContextUtils.globalScope().variable(
            "veloroutes_connection_name"
    )

    QgsMessageLog.logMessage(connection_name, 'VéloroutesPlugin', Qgis.Info)
    connection = metadata.findConnection(connection_name)
    sql="""SELECT veloroutes.split({},{},{})""".format(id_seg, xnode, ynode)
    connection.executeSql(sql)
    message = "segment " + str(id_seg) +" split"
    QgsMessageLog.logMessage(message, 'VéloroutesPlugin', Qgis.Info)
