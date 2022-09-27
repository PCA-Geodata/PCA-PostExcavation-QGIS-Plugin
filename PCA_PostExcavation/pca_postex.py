# -*- coding: utf-8 -*-
"""
/***************************************************************************
 PCA_PostExc
                                 A QGIS plugin
 This plugin helps during the postex phase
 Generated by Plugin Builder: http://g-sherman.github.io/Qgis-Plugin-Builder/
                              -------------------
        begin                : 2022-08-25
        git sha              : $Format:%H$
        copyright            : (C) 2022 by Valerio Pinna
        email                : pinnavalerio@yahoo.co.uk
 ***************************************************************************/

/***************************************************************************
 *                                                                         *
 *   This program is free software; you can redistribute it and/or modify  *
 *   it under the terms of the GNU General Public License as published by  *
 *   the Free Software Foundation; either version 2 of the License, or     *
 *   (at your option) any later version.                                   *
 *                                                                         *
 ***************************************************************************/
"""
import os
import time
import inspect
import processing
from qgis.PyQt.QtCore import QSettings, QTranslator, QCoreApplication, QVariant
from qgis.PyQt.QtGui import QIcon, QKeySequence
from qgis.PyQt.QtWidgets import QAction, QMessageBox, QToolBar, QShortcut, QProgressBar
from qgis.core import *
from qgis.utils import iface
from PyQt5 import QtGui
from PyQt5.QtCore import Qt
from PyQt5.QtWidgets import QDialog

from PyQt5.QtWidgets import QShortcut




# Initialize Qt resources from file resources.py
from .resources import *
# Import the code for the dialog
from .pca_postex_dialog import PCA_PostExcDialog
from .pca_postex_update_DRS_dialog import PCA_PostExc_updateDRS_Dialog
from .pca_postex_generate_layer_dialog import PCA_PostExc_GenerateLayer_Dialog
from .pca_postex_progress_bar_dialog import PCA_PostExc_ProgressBar_Dialog

import os.path


cmd_folder = os.path.split(inspect.getfile(inspect.currentframe()))[0]

