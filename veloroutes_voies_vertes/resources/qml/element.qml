<!DOCTYPE qgis PUBLIC 'http://mrcc.com/qgis.dtd' 'SYSTEM'>
<qgis hasScaleBasedVisibilityFlag="0" readOnly="0" minScale="1e+08" styleCategories="AllStyleCategories" version="3.10.5-A Coruña" maxScale="0">
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
            <Option name="AllowAddFeatures" value="false" type="bool"/>
            <Option name="AllowNULL" value="false" type="bool"/>
            <Option name="MapIdentification" value="false" type="bool"/>
            <Option name="OrderByValue" value="false" type="bool"/>
            <Option name="ReadOnly" value="false" type="bool"/>
            <Option name="Relation" value="element_87795107_6a41_4d89_b7a9_27020145c4c2_id_portion_portion_43c846b8_2e8c_4dbc_a286_7779b2dc6274_id_local" type="QString"/>
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
            <Option name="AllowNULL" value="false" type="bool"/>
            <Option name="MapIdentification" value="true" type="bool"/>
            <Option name="OrderByValue" value="false" type="bool"/>
            <Option name="ReadOnly" value="false" type="bool"/>
            <Option name="Relation" value="element_87795107_6a41_4d89_b7a9_27020145c4c2_id_segment_segment_7bda5417_48a9_4c43_b874_6c6b490dfa9e_id_local" type="QString"/>
            <Option name="ShowForm" value="false" type="bool"/>
            <Option name="ShowOpenFormButton" value="true" type="bool"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="portion_nom">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="portion_description">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="portion_type_portion">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
  </fieldConfiguration>
  <aliases>
    <alias field="id" name="" index="0"/>
    <alias field="id_portion" name="" index="1"/>
    <alias field="id_segment" name="" index="2"/>
    <alias field="portion_nom" name="" index="3"/>
    <alias field="portion_description" name="" index="4"/>
    <alias field="portion_type_portion" name="" index="5"/>
  </aliases>
  <excludeAttributesWMS/>
  <excludeAttributesWFS/>
  <defaults>
    <default field="id" applyOnUpdate="0" expression=""/>
    <default field="id_portion" applyOnUpdate="0" expression=""/>
    <default field="id_segment" applyOnUpdate="0" expression=""/>
    <default field="portion_nom" applyOnUpdate="0" expression=""/>
    <default field="portion_description" applyOnUpdate="0" expression=""/>
    <default field="portion_type_portion" applyOnUpdate="0" expression=""/>
  </defaults>
  <constraints>
    <constraint field="id" constraints="3" unique_strength="1" exp_strength="0" notnull_strength="1"/>
    <constraint field="id_portion" constraints="0" unique_strength="0" exp_strength="0" notnull_strength="0"/>
    <constraint field="id_segment" constraints="0" unique_strength="0" exp_strength="0" notnull_strength="0"/>
    <constraint field="portion_nom" constraints="0" unique_strength="0" exp_strength="0" notnull_strength="0"/>
    <constraint field="portion_description" constraints="0" unique_strength="0" exp_strength="0" notnull_strength="0"/>
    <constraint field="portion_type_portion" constraints="1" unique_strength="0" exp_strength="0" notnull_strength="1"/>
  </constraints>
  <constraintExpressions>
    <constraint field="id" exp="" desc=""/>
    <constraint field="id_portion" exp="" desc=""/>
    <constraint field="id_segment" exp="" desc=""/>
    <constraint field="portion_nom" exp="" desc=""/>
    <constraint field="portion_description" exp="" desc=""/>
    <constraint field="portion_type_portion" exp="" desc=""/>
  </constraintExpressions>
  <expressionfields/>
  <attributeactions>
    <defaultAction value="{00000000-0000-0000-0000-000000000000}" key="Canvas"/>
  </attributeactions>
  <attributetableconfig sortExpression="&quot;id&quot;" sortOrder="0" actionWidgetStyle="dropDown">
    <columns>
      <column width="-1" name="id" hidden="0" type="field"/>
      <column width="-1" name="id_portion" hidden="0" type="field"/>
      <column width="409" name="id_segment" hidden="0" type="field"/>
      <column width="-1" hidden="1" type="actions"/>
      <column width="-1" name="portion_nom" hidden="0" type="field"/>
      <column width="-1" name="portion_description" hidden="0" type="field"/>
      <column width="-1" name="portion_type_portion" hidden="0" type="field"/>
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
    <field editable="1" name="id"/>
    <field editable="1" name="id_portion"/>
    <field editable="1" name="id_segment"/>
    <field editable="0" name="portion_description"/>
    <field editable="0" name="portion_nom"/>
    <field editable="0" name="portion_type_portion"/>
    <field editable="0" name="segment_annee_ouverture"/>
    <field editable="0" name="segment_avancement"/>
    <field editable="0" name="segment_date_saisie"/>
    <field editable="0" name="segment_geometrie_fictive"/>
    <field editable="0" name="segment_gestionnaire"/>
    <field editable="0" name="segment_precision"/>
    <field editable="0" name="segment_proprietaire"/>
    <field editable="0" name="segment_revetement"/>
    <field editable="0" name="segment_sens_unique"/>
    <field editable="0" name="segment_src_annee"/>
    <field editable="0" name="segment_src_geom"/>
    <field editable="0" name="segment_statut"/>
  </editable>
  <labelOnTop>
    <field name="id" labelOnTop="0"/>
    <field name="id_portion" labelOnTop="0"/>
    <field name="id_segment" labelOnTop="0"/>
    <field name="portion_description" labelOnTop="0"/>
    <field name="portion_nom" labelOnTop="0"/>
    <field name="portion_type_portion" labelOnTop="0"/>
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
  <widgets/>
  <previewExpression>id</previewExpression>
  <mapTip></mapTip>
  <layerGeometryType>4</layerGeometryType>
</qgis>
