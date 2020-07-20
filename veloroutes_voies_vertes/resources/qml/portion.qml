<!DOCTYPE qgis PUBLIC 'http://mrcc.com/qgis.dtd' 'SYSTEM'>
<qgis maxScale="0" minScale="1e+08" readOnly="0" hasScaleBasedVisibilityFlag="0" version="3.10.5-A Coruña" styleCategories="AllStyleCategories">
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
      <editWidget type="TextEdit">
        <config>
          <Option type="Map">
            <Option type="bool" name="IsMultiline" value="false"/>
            <Option type="bool" name="UseHtml" value="false"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="nom">
      <editWidget type="TextEdit">
        <config>
          <Option type="Map">
            <Option type="bool" name="IsMultiline" value="false"/>
            <Option type="bool" name="UseHtml" value="false"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="description">
      <editWidget type="TextEdit">
        <config>
          <Option type="Map">
            <Option type="bool" name="IsMultiline" value="false"/>
            <Option type="bool" name="UseHtml" value="false"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="type_portion">
      <editWidget type="ValueMap">
        <config>
          <Option type="Map">
            <Option type="List" name="map">
              <Option type="Map">
                <Option type="QString" name="Etape" value="ETP"/>
              </Option>
              <Option type="Map">
                <Option type="QString" name="Variante" value="VAR"/>
              </Option>
              <Option type="Map">
                <Option type="QString" name="Portion provisoire" value="PRV"/>
              </Option>
              <Option type="Map">
                <Option type="QString" name="Portion obeservée" value="OBS"/>
              </Option>
            </Option>
          </Option>
        </config>
      </editWidget>
    </field>
  </fieldConfiguration>
  <aliases>
    <alias name="" field="id_portion" index="0"/>
    <alias name="" field="nom" index="1"/>
    <alias name="" field="description" index="2"/>
    <alias name="" field="type_portion" index="3"/>
  </aliases>
  <excludeAttributesWMS/>
  <excludeAttributesWFS/>
  <defaults>
    <default field="id_portion" applyOnUpdate="0" expression=""/>
    <default field="nom" applyOnUpdate="0" expression=""/>
    <default field="description" applyOnUpdate="0" expression=""/>
    <default field="type_portion" applyOnUpdate="0" expression=""/>
  </defaults>
  <constraints>
    <constraint unique_strength="1" notnull_strength="1" field="id_portion" constraints="3" exp_strength="0"/>
    <constraint unique_strength="0" notnull_strength="0" field="nom" constraints="0" exp_strength="0"/>
    <constraint unique_strength="0" notnull_strength="0" field="description" constraints="0" exp_strength="0"/>
    <constraint unique_strength="0" notnull_strength="1" field="type_portion" constraints="1" exp_strength="0"/>
  </constraints>
  <constraintExpressions>
    <constraint exp="" field="id_portion" desc=""/>
    <constraint exp="" field="nom" desc=""/>
    <constraint exp="" field="description" desc=""/>
    <constraint exp="" field="type_portion" desc=""/>
  </constraintExpressions>
  <expressionfields/>
  <attributeactions>
    <defaultAction value="{00000000-0000-0000-0000-000000000000}" key="Canvas"/>
  </attributeactions>
  <attributetableconfig sortExpression="" actionWidgetStyle="dropDown" sortOrder="0">
    <columns>
      <column type="field" name="id_portion" width="95" hidden="0"/>
      <column type="field" name="nom" width="224" hidden="0"/>
      <column type="field" name="description" width="301" hidden="0"/>
      <column type="field" name="type_portion" width="-1" hidden="0"/>
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
    <field name="description" editable="1"/>
    <field name="id_portion" editable="0"/>
    <field name="nom" editable="1"/>
    <field name="type_portion" editable="1"/>
    <field name="v_portion_description" editable="0"/>
    <field name="v_portion_nom" editable="0"/>
    <field name="v_portion_type_portion" editable="0"/>
  </editable>
  <labelOnTop>
    <field labelOnTop="0" name="description"/>
    <field labelOnTop="0" name="id_portion"/>
    <field labelOnTop="0" name="nom"/>
    <field labelOnTop="0" name="type_portion"/>
    <field labelOnTop="0" name="v_portion_description"/>
    <field labelOnTop="0" name="v_portion_nom"/>
    <field labelOnTop="0" name="v_portion_type_portion"/>
  </labelOnTop>
  <widgets>
    <widget name="element_87795107_6a41_4d89_b7a9_27020145c4c2_id_portion_portion_43c846b8_2e8c_4dbc_a286_7779b2dc6274_id_portion">
      <config type="Map">
        <Option type="QString" name="nm-rel" value=""/>
      </config>
    </widget>
    <widget name="etape_7d2fa857_5f19_42b8_ae43_c514540041db_id_portion_portion_43c846b8_2e8c_4dbc_a286_7779b2dc6274_id_portion">
      <config type="Map">
        <Option type="QString" name="nm-rel" value=""/>
      </config>
    </widget>
    <widget name="v_portion__id_portion_portion_43_id_portion">
      <config type="Map">
        <Option type="QString" name="nm-rel" value=""/>
      </config>
    </widget>
    <widget name="v_portion__id_portion_portion_43_id_portion_1">
      <config type="Map">
        <Option type="QString" name="nm-rel" value=""/>
      </config>
    </widget>
    <widget name="virtual_la_id_portion_portion_43_id_portion">
      <config type="Map">
        <Option type="QString" name="nm-rel" value=""/>
      </config>
    </widget>
  </widgets>
  <previewExpression>id_portion</previewExpression>
  <mapTip></mapTip>
  <layerGeometryType>4</layerGeometryType>
</qgis>
