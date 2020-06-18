<!DOCTYPE qgis PUBLIC 'http://mrcc.com/qgis.dtd' 'SYSTEM'>
<qgis hasScaleBasedVisibilityFlag="0" readOnly="0" minScale="1e+08" styleCategories="AllStyleCategories" version="3.10.5-A Coruña" maxScale="0">
  <flags>
    <Identifiable>1</Identifiable>
    <Removable>1</Removable>
    <Searchable>1</Searchable>
  </flags>
  <customproperties>
    <property value="id_portion" key="dualview/previewExpressions"/>
    <property value="0" key="embeddedWidgets/count"/>
    <property key="variableNames"/>
    <property key="variableValues"/>
  </customproperties>
  <geometryOptions removeDuplicateNodes="0" geometryPrecision="0">
    <activeChecks/>
    <checkConfiguration/>
  </geometryOptions>
  <fieldConfiguration>
    <field name="id_portion">
      <editWidget type="RelationReference">
        <config>
          <Option type="Map">
            <Option name="AllowAddFeatures" value="true" type="bool"/>
            <Option name="AllowNULL" value="false" type="bool"/>
            <Option name="MapIdentification" value="false" type="bool"/>
            <Option name="OrderByValue" value="false" type="bool"/>
            <Option name="ReadOnly" value="false" type="bool"/>
            <Option name="Relation" value="etape_7d2fa857_5f19_42b8_ae43_c514540041db_id_portion_portion_43c846b8_2e8c_4dbc_a286_7779b2dc6274_id_local" type="QString"/>
            <Option name="ShowForm" value="false" type="bool"/>
            <Option name="ShowOpenFormButton" value="true" type="bool"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="id_itineraire">
      <editWidget type="RelationReference">
        <config>
          <Option type="Map">
            <Option name="AllowAddFeatures" value="true" type="bool"/>
            <Option name="AllowNULL" value="false" type="bool"/>
            <Option name="MapIdentification" value="false" type="bool"/>
            <Option name="OrderByValue" value="false" type="bool"/>
            <Option name="ReadOnly" value="false" type="bool"/>
            <Option name="Relation" value="etape_7d2fa857_5f19_42b8_ae43_c514540041db_id_itineraire_itineraire_c47affa8_3ced_43b5_b85b_cb009c7b432a_id_local" type="QString"/>
            <Option name="ShowForm" value="false" type="bool"/>
            <Option name="ShowOpenFormButton" value="true" type="bool"/>
          </Option>
        </config>
      </editWidget>
    </field>
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
    <field name="etape">
      <editWidget type="TextEdit">
        <config>
          <Option type="Map">
            <Option name="IsMultiline" value="false" type="bool"/>
            <Option name="UseHtml" value="false" type="bool"/>
          </Option>
        </config>
      </editWidget>
    </field>
  </fieldConfiguration>
  <aliases>
    <alias field="id_portion" name="" index="0"/>
    <alias field="id_itineraire" name="" index="1"/>
    <alias field="id" name="" index="2"/>
    <alias field="etape" name="" index="3"/>
  </aliases>
  <excludeAttributesWMS/>
  <excludeAttributesWFS/>
  <defaults>
    <default field="id_portion" applyOnUpdate="0" expression=""/>
    <default field="id_itineraire" applyOnUpdate="0" expression=""/>
    <default field="id" applyOnUpdate="0" expression=""/>
    <default field="etape" applyOnUpdate="0" expression=""/>
  </defaults>
  <constraints>
    <constraint field="id_portion" constraints="0" unique_strength="0" exp_strength="0" notnull_strength="0"/>
    <constraint field="id_itineraire" constraints="0" unique_strength="0" exp_strength="0" notnull_strength="0"/>
    <constraint field="id" constraints="3" unique_strength="1" exp_strength="0" notnull_strength="1"/>
    <constraint field="etape" constraints="2" unique_strength="1" exp_strength="0" notnull_strength="0"/>
  </constraints>
  <constraintExpressions>
    <constraint field="id_portion" exp="" desc=""/>
    <constraint field="id_itineraire" exp="" desc=""/>
    <constraint field="id" exp="" desc=""/>
    <constraint field="etape" exp="" desc=""/>
  </constraintExpressions>
  <expressionfields/>
  <attributeactions>
    <defaultAction value="{00000000-0000-0000-0000-000000000000}" key="Canvas"/>
  </attributeactions>
  <attributetableconfig sortExpression="" sortOrder="0" actionWidgetStyle="dropDown">
    <columns>
      <column width="-1" name="id_portion" hidden="0" type="field"/>
      <column width="261" name="id_itineraire" hidden="0" type="field"/>
      <column width="200" name="id" hidden="0" type="field"/>
      <column width="-1" name="etape" hidden="0" type="field"/>
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
    <field editable="1" name="etape"/>
    <field editable="1" name="id"/>
    <field editable="1" name="id_itineraire"/>
    <field editable="1" name="id_portion"/>
  </editable>
  <labelOnTop>
    <field name="etape" labelOnTop="0"/>
    <field name="id" labelOnTop="0"/>
    <field name="id_itineraire" labelOnTop="0"/>
    <field name="id_portion" labelOnTop="0"/>
  </labelOnTop>
  <widgets/>
  <previewExpression>id_portion</previewExpression>
  <mapTip></mapTip>
  <layerGeometryType>4</layerGeometryType>
</qgis>
