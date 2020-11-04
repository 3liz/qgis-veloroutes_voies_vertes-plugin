<!DOCTYPE qgis PUBLIC 'http://mrcc.com/qgis.dtd' 'SYSTEM'>
<qgis readOnly="0" version="3.10.10-A Coruña" styleCategories="AllStyleCategories" maxScale="0" hasScaleBasedVisibilityFlag="0" minScale="1e+8">
  <flags>
    <Identifiable>1</Identifiable>
    <Removable>1</Removable>
    <Searchable>1</Searchable>
  </flags>
  <customproperties>
    <property key="dualview/previewExpressions" value="&quot;id&quot;"/>
    <property key="embeddedWidgets/count" value="0"/>
    <property key="variableNames"/>
    <property key="variableValues"/>
  </customproperties>
  <geometryOptions geometryPrecision="0" removeDuplicateNodes="0">
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
            <Option type="bool" name="AllowAddFeatures" value="false"/>
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
    <alias name="Identifiant" field="id" index="0"/>
    <alias name="Portion" field="id_portion" index="1"/>
    <alias name="Segment" field="id_segment" index="2"/>
  </aliases>
  <excludeAttributesWMS/>
  <excludeAttributesWFS/>
  <defaults>
    <default applyOnUpdate="0" field="id" expression=""/>
    <default applyOnUpdate="0" field="id_portion" expression="NULL"/>
    <default applyOnUpdate="0" field="id_segment" expression="NULL"/>
  </defaults>
  <constraints>
    <constraint constraints="3" unique_strength="2" field="id" exp_strength="0" notnull_strength="2"/>
    <constraint constraints="1" unique_strength="0" field="id_portion" exp_strength="0" notnull_strength="2"/>
    <constraint constraints="1" unique_strength="0" field="id_segment" exp_strength="0" notnull_strength="2"/>
  </constraints>
  <constraintExpressions>
    <constraint exp="" field="id" desc=""/>
    <constraint exp="" field="id_portion" desc=""/>
    <constraint exp="" field="id_segment" desc=""/>
  </constraintExpressions>
  <expressionfields/>
  <attributeactions>
    <defaultAction key="Canvas" value="{00000000-0000-0000-0000-000000000000}"/>
  </attributeactions>
  <attributetableconfig sortOrder="0" sortExpression="&quot;id&quot;" actionWidgetStyle="dropDown">
    <columns>
      <column hidden="0" type="field" name="id" width="-1"/>
      <column hidden="0" type="field" name="id_portion" width="-1"/>
      <column hidden="0" type="field" name="id_segment" width="409"/>
      <column hidden="1" type="actions" width="-1"/>
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
    <field name="id" labelOnTop="0"/>
    <field name="id_portion" labelOnTop="0"/>
    <field name="id_segment" labelOnTop="0"/>
    <field name="portion_description" labelOnTop="0"/>
    <field name="portion_nom" labelOnTop="0"/>
    <field name="portion_type_portion" labelOnTop="0"/>
    <field name="portion_v_portion_description" labelOnTop="0"/>
    <field name="portion_v_portion_nom" labelOnTop="0"/>
    <field name="portion_v_portion_type_portion" labelOnTop="0"/>
    <field name="segment_annee_ouverture" labelOnTop="0"/>
    <field name="segment_avancement" labelOnTop="0"/>
    <field name="segment_date_saisie" labelOnTop="0"/>
    <field name="segment_geometrie_fictive" labelOnTop="0"/>
    <field name="segment_gestionnaire" labelOnTop="0"/>
    <field name="segment_precision" labelOnTop="0"/>
    <field name="segment_proprietaire" labelOnTop="0"/>
    <field name="segment_revetement" labelOnTop="0"/>
    <field name="segment_sens_unique" labelOnTop="0"/>
    <field name="segment_src_annee" labelOnTop="0"/>
    <field name="segment_src_geom" labelOnTop="0"/>
    <field name="segment_statut" labelOnTop="0"/>
  </labelOnTop>
  <widgets>
    <widget name="v_portion__id_portion_element_87_id_portion">
      <config type="Map">
        <Option type="QString" name="nm-rel" value=""/>
      </config>
    </widget>
  </widgets>
  <previewExpression>"id"</previewExpression>
  <mapTip></mapTip>
  <layerGeometryType>4</layerGeometryType>
</qgis>
