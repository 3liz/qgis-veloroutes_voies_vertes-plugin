#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
Created on Mon May 18 15:38:08 2020

@author: enolasengeissen
"""
__copyright__ = "Copyright 2020, 3Liz"
__license__ = "GPL version 3"
__email__ = "info@3liz.org"
__revision__ = "$Format:%H$"


from qgis.core import QgsApplication

class VeloroutesPlugin:
    def __init__(self, iface):
        self.iface = iface
        self.provider = None
        
    def initProcessing (self):
        pass
    
    def initGui(self):
        self.initProcessing()
        
    def unload(self):
        if self.provider:
            QgsApplication.processingRegistry().removeProvider(self.provider)