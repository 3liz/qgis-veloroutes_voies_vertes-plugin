<!DOCTYPE qgis PUBLIC 'http://mrcc.com/qgis.dtd' 'SYSTEM'>
<qgis styleCategories="AllStyleCategories" maxScale="0" readOnly="0" version="3.10.10-A Coruña" minScale="1e+8" hasScaleBasedVisibilityFlag="0">
  <flags>
    <Identifiable>1</Identifiable>
    <Removable>1</Removable>
    <Searchable>1</Searchable>
  </flags>
  <customproperties>
    <property key="dualview/previewExpressions">
      <value>"id"</value>
    </property>
    <property key="embeddedWidgets/count" value="0"/>
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
            <Option name="IsMultiline" value="false" type="bool"/>
            <Option name="UseHtml" value="false" type="bool"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="id_portion">
      <editWidget type="RelationReference">
        <config>
          <Option type="Map">
            <Option name="AllowAddFeatures" value="true" type="bool"/>
            <Option name="AllowNULL" value="true" type="bool"/>
            <Option name="MapIdentification" value="true" type="bool"/>
            <Option name="OrderByValue" value="false" type="bool"/>
            <Option name="ReadOnly" value="false" type="bool"/>
            <Option name="Relation" value="element_87_id_portion_v_portion__id_portion" type="QString"/>
            <Option name="ShowForm" value="false" type="bool"/>
            <Option name="ShowOpenFormButton" value="true" type="bool"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="id_segment">
      <editWidget type="RelationReference">
        <config>
          <Option type="Map">
            <Option name="AllowAddFeatures" value="false" type="bool"/>
            <Option name="AllowNULL" value="true" type="bool"/>
            <Option name="MapIdentification" value="true" type="bool"/>
            <Option name="OrderByValue" value="false" type="bool"/>
            <Option name="ReadOnly" value="false" type="bool"/>
            <Option name="Relation" value="element_34_id_segment_segment__id_segment" type="QString"/>
            <Option name="ShowForm" value="false" type="bool"/>
            <Option name="ShowOpenFormButton" value="true" type="bool"/>
          </Option>
        </config>
      </editWidget>
    </field>
  </fieldConfiguration>
  <aliases>
    <alias name="Identifiant" index="0" field="id"/>
    <alias name="Portion" index="1" field="id_portion"/>
    <alias name="Segment" index="2" field="id_segment"/>
  </aliases>
  <excludeAttributesWMS/>
  <excludeAttributesWFS/>
  <defaults>
    <default expression="" field="id" applyOnUpdate="0"/>
    <default expression="NULL" field="id_portion" applyOnUpdate="0"/>
    <default expression="NULL" field="id_segment" applyOnUpdate="0"/>
  </defaults>
  <constraints>
    <constraint notnull_strength="2" exp_strength="0" constraints="3" unique_strength="2" field="id"/>
    <constraint notnull_strength="2" exp_strength="0" constraints="1" unique_strength="0" field="id_portion"/>
    <constraint notnull_strength="2" exp_strength="0" constraints="1" unique_strength="0" field="id_segment"/>
  </constraints>
  <constraintExpressions>
    <constraint desc="" exp="" field="id"/>
    <constraint desc="" exp="" field="id_portion"/>
    <constraint desc="" exp="" field="id_segment"/>
  </constraintExpressions>
  <expressionfields/>
  <attributeactions>
    <defaultAction key="Canvas" value="{00000000-0000-0000-0000-000000000000}"/>
  </attributeactions>
  <attributetableconfig sortOrder="0" actionWidgetStyle="dropDown" sortExpression="&quot;id&quot;">
    <columns>
      <column width="-1" name="id" hidden="0" type="field"/>
      <column width="-1" name="id_portion" hidden="0" type="field"/>
      <column width="409" name="id_segment" hidden="0" type="field"/>
      <column width="-1" hidden="1" type="actions"/>
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
        <Option name="nm-rel" value="" type="QString"/>
      </config>
    </widget>
  </widgets>
  <previewExpression>"id"</previewExpression>
  <mapTip></mapTip>
  <layerGeometryType>4</layerGeometryType>
</qgis>
