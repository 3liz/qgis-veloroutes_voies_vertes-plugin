#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
Created on Mon May 18 15:35:03 2020

@author: enolasengeissen
"""


__copyright__ = "Copyright 2020, 3Liz"
__license__ = "GPL version 3"
__email__ = "info@3liz.org"
__revision__ = "$Format:%H$"


# noinspection PyPep8Naming
def classFactory(iface):  # pylint: disable=invalid-name
    """Load Plugin

    :param iface: A QGIS interface instance.
    :type iface: QgsInterface
    """
    #
    from .plugin import VeloroutesPlugin

    return VeloroutesPlugin(iface)
