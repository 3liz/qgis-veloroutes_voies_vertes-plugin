<!DOCTYPE qgis PUBLIC 'http://mrcc.com/qgis.dtd' 'SYSTEM'>
<qgis hasScaleBasedVisibilityFlag="0" readOnly="0" minScale="1e+08" styleCategories="AllStyleCategories" version="3.10.5-A Coruña" maxScale="0">
  <flags>
    <Identifiable>1</Identifiable>
    <Removable>1</Removable>
    <Searchable>1</Searchable>
  </flags>
  <customproperties>
    <property value="id_local" key="dualview/previewExpressions"/>
    <property value="0" key="embeddedWidgets/count"/>
    <property key="variableNames"/>
    <property key="variableValues"/>
  </customproperties>
  <geometryOptions removeDuplicateNodes="0" geometryPrecision="0">
    <activeChecks/>
    <checkConfiguration/>
  </geometryOptions>
  <fieldConfiguration>
    <field name="id_local">
      <editWidget type="TextEdit">
        <config>
          <Option type="Map">
            <Option name="IsMultiline" value="false" type="bool"/>
            <Option name="UseHtml" value="false" type="bool"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="nom">
      <editWidget type="TextEdit">
        <config>
          <Option type="Map">
            <Option name="IsMultiline" value="false" type="bool"/>
            <Option name="UseHtml" value="false" type="bool"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="description">
      <editWidget type="TextEdit">
        <config>
          <Option type="Map">
            <Option name="IsMultiline" value="false" type="bool"/>
            <Option name="UseHtml" value="false" type="bool"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="type_portion">
      <editWidget type="ValueMap">
        <config>
          <Option type="Map">
            <Option name="map" type="List">
              <Option type="Map">
                <Option name="Etpae" value="ETP" type="QString"/>
              </Option>
              <Option type="Map">
                <Option name="Variante" value="VAR" type="QString"/>
              </Option>
              <Option type="Map">
                <Option name="Portion provisoire" value="PRV" type="QString"/>
              </Option>
              <Option type="Map">
                <Option name="Portion obeservée" value="OBS" type="QString"/>
              </Option>
            </Option>
          </Option>
        </config>
      </editWidget>
    </field>
  </fieldConfiguration>
  <aliases>
    <alias field="id_local" name="" index="0"/>
    <alias field="nom" name="" index="1"/>
    <alias field="description" name="" index="2"/>
    <alias field="type_portion" name="" index="3"/>
  </aliases>
  <excludeAttributesWMS/>
  <excludeAttributesWFS/>
  <defaults>
    <default field="id_local" applyOnUpdate="0" expression=""/>
    <default field="nom" applyOnUpdate="0" expression=""/>
    <default field="description" applyOnUpdate="0" expression=""/>
    <default field="type_portion" applyOnUpdate="0" expression=""/>
  </defaults>
  <constraints>
    <constraint field="id_local" constraints="3" unique_strength="1" exp_strength="0" notnull_strength="1"/>
    <constraint field="nom" constraints="0" unique_strength="0" exp_strength="0" notnull_strength="0"/>
    <constraint field="description" constraints="0" unique_strength="0" exp_strength="0" notnull_strength="0"/>
    <constraint field="type_portion" constraints="1" unique_strength="0" exp_strength="0" notnull_strength="1"/>
  </constraints>
  <constraintExpressions>
    <constraint field="id_local" exp="" desc=""/>
    <constraint field="nom" exp="" desc=""/>
    <constraint field="description" exp="" desc=""/>
    <constraint field="type_portion" exp="" desc=""/>
  </constraintExpressions>
  <expressionfields/>
  <attributeactions>
    <defaultAction value="{00000000-0000-0000-0000-000000000000}" key="Canvas"/>
  </attributeactions>
  <attributetableconfig sortExpression="" sortOrder="0" actionWidgetStyle="dropDown">
    <columns>
      <column width="95" name="id_local" hidden="0" type="field"/>
      <column width="224" name="nom" hidden="0" type="field"/>
      <column width="301" name="description" hidden="0" type="field"/>
      <column width="-1" name="type_portion" hidden="0" type="field"/>
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
    <field editable="1" name="description"/>
    <field editable="1" name="id_local"/>
    <field editable="1" name="nom"/>
    <field editable="1" name="type_portion"/>
  </editable>
  <labelOnTop>
    <field name="description" labelOnTop="0"/>
    <field name="id_local" labelOnTop="0"/>
    <field name="nom" labelOnTop="0"/>
    <field name="type_portion" labelOnTop="0"/>
  </labelOnTop>
  <widgets>
    <widget name="element_87795107_6a41_4d89_b7a9_27020145c4c2_id_portion_portion_43c846b8_2e8c_4dbc_a286_7779b2dc6274_id_local">
      <config type="Map">
        <Option name="nm-rel" value="" type="QString"/>
      </config>
    </widget>
    <widget name="etape_7d2fa857_5f19_42b8_ae43_c514540041db_id_portion_portion_43c846b8_2e8c_4dbc_a286_7779b2dc6274_id_local">
      <config type="Map">
        <Option name="nm-rel" value="" type="QString"/>
      </config>
    </widget>
  </widgets>
  <previewExpression>id_local</previewExpression>
  <mapTip></mapTip>
  <layerGeometryType>4</layerGeometryType>
</qgis>
