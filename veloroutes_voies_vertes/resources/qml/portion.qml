<!DOCTYPE qgis PUBLIC 'http://mrcc.com/qgis.dtd' 'SYSTEM'>
<qgis hasScaleBasedVisibilityFlag="0" styleCategories="AllStyleCategories" readOnly="0" version="3.10.5-A Coruña" maxScale="0" minScale="1e+08">
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
  <geometryOptions geometryPrecision="0" removeDuplicateNodes="0">
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
    <alias name="" field="id_local" index="0"/>
    <alias name="" field="nom" index="1"/>
    <alias name="" field="description" index="2"/>
    <alias name="" field="type_portion" index="3"/>
  </aliases>
  <excludeAttributesWMS/>
  <excludeAttributesWFS/>
  <defaults>
    <default applyOnUpdate="0" field="id_local" expression=""/>
    <default applyOnUpdate="0" field="nom" expression=""/>
    <default applyOnUpdate="0" field="description" expression=""/>
    <default applyOnUpdate="0" field="type_portion" expression=""/>
  </defaults>
  <constraints>
    <constraint notnull_strength="1" constraints="3" unique_strength="1" field="id_local" exp_strength="0"/>
    <constraint notnull_strength="0" constraints="0" unique_strength="0" field="nom" exp_strength="0"/>
    <constraint notnull_strength="0" constraints="0" unique_strength="0" field="description" exp_strength="0"/>
    <constraint notnull_strength="1" constraints="1" unique_strength="0" field="type_portion" exp_strength="0"/>
  </constraints>
  <constraintExpressions>
    <constraint desc="" exp="" field="id_local"/>
    <constraint desc="" exp="" field="nom"/>
    <constraint desc="" exp="" field="description"/>
    <constraint desc="" exp="" field="type_portion"/>
  </constraintExpressions>
  <expressionfields/>
  <attributeactions>
    <defaultAction value="{00000000-0000-0000-0000-000000000000}" key="Canvas"/>
  </attributeactions>
  <attributetableconfig sortOrder="0" actionWidgetStyle="dropDown" sortExpression="">
    <columns>
      <column name="id_local" hidden="0" width="95" type="field"/>
      <column name="nom" hidden="0" width="224" type="field"/>
      <column name="description" hidden="0" width="301" type="field"/>
      <column name="type_portion" hidden="0" width="-1" type="field"/>
      <column hidden="1" width="-1" type="actions"/>
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
    <field name="description" editable="1"/>
    <field name="id_local" editable="1"/>
    <field name="nom" editable="1"/>
    <field name="type_portion" editable="1"/>
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
        <Option name="nm-rel" value="element_87795107_6a41_4d89_b7a9_27020145c4c2_id_segment_segment_4214b7a3_a1ee_4111_87bb_31270944a154_id_local" type="QString"/>
      </config>
    </widget>
    <widget name="etape_7d2fa857_5f19_42b8_ae43_c514540041db_id_portion_portion_43c846b8_2e8c_4dbc_a286_7779b2dc6274_id_local">
      <config type="Map">
        <Option name="nm-rel" value="etape_7d2fa857_5f19_42b8_ae43_c514540041db_id_itineraire_itineraire_c47affa8_3ced_43b5_b85b_cb009c7b432a_id_local" type="QString"/>
      </config>
    </widget>
  </widgets>
  <previewExpression>id_local</previewExpression>
  <mapTip></mapTip>
  <layerGeometryType>4</layerGeometryType>
</qgis>
