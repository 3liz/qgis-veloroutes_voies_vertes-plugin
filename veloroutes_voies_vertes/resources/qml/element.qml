<!DOCTYPE qgis PUBLIC 'http://mrcc.com/qgis.dtd' 'SYSTEM'>
<qgis maxScale="0" minScale="1e+08" readOnly="0" hasScaleBasedVisibilityFlag="0" version="3.10.5-A Coruña" styleCategories="AllStyleCategories">
  <flags>
    <Identifiable>1</Identifiable>
    <Removable>1</Removable>
    <Searchable>1</Searchable>
  </flags>
  <customproperties>
    <property value="id" key="dualview/previewExpressions"/>
    <property value="0" key="embeddedWidgets/count"/>
    <property key="variableNames"/>
    <property key="variableValues"/>
  </customproperties>
  <geometryOptions removeDuplicateNodes="0" geometryPrecision="0">
    <activeChecks/>
    <checkConfiguration/>
  </geometryOptions>
  <fieldConfiguration>
    <field name="id">
      <editWidget type="TextEdit">
        <config>
          <Option type="Map">
            <Option type="bool" name="IsMultiline" value="false"/>
            <Option type="bool" name="UseHtml" value="false"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="id_portion">
      <editWidget type="RelationReference">
        <config>
          <Option type="Map">
            <Option type="bool" name="AllowAddFeatures" value="true"/>
            <Option type="bool" name="AllowNULL" value="true"/>
            <Option type="bool" name="MapIdentification" value="true"/>
            <Option type="bool" name="OrderByValue" value="false"/>
            <Option type="bool" name="ReadOnly" value="false"/>
            <Option type="QString" name="Relation" value="element_87_id_portion_v_portion__id_portion"/>
            <Option type="bool" name="ShowForm" value="false"/>
            <Option type="bool" name="ShowOpenFormButton" value="true"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="id_segment">
      <editWidget type="RelationReference">
        <config>
          <Option type="Map">
            <Option type="bool" name="AllowAddFeatures" value="true"/>
            <Option type="bool" name="AllowNULL" value="true"/>
            <Option type="bool" name="MapIdentification" value="true"/>
            <Option type="bool" name="OrderByValue" value="false"/>
            <Option type="bool" name="ReadOnly" value="false"/>
            <Option type="QString" name="Relation" value="element_34_id_segment_segment__id_segment"/>
            <Option type="bool" name="ShowForm" value="false"/>
            <Option type="bool" name="ShowOpenFormButton" value="true"/>
          </Option>
        </config>
      </editWidget>
    </field>
  </fieldConfiguration>
  <aliases>
    <alias name="" field="id" index="0"/>
    <alias name="" field="id_portion" index="1"/>
    <alias name="" field="id_segment" index="2"/>
  </aliases>
  <excludeAttributesWMS/>
  <excludeAttributesWFS/>
  <defaults>
    <default field="id" applyOnUpdate="0" expression=""/>
    <default field="id_portion" applyOnUpdate="0" expression="NULL"/>
    <default field="id_segment" applyOnUpdate="0" expression="NULL"/>
  </defaults>
  <constraints>
    <constraint unique_strength="1" notnull_strength="1" field="id" constraints="3" exp_strength="0"/>
    <constraint unique_strength="0" notnull_strength="2" field="id_portion" constraints="1" exp_strength="0"/>
    <constraint unique_strength="0" notnull_strength="2" field="id_segment" constraints="1" exp_strength="0"/>
  </constraints>
  <constraintExpressions>
    <constraint exp="" field="id" desc=""/>
    <constraint exp="" field="id_portion" desc=""/>
    <constraint exp="" field="id_segment" desc=""/>
  </constraintExpressions>
  <expressionfields/>
  <attributeactions>
    <defaultAction value="{00000000-0000-0000-0000-000000000000}" key="Canvas"/>
  </attributeactions>
  <attributetableconfig sortExpression="&quot;id&quot;" actionWidgetStyle="dropDown" sortOrder="0">
    <columns>
      <column type="field" name="id" width="-1" hidden="0"/>
      <column type="field" name="id_portion" width="-1" hidden="0"/>
      <column type="field" name="id_segment" width="409" hidden="0"/>
      <column type="actions" width="-1" hidden="1"/>
    </columns>
  </attributetableconfig>
  <conditionalstyles>
    <rowstyles/>
    <fieldstyles/>
  </conditionalstyles>
  <storedexpressions/>
  <editform tolerant="1"></editform>
  <editforminit/>
  <editforminitcodesource>0</editforminitcodesource>
  <editforminitfilepath></editforminitfilepath>
  <editforminitcode><![CDATA[# -*- coding: utf-8 -*-
"""
Les formulaires QGIS peuvent avoir une fonction Python qui sera appelée à l'ouverture du formulaire.

Utilisez cette fonction pour ajouter plus de fonctionnalités à vos formulaires.

Entrez le nom de la fonction dans le champ "Fonction d'initialisation Python".
Voici un exemple à suivre:
"""
from qgis.PyQt.QtWidgets import QWidget

def my_form_open(dialog, layer, feature):
    geom = feature.geometry()
    control = dialog.findChild(QWidget, "MyLineEdit")

]]></editforminitcode>
  <featformsuppress>0</featformsuppress>
  <editorlayout>generatedlayout</editorlayout>
  <editable>
    <field name="id" editable="0"/>
    <field name="id_portion" editable="1"/>
    <field name="id_segment" editable="1"/>
    <field name="portion_description" editable="0"/>
    <field name="portion_nom" editable="0"/>
    <field name="portion_type_portion" editable="0"/>
    <field name="portion_v_portion_description" editable="0"/>
    <field name="portion_v_portion_nom" editable="0"/>
    <field name="portion_v_portion_type_portion" editable="0"/>
    <field name="segment_annee_ouverture" editable="0"/>
    <field name="segment_avancement" editable="0"/>
    <field name="segment_date_saisie" editable="0"/>
    <field name="segment_geometrie_fictive" editable="0"/>
    <field name="segment_gestionnaire" editable="0"/>
    <field name="segment_precision" editable="0"/>
    <field name="segment_proprietaire" editable="0"/>
    <field name="segment_revetement" editable="0"/>
    <field name="segment_sens_unique" editable="0"/>
    <field name="segment_src_annee" editable="0"/>
    <field name="segment_src_geom" editable="0"/>
    <field name="segment_statut" editable="0"/>
  </editable>
  <labelOnTop>
    <field labelOnTop="0" name="id"/>
    <field labelOnTop="0" name="id_portion"/>
    <field labelOnTop="0" name="id_segment"/>
    <field labelOnTop="0" name="portion_description"/>
    <field labelOnTop="0" name="portion_nom"/>
    <field labelOnTop="0" name="portion_type_portion"/>
    <field labelOnTop="0" name="portion_v_portion_description"/>
    <field labelOnTop="0" name="portion_v_portion_nom"/>
    <field labelOnTop="0" name="portion_v_portion_type_portion"/>
    <field labelOnTop="0" name="segment_annee_ouverture"/>
    <field labelOnTop="0" name="segment_avancement"/>
    <field labelOnTop="0" name="segment_date_saisie"/>
    <field labelOnTop="0" name="segment_geometrie_fictive"/>
    <field labelOnTop="0" name="segment_gestionnaire"/>
    <field labelOnTop="0" name="segment_precision"/>
    <field labelOnTop="0" name="segment_proprietaire"/>
    <field labelOnTop="0" name="segment_revetement"/>
    <field labelOnTop="0" name="segment_sens_unique"/>
    <field labelOnTop="0" name="segment_src_annee"/>
    <field labelOnTop="0" name="segment_src_geom"/>
    <field labelOnTop="0" name="segment_statut"/>
  </labelOnTop>
  <widgets>
    <widget name="v_portion__id_portion_element_87_id_portion">
      <config type="Map">
        <Option type="QString" name="nm-rel" value=""/>
      </config>
    </widget>
  </widgets>
  <previewExpression>id</previewExpression>
  <mapTip></mapTip>
  <layerGeometryType>4</layerGeometryType>
</qgis>