class PCA_PostExc:
    """QGIS Plugin Implementation."""

    def __init__(self, iface):
        """Constructor.

        :param iface: An interface instance that will be passed to this class
            which provides the hook by which you can manipulate the QGIS
            application at run time.
        :type iface: QgsInterface
        """
        # Save reference to the QGIS interface
        self.iface = iface
        # initialize plugin directory
        self.plugin_dir = os.path.dirname(__file__)
        # initialize locale
        locale = QSettings().value('locale/userLocale')[0:2]
        locale_path = os.path.join(
            self.plugin_dir,
            'i18n',
            'PCA_PostExc_{}.qm'.format(locale))

        if os.path.exists(locale_path):
            self.translator = QTranslator()
            self.translator.load(locale_path)
            QCoreApplication.installTranslator(self.translator)

        # Declare instance attributes
        self.actions = []
        self.menu = self.tr(u'&PCA PostExcavation')
        
        # Test ## Add dialogues istances
        self.dlg = PCA_PostExcDialog()        
        self.dlgtool2 = PCA_PostExc_updateDRS_Dialog()
        self.dlgtool3 = PCA_PostExc_GenerateLayer_Dialog()
        self.dlgtool4 = PCA_PostExc_ProgressBar_Dialog()
        
        self.toolbar = iface.mainWindow().findChild( QToolBar, u'PCA PostExcavation Toolbar' )
        if not self.toolbar:
            self.toolbar = iface.addToolBar( u'PCA PostExcavation Toolbar' )
            self.toolbar.setObjectName( u'PCA PostExcavation Toolbar' )
            self.toolbar.setToolTip("")
        

        # Check if plugin was started the first time in current QGIS session
        # Must be set in initGui() to survive plugin reloads
        self.first_start = None

    # noinspection PyMethodMayBeStatic
    def tr(self, message):
        """Get the translation for a string using Qt translation API.

        We implement this ourselves since we do not inherit QObject.

        :param message: String for translation.
        :type message: str, QString

        :returns: Translated version of message.
        :rtype: QString
        """
        # noinspection PyTypeChecker,PyArgumentList,PyCallByClass
        return QCoreApplication.translate('PCA_PostExc', message)

    def add_action(
        self,
        icon_path,
        text,
        callback,
        enabled_flag=True,
        add_to_menu=True,
        add_to_toolbar=True,
        status_tip=None,
        whats_this=None,
        parent=None):
        """Add a toolbar icon to the toolbar.

        :param icon_path: Path to the icon for this action. Can be a resource
            path (e.g. ':/plugins/foo/bar.png') or a normal file system path.
        :type icon_path: str

        :param text: Text that should be shown in menu items for this action.
        :type text: str

        :param callback: Function to be called when the action is triggered.
        :type callback: function

        :param enabled_flag: A flag indicating if the action should be enabled
            by default. Defaults to True.
        :type enabled_flag: bool

        :param add_to_menu: Flag indicating whether the action should also
            be added to the menu. Defaults to True.
        :type add_to_menu: bool

        :param add_to_toolbar: Flag indicating whether the action should also
            be added to the toolbar. Defaults to True.
        :type add_to_toolbar: bool

        :param status_tip: Optional text to show in a popup when mouse pointer
            hovers over the action.
        :type status_tip: str

        :param parent: Parent widget for the new action. Defaults None.
        :type parent: QWidget

        :param whats_this: Optional text to show in the status bar when the
            mouse pointer hovers over the action.

        :returns: The action that was created. Note that the action is also
            added to self.actions list.
        :rtype: QAction
        """

        icon = QIcon(icon_path)
        action = QAction(icon, text, parent)
        action.triggered.connect(callback)
        action.setEnabled(enabled_flag)

        if status_tip is not None:
            action.setStatusTip(status_tip)

        if whats_this is not None:
            action.setWhatsThis(whats_this)

        if add_to_toolbar:
            # Adds plugin icon to Plugins toolbar
            #self.iface.addToolBarIcon(action)
            self.toolbar.addAction(action)
            
        if add_to_menu:
            self.iface.addPluginToMenu(
                self.menu,
                action)

        self.actions.append(action)

        return action

    def initGui(self):
        """Create the menu entries and toolbar icons inside the QGIS GUI."""       
            
        self.changeattributes= self.add_action( 
            icon_path = ':/plugins/pca_postex/icons/pca_logo_icon.png',
            text=self.tr(u''),
            callback=self.dontdonothing,
            parent=self.iface.mainWindow())     
        # will be set False in change_attributes()
        self.first_start = True
       
        self.layergeneratoricon= self.add_action( 
            icon_path = ':/plugins/pca_postex/icons/PCA_postex_layer_generator_icon.png',
            text=self.tr(u'Generate the PCA post-excavation layer'),
            callback=self.generate_postex_layer,
            parent=self.iface.mainWindow())     
        # will be set False in generate_postex_layer()
        self.first_start = True
        
        self.changeattributes= self.add_action( 
            icon_path = ':/plugins/pca_postex/icons/PCA_postex_change_attribute_icon.png',
            text=self.tr(u'Add post-excavation attributes to selected features'),
            callback=self.change_attributes,
            parent=self.iface.mainWindow())     
        # will be set False in change_attributes()
        self.first_start = True
        
        self.changeattributes= self.add_action( 
            icon_path = ':/plugins/pca_postex/icons/PCA_postex_reapply_style_icon.png',
            text=self.tr(u'Re-apply the Period Colours Style'),
            callback=self.reapply_period_style,
            parent=self.iface.mainWindow())     
        # will be set False in change_attributes()
        self.first_start = True
        
        
        self.changeattributes= self.add_action( 
            icon_path = ':/plugins/pca_postex/icons/PCA_postex_update_DRS_icon.png',
            text=self.tr(u'Update the DRS spreadsheet with the post-excavation information'),
            callback=self.update_DRS_table,
            parent=self.iface.mainWindow())     
        # will be set False in change_attributes()
        self.first_start = True
        
        
        
        
        


        # will be set False in run()
        self.first_start = True

    def unload(self):
        """Removes the plugin menu item and icon from QGIS GUI."""
        for action in self.actions:
            self.iface.removePluginMenu(
                self.tr(u'&PCA PostExcavation'),
                action)
            self.iface.removeToolBarIcon(action)
            
    def group_names_list(self):
        group_names_list = ['','Ditch', 'Mound', 'Roundhouse','SFB','Structure','Kiln','Corn Dryer','Pond','Well / Waterhole','Bedding Trench','Furrow','Pit Cluster','Pit Alignment','Pit Group','Surface','Fence Line','Inhumation Burial','Cremation Burial','Oven','Deposit']
        
        self.dlg.group_name_comboBox.clear()
        self.dlg.group_name_comboBox.addItems(group_names_list)
        
    def entity_names_list(self):
        entity_names_list = ['','Cemetery','Field System','Enclosure', 'Linear Boundary','Road/Trackway','Monument', 'Palaeochannel' ]
        
        self.dlg.entity_name_comboBox.clear()
        self.dlg.entity_name_comboBox.addItems(entity_names_list)
        
    def period_list(self):
        period_list = ['','Neolithic', 'Bronze Age', 'Iron Age', 'Roman', 'Saxon', 'Medieval', 'Post Medieval', 'Modern']

        self.dlg.period_comboBox.clear()
        self.dlg.period_comboBox.addItems(period_list)

    def subperiod_list_changed(self):
        ch_period = self.dlg.period_comboBox.currentText()
        global sub_neolithic_list
        sub_neolithic_list = ['','Early Neolithic', 'Middle Neolithic', 'Late Neolithic']
        global sub_bronze_age_list
        sub_bronze_age_list = ['','Early Bronze Age', 'Middle Bronze Age', 'Late Bronze Age']
        global sub_iron_age_list
        sub_iron_age_list = ['','Early Iron Age','Middle Iron Age','Late Iron Age']
        global sub_roman_list
        sub_roman_list = ['','Early Roman', 'Middle Roman','Late Roman']
        global sub_saxon_list
        sub_saxon_list = ['','Early Saxon','Middle Saxon','Late Saxon']
        global sub_medieval_list
        sub_medieval_list = ['','Anglo-Norman/Early Medieval','High Medieval','Late Medieval']
        global sub_postmedieval_list
        sub_postmedieval_list = ['', 'Early Post Medieval', 'Middle Post Medieval', 'Late Post Medieval']
        global sub_modern_list
        sub_modern_list = ['']

        if ch_period == 'Neolithic':
            self.dlg.sub_period_comboBox.clear()
            self.dlg.sub_period_comboBox.addItems(sub_neolithic_list)
            
        if ch_period == 'Bronze Age':
            self.dlg.sub_period_comboBox.clear()
            self.dlg.sub_period_comboBox.addItems(sub_bronze_age_list)

        if ch_period == 'Iron Age':
            self.dlg.sub_period_comboBox.clear()
            self.dlg.sub_period_comboBox.addItems(sub_iron_age_list)
        
        if ch_period == 'Roman':
            self.dlg.sub_period_comboBox.clear()
            self.dlg.sub_period_comboBox.addItems(sub_roman_list)
        
        if ch_period == 'Saxon':
            self.dlg.sub_period_comboBox.clear()
            self.dlg.sub_period_comboBox.addItems(sub_saxon_list)
            
        if ch_period == 'Medieval':
            self.dlg.sub_period_comboBox.clear()
            self.dlg.sub_period_comboBox.addItems(sub_medieval_list)
        
        if ch_period == 'Post Medieval':
            self.dlg.sub_period_comboBox.clear()
            self.dlg.sub_period_comboBox.addItems(sub_postmedieval_list)
            
        if ch_period == 'Modern':
            self.dlg.sub_period_comboBox.clear()
            self.dlg.sub_period_comboBox.addItems(sub_modern_list)
                   
    def change_period_number(self):
        ch_period = self.dlg.period_comboBox.currentText()
        if ch_period == 0:
            return self.dontdonothing
        if ch_period == '':
            self.dlg.period_number_comboBox.clear()
            return self.dontdonothing
        else:
            
            period_list = ['Neolithic', 'Bronze Age', 'Iron Age', 'Roman', 'Saxon', 'Medieval', 'Post Medieval', 'Modern']
            ch_period_number = str(period_list.index(ch_period)+1)

            ch_period_number_list = []
            ch_period_number_list.append(ch_period_number)
            self.dlg.period_number_comboBox.clear()
            self.dlg.period_number_comboBox.addItems(ch_period_number_list)     
            
    def change_subperiod_number(self):
        ch_period = self.dlg.period_comboBox.currentText()
        period_number = self.dlg.period_number_comboBox.currentText() 
        ch_subperiod = self.dlg.sub_period_comboBox.currentText()
        
        if ch_subperiod == 0:
            return self.dontdonothing
        else:

            AllItems = [self.dlg.sub_period_comboBox.itemText(i) for i in range(self.dlg.sub_period_comboBox.count())]
            if len(AllItems) == 0: 
                return self.dontdonothing
            else:
                if ch_subperiod == '':
                    self.dlg.subperiod_number_comboBox.clear()
                if ch_subperiod != '':
                
                
                    ch_subperiod_number = str(AllItems.index(ch_subperiod))
                    if ch_subperiod_number == 0:
                        return self.dontdonothing
                    else:
                        ch_subperiod_number_final = period_number+'.'+ch_subperiod_number
                        ch_subperiod_number_list = []
                        ch_subperiod_number_list.append(ch_subperiod_number_final)
                        self.dlg.subperiod_number_comboBox.clear()
                        self.dlg.subperiod_number_comboBox.addItems(ch_subperiod_number_list)  
                        
    def change_group_number(self):
        ch_group_name = self.dlg.group_name_comboBox.currentText() 
        
        vlayer = QgsProject.instance().mapLayersByName('Features_for_PostEx')[0]
        if ch_group_name == '':
            self.dlg.group_number_comboBox.clear()
        if ch_group_name != '':
        
            used_group_list = set()
            for f in vlayer.getFeatures():
                name = f["Group"]
                if name != NULL:
                    used_group_list.add(name)
                    
                    
            print (used_group_list)
            filtered_list = []
            for a in used_group_list:
                if a.find(ch_group_name) == 0:
                    filtered_list.append(a)
            
            print (filtered_list)
            print (len(filtered_list)+1)
            new_group_number = str((len(filtered_list)+1))
            proposed_group_number_list = []
            proposed_group_number_list.append(new_group_number)
            
            self.dlg.group_number_comboBox.clear()
            self.dlg.group_number_comboBox.addItems(proposed_group_number_list)  
            used_group_list.clear()
            filtered_list.clear()
            
    def change_entity_number(self):
        ch_entity_name = self.dlg.entity_name_comboBox.currentText() 
        
        vlayer = QgsProject.instance().mapLayersByName('Features_for_PostEx')[0]
        if ch_entity_name == '':
            self.dlg.entity_number_comboBox.clear()
        if ch_entity_name != '':
        
            used_entity_list = set()
            for f in vlayer.getFeatures():
                name = f["Entity"]
                if name != NULL:
                    used_entity_list.add(name)
                    
                    
            print (used_entity_list)
            entity_filtered_list = []
            for a in used_entity_list:
                if a.find(ch_entity_name) == 0:
                    entity_filtered_list.append(a)
            
            print (entity_filtered_list)
            print (len(entity_filtered_list)+1)
            new_entity_number = str((len(entity_filtered_list)+1))
            proposed_entity_number_list = []
            proposed_entity_number_list.append(new_entity_number)
            
            self.dlg.entity_number_comboBox.clear()
            self.dlg.entity_number_comboBox.addItems(proposed_entity_number_list)  
            used_entity_list.clear()
            entity_filtered_list.clear()
                                  
    def change_attributes(self):
        """Run method that performs all the real work"""
        
        
        
        # Create the dialog with elements (after translation) and keep reference
        # Only create GUI ONCE in callback, so that it will only load when the plugin is started
        if self.first_start == True:
            self.first_start = False
            
            
            # self.dlg = PCA_PostExcDialog()
            self.period_list()
            self.group_names_list()
            self.entity_names_list()
            
            
            
            self.dlg.period_comboBox.currentTextChanged.connect(self.subperiod_list_changed)
            self.dlg.period_comboBox.currentTextChanged.connect(self.change_period_number)
            
            self.dlg.sub_period_comboBox.currentTextChanged.connect(self.change_subperiod_number)
            
            self.dlg.group_name_comboBox.currentTextChanged.connect(self.change_group_number)
            self.dlg.entity_name_comboBox.currentTextChanged.connect(self.change_entity_number)
            
            
        
        if len(QgsProject.instance().mapLayersByName('Features_for_PostEx')) == 0:
            QMessageBox.warning(
            None,
            'PCA PostExcavation Plugin',
            'There is not a valid PostExcavation layer. Use the appropriate tool in this toolbar to generate it and retry.')
        ####ADD CHECK FOR LAYER AND MESSAGE HOW TO CREATE IT#########
        else: 
            layer = QgsProject.instance().mapLayersByName('Features_for_PostEx')[0]
             
            # Check, with messages, that at least one feature is selected
            if layer.selectedFeatureCount() == 0:
                QMessageBox.warning(
                None,
                'PCA PostExcavation Plugin',
                'There is no selection. Select at least one feature.')
            if layer.selectedFeatureCount() != 0:
               
                self.entity_names_list()
                self.group_names_list()
                # show the dialog
                #self.dlg = QDialog(iface.mainWindow())
                
                self.dlg.show()
                # Run the dialog event loop
                result = self.dlg.exec_()
                # See if OK was pressed
                if result:
                    # Do something useful here - delete the line containing pass and
                    # substitute with your code.
                    
                    layer = QgsProject.instance().mapLayersByName('Features_for_PostEx')[0]
                    
                    period = self.dlg.period_comboBox.currentText()
                    subperiod = self.dlg.sub_period_comboBox.currentText()
                    period_number = self.dlg.period_number_comboBox.currentText()         
                    subperiod_number = self.dlg.subperiod_number_comboBox.currentText()         
                    group_name = self.dlg.group_name_comboBox.currentText()         
                    group_number = self.dlg.group_number_comboBox.currentText()       
                    entity_name = self.dlg.entity_name_comboBox.currentText()         
                    entity_number = self.dlg.entity_number_comboBox.currentText()  
                    phase = self.dlg.phase_comboBox.currentText()        
                    
                    
                    group_value = group_name+' '+group_number
                    
                    entity_value = entity_name+' '+entity_number
                    
                    period_field_idx = layer.fields().indexOf('Period')
                    period_new_value = period

                    sub_period_field_idx = layer.fields().indexOf('SubPeriod')
                    sub_period_new_value = subperiod
                    
                    period_number_field_idx = layer.fields().indexOf('Period_no')
                    period_number_new_value = period_number
                    
                    sub_period_number_field_idx = layer.fields().indexOf('SubPer_no')
                    sub_period_number_new_value = subperiod_number
                    
                    group_field_idx = layer.fields().indexOf('Group')
                    group_new_value = group_value
                    
                    entity_field_idx = layer.fields().indexOf('Entity')
                    
                    
                    phase_field_idx = layer.fields().indexOf('Phase')
                    
                 
                    
                    
                    
                    layer.startEditing()
                    for feat_id in layer.selectedFeatureIds():
                        layer.changeAttributeValue(feat_id, period_field_idx, period_new_value)
                        layer.changeAttributeValue(feat_id, sub_period_field_idx, sub_period_new_value)
                       
                        layer.changeAttributeValue(feat_id, period_number_field_idx, period_number_new_value)
                        layer.changeAttributeValue(feat_id, sub_period_number_field_idx, sub_period_number_new_value)
                       
                    
                    
                        # if len(group_value) < 2:
                            # return self.dontdonothing()
                        if len(group_value) > 3:
                            #for feat_id in layer.selectedFeatureIds():
                            layer.changeAttributeValue(feat_id, group_field_idx, group_new_value)
                          
                    
                    
                        # if len(entity_value) < 2:
                            # return self.dontdonothing()
                        if len(entity_value) > 3:
                            #for feat_id in layer.selectedFeatureIds():
                            layer.changeAttributeValue(feat_id, entity_field_idx, entity_value)
                        
                        
                        
                        # if len(phase) == 0:
                            # return self.dontdonothing()
                        if len(phase) != 0:
                            #for feat_id in layer.selectedFeatureIds():
                            layer.changeAttributeValue(feat_id, phase_field_idx, phase)
                            
                            
                   
                    
                    layer.commitChanges()
                    self.dlg.group_number_comboBox.clear()
                    self.dlg.group_name_comboBox.clear()   
                    self.dlg.entity_number_comboBox.clear()
                    self.dlg.entity_name_comboBox.clear() 
    
    def generate_postex_layer(self):
        if self.first_start == True:
            self.first_start = False
            
            
            
        # show the dialog
        self.dlgtool3.show()
        # Run the dialog event loop
        result = self.dlgtool3.exec_()
        # See if OK was pressed
        if result:
            #add the action here
            
        
        
            root = QgsProject.instance().layerTreeRoot()
            if root.findGroup("Site Plan") is None:
                QMessageBox.about(
                None,
                'PCA PostExcavation Plugin',
                '''This is not a valid PCA QGIS Site Plan Project''')
        
                
                return self.dontdonothing()
                
            else:
                pass
        
            
            #create a new folder
            # Directory
            directory = "PostEx_Layer"

            #Project Folder
            project_dir = QgsProject.instance().homePath() + '/Shapefile/'

            path = os.path.join(project_dir,directory)

            if not os.path.exists(path):
                os.makedirs(path)
            else:
                pass
                
            #create new group


            for child in root.children():
                sitenamegroup = (child.name())
        
                if child.findGroup("PostEx") is None:
                    child.insertGroup(0, "PostEx")    


            #to check if the layer already exists
            file = path+ '/Features_for_PostEx.shp'

            if os.path.exists(file) == True:
                reply = QMessageBox.warning(None,  'PCA PostExcavation Plugin',
                                                    '''The file 'Features_for_PostEx' already exists! \nDo you want to overwrite it? All your previous edits will be lost. \n \nTo overwrite, select YES and delete the old files from the \
                                                    disk (the folder will be open automatically) and then, re-run the plugin.''',
                                                    QMessageBox.Yes, QMessageBox.No)
                if reply == QMessageBox.No: 
                    return self.dontdonothing()
                            
                if reply == QMessageBox.Yes:
                    for lyr in QgsProject.instance().mapLayers().values():
                        if lyr.name() == "Features_for_PostEx":
                            QgsProject.instance().removeMapLayers([lyr.id()])
                    path = os.path.realpath(path)
                    os.startfile(path)
                    # QMessageBox.about(None,'PCA PostExcavation Plugin', 'Manually delete the older files and re-run the plugin')   
                    
                    return self.dontdonothing()

           
            shapefile_list = []

          

            origlayer_feature = QgsProject.instance().mapLayersByName('Archaeological_Features')[0]
            origlayer_feature_path = origlayer_feature.source()
            shapefile_list.append(origlayer_feature_path)
            
            origlayer_burial = QgsProject.instance().mapLayersByName('Burials')[0]
            origlayer_burial_path = origlayer_burial.source()
            shapefile_list.append(origlayer_burial_path)
            
            origlayer_layers = QgsProject.instance().mapLayersByName('Layers')[0]
            origlayer_layers_path = origlayer_layers.source()
            shapefile_list.append(origlayer_layers_path)
            
            origlayer_masonry = QgsProject.instance().mapLayersByName('Masonry')[0]
            origlayer_masonry_path = origlayer_masonry.source()
            shapefile_list.append(origlayer_masonry_path)
            
            origlayer_modern = QgsProject.instance().mapLayersByName('Modern')[0]
            origlayer_modern_path = origlayer_modern.source()
            shapefile_list.append(origlayer_modern_path)
            
            origlayer_furrows = QgsProject.instance().mapLayersByName('Furrows_and_Ridges')[0]
            origlayer_furrows_path = origlayer_furrows.source()
            shapefile_list.append(origlayer_furrows_path)
            

            parameters = {'LAYERS': shapefile_list, 
                          'CRS': 'EPSG:27700', 
                          'OUTPUT': str(path+'/Features_for_PostEx.shp')}

            processing.run("qgis:mergevectorlayers", parameters) 
                
            new_layer = path+'/Features_for_PostEx.shp'
            postexlayer = iface.addVectorLayer(new_layer, "Features_for_PostEx", "ogr")
            if not postexlayer:
                print("Layer failed to load!")

            thelayers = QgsProject.instance().mapLayersByName("Features_for_PostEx")
            thelayer = thelayers[0]
            myblayer = root.findLayer(thelayer.id())
            myClone = myblayer.clone()
            parent = myblayer.parent()
            root.findGroup("PostEx").insertChildNode(1, myClone)
            parent.removeChildNode(myblayer) 

            #expand group
            layeronplace = QgsProject.instance().mapLayersByName('Features_for_PostEx')[0]
            myLayerNode = root.findLayer(layeronplace.id())
            myLayerNode.setExpanded(True)


            #remove fields
            final_layer = QgsProject.instance().mapLayersByName("Features_for_PostEx")[0]
            caps = final_layer.dataProvider().capabilities()
            res = final_layer.dataProvider().deleteAttributes([0,1,2,3,4,5,6,7,8,10])
            ##add new fields
            
            resadd = final_layer.dataProvider()
            resadd.addAttributes([QgsField('Group', QVariant.String, '', 254),
                                  QgsField('Entity', QVariant.String, '', 254),
                                  QgsField('Period', QVariant.String, '', 254),
                                  QgsField('Period_no', QVariant.String, '', 254),
                                  QgsField('SubPeriod', QVariant.String, '', 254),
                                  QgsField('SubPer_no', QVariant.String, '', 254),
                                  QgsField('Phase', QVariant.String, '', 254),
                                  QgsField('Notes', QVariant.String, '', 254)])
              
            
            final_layer.updateFields()  
            
            #add style from file
            
            final_layer.loadNamedStyle(os.path.join(os.path.join(cmd_folder, 'qml/PCA_PostExcavation_Features_Style.qml')))    

            iface.mapCanvas().refresh()

            node_group1 = root.findGroup("PostEx")
            node_group1.setExpanded(False) # set as false to remove the false true at the creation
            node_group1.setExpanded(True)
            
            myLayerNode = root.findLayer(final_layer.id())
            myLayerNode.setExpanded(True)

            root.findLayer(origlayer_feature.id()).setItemVisibilityCheckedParentRecursive(False)
            root.findLayer(origlayer_burial.id()).setItemVisibilityCheckedParentRecursive(False)
            root.findLayer(origlayer_layers.id()).setItemVisibilityCheckedParentRecursive(False)
            root.findLayer(origlayer_masonry.id()).setItemVisibilityCheckedParentRecursive(False)
            root.findLayer(origlayer_modern.id()).setItemVisibilityCheckedParentRecursive(False)
            root.findLayer(origlayer_furrows.id()).setItemVisibilityCheckedParentRecursive(False)
            
            QgsProject.instance().layerTreeRoot().findGroup(sitenamegroup).setItemVisibilityChecked(True)
            QgsProject.instance().layerTreeRoot().findGroup('Site Plan').setItemVisibilityChecked(True)
            
            
            root.findLayer(final_layer.id()).setItemVisibilityCheckedParentRecursive(False)
            root.findLayer(final_layer.id()).setItemVisibilityCheckedParentRecursive(True)

            
            iface.setActiveLayer(final_layer)
            
            QMessageBox.about(
            None,
            'PCA PostExcavation Plugin',
            '''New Post-Excavation layer successfully generated and ready for use''')

    def reapply_period_style(self):
        if len(QgsProject.instance().mapLayersByName('Features_for_PostEx')) == 0:
            return self.dontdonothing
        else: 
            restyle_layer = QgsProject.instance().mapLayersByName("Features_for_PostEx")[0]
            restyle_layer.loadNamedStyle(os.path.join(os.path.join(cmd_folder, 'qml/PCA_PostExcavation_Features_Style.qml')))    
            iface.mapCanvas().refresh()

    def update_DRS_table(self):

        if self.first_start == True:
            self.first_start = False
            
            
            
        # show the dialog
        self.dlgtool2.show()
        # Run the dialog event loop
        result = self.dlgtool2.exec_()
        # See if OK was pressed
        if result:
            
            
            #add the action here
            
            if len(QgsProject.instance().mapLayersByName('Interventions')) == 0:
                QMessageBox.about(
                None,
                'PCA PostExcavation Plugin',
                '''This is not a valid PCA QGIS Site Plan Project''')
                return self.dontdonothing()
                
            if len(QgsProject.instance().mapLayersByName('Interventions')) != 0:
            
            
                intervention_DRS_layer = QgsProject.instance().mapLayersByName("Interventions")[0]
            
                #Create progress bar
                progressMessageBar = iface.messageBar().createMessage("DRS is being updated...")
                progress = QProgressBar()
                progress.setMaximum(100)
                progress.setAlignment(Qt.AlignLeft|Qt.AlignVCenter)
                progressMessageBar.layout().addWidget(progress)
                iface.messageBar().pushWidget(progressMessageBar, Qgis.Info)
                
                
                
                progress.setValue(0)
                
                
                ################################
                ## Intervention layer update ###
                ################################
                
                #check if the group exists and, if not, create it
                caps = intervention_DRS_layer.dataProvider().capabilities()    
                resadd = intervention_DRS_layer.dataProvider()
                            
                group_field_name_list = ["Group","Entity", "Period", "Period Number", "Sub Period","Sub Period Number","Phase"]

                for group_name in group_field_name_list:
                    group_field_name = group_name
                    field_index = intervention_DRS_layer.fields().indexFromName(group_name)
                    if field_index == -1:
                        resadd.addAttributes([QgsField(group_name, QVariant.String, '', 254)])
                    

                intervention_DRS_layer.updateFields()  
                progress.setValue(15)

                #############################

                #add the attributes to Intervention from Features_for_PostEx
                
                
                intervention_DRS_layer.startEditing()

                for group_name in group_field_name_list:

                    if group_name == "Period Number":
                        group_name_contract = "Period_no"
                    elif group_name == 'Sub Period':
                        group_name_contract = 'SubPeriod'
                    elif group_name == 'Sub Period Number':
                        group_name_contract = 'SubPer_no'
                    else:
                        group_name_contract = group_name

                    e = QgsExpression( '''\
                    array_to_string(\
                    array_majority( \
                    aggregate(\
                    layer:='Features_for_PostEx',\
                    aggregate:='array_agg',\
                    expression:='''+group_name_contract+''',\
                    filter:=intersects($geometry,buffer(geometry(@parent),-0.01))\
                    )))\
                    ''' )

                    context = QgsExpressionContext()
                    context.appendScopes(QgsExpressionContextUtils.globalProjectLayerScopes(intervention_DRS_layer))

                    for f in intervention_DRS_layer.getFeatures():
                        context.setFeature(f)
                        f[group_name] = e.evaluate( context )
                        intervention_DRS_layer.updateFeature(f)


                intervention_DRS_layer.commitChanges()
                progress.setValue(25)
                #######################
                ## DRS Table update ###
                #######################
            
                intervention = QgsProject.instance().mapLayersByName('Interventions')[0]
                DRS_to_update = QgsProject.instance().mapLayersByName('DRS_Table')[0]


                caps = DRS_to_update.dataProvider().capabilities()    
                resadd = DRS_to_update.dataProvider()

                # group_field_name_list = ["Group","Entity", "Period", "Period Number", "Sub Period","Sub Period Number","Phase"]

                for group_name in group_field_name_list:
                    group_field_name = group_name
                    field_index = DRS_to_update.fields().indexFromName(group_name)
                    if field_index == -1:
                        resadd.addAttributes([QgsField(group_name, QVariant.String, '', 254)])

                DRS_to_update.updateFields()  
                
                progress.setValue(30)
                time_value = 30
                for group_name in group_field_name_list:
                    
                    for f in DRS_to_update.getFeatures():
                        cut = f["Cut"]
                        id = f.id()
                        
                        any_group_field_idx = DRS_to_update.fields().indexOf(group_name)
                        
                        exp = QgsExpression('context_no = '+cut)
                        request = QgsFeatureRequest(exp)
                        
                        for fea in intervention.getFeatures(request):
                            group = fea[group_name]

                        DRS_to_update.startEditing()
                        DRS_to_update.selectByExpression("$id ="+ str(id))
                        for feat_id in DRS_to_update.selectedFeatureIds():
                            DRS_to_update.changeAttributeValue(feat_id, any_group_field_idx, group)
                    DRS_to_update.commitChanges()
                    time_value += 10
                    
                    progress.setValue(time_value)
                
                progress.setValue(100)
                iface.messageBar().clearWidgets()
                QMessageBox.about(None,'PCA PostExcavation Plugin', 'The DRS has been successfully updated.')  
                
                
    def dontdonothing(self):
            pass
