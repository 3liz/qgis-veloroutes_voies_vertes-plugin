<!DOCTYPE qgis PUBLIC 'http://mrcc.com/qgis.dtd' 'SYSTEM'>
<qgis version="3.10.10-A Coruña" hasScaleBasedVisibilityFlag="0" maxScale="0" styleCategories="AllStyleCategories" readOnly="0" minScale="1e+08">
  <flags>
    <Identifiable>1</Identifiable>
    <Removable>1</Removable>
    <Searchable>1</Searchable>
  </flags>
  <customproperties>
    <property key="dualview/previewExpressions" value="id_portion"/>
    <property key="embeddedWidgets/count" value="0"/>
    <property key="variableNames"/>
    <property key="variableValues"/>
  </customproperties>
  <geometryOptions removeDuplicateNodes="0" geometryPrecision="0">
    <activeChecks/>
    <checkConfiguration/>
  </geometryOptions>
  <fieldConfiguration>
    <field name="id_portion">
      <editWidget type="Hidden">
        <config>
          <Option/>
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
    <field name="id_on3v">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="id_local">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="mont_subv">
      <editWidget type="Range">
        <config>
          <Option type="Map">
            <Option type="bool" name="AllowNull" value="true"/>
            <Option type="int" name="Max" value="2147483647"/>
            <Option type="int" name="Min" value="-2147483648"/>
            <Option type="int" name="Precision" value="0"/>
            <Option type="int" name="Step" value="1"/>
            <Option type="QString" name="Style" value="SpinBox"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="annee_subv">
      <editWidget type="Range">
        <config>
          <Option type="Map">
            <Option type="bool" name="AllowNull" value="true"/>
            <Option type="int" name="Max" value="2147483647"/>
            <Option type="int" name="Min" value="2000"/>
            <Option type="int" name="Precision" value="0"/>
            <Option type="int" name="Step" value="1"/>
            <Option type="QString" name="Style" value="SpinBox"/>
          </Option>
        </config>
      </editWidget>
    </field>
  </fieldConfiguration>
  <aliases>
    <alias field="id_portion" index="0" name=""/>
    <alias field="nom" index="1" name=""/>
    <alias field="description" index="2" name=""/>
    <alias field="type_portion" index="3" name=""/>
    <alias field="id_on3v" index="4" name=""/>
    <alias field="id_local" index="5" name=""/>
    <alias field="mont_subv" index="6" name=""/>
    <alias field="annee_subv" index="7" name=""/>
  </aliases>
  <excludeAttributesWMS/>
  <excludeAttributesWFS/>
  <defaults>
    <default expression="" field="id_portion" applyOnUpdate="0"/>
    <default expression="" field="nom" applyOnUpdate="0"/>
    <default expression="" field="description" applyOnUpdate="0"/>
    <default expression="" field="type_portion" applyOnUpdate="0"/>
    <default expression="" field="id_on3v" applyOnUpdate="0"/>
    <default expression="" field="id_local" applyOnUpdate="0"/>
    <default expression="" field="mont_subv" applyOnUpdate="0"/>
    <default expression="" field="annee_subv" applyOnUpdate="0"/>
  </defaults>
  <constraints>
    <constraint field="id_portion" notnull_strength="2" constraints="3" exp_strength="0" unique_strength="2"/>
    <constraint field="nom" notnull_strength="0" constraints="0" exp_strength="0" unique_strength="0"/>
    <constraint field="description" notnull_strength="0" constraints="0" exp_strength="0" unique_strength="0"/>
    <constraint field="type_portion" notnull_strength="1" constraints="1" exp_strength="0" unique_strength="0"/>
    <constraint field="id_on3v" notnull_strength="0" constraints="0" exp_strength="0" unique_strength="0"/>
    <constraint field="id_local" notnull_strength="0" constraints="0" exp_strength="0" unique_strength="0"/>
    <constraint field="mont_subv" notnull_strength="0" constraints="0" exp_strength="0" unique_strength="0"/>
    <constraint field="annee_subv" notnull_strength="0" constraints="0" exp_strength="0" unique_strength="0"/>
  </constraints>
  <constraintExpressions>
    <constraint field="id_portion" exp="" desc=""/>
    <constraint field="nom" exp="" desc=""/>
    <constraint field="description" exp="" desc=""/>
    <constraint field="type_portion" exp="" desc=""/>
    <constraint field="id_on3v" exp="" desc=""/>
    <constraint field="id_local" exp="" desc=""/>
    <constraint field="mont_subv" exp="" desc=""/>
    <constraint field="annee_subv" exp="" desc=""/>
  </constraintExpressions>
  <expressionfields/>
  <attributeactions>
    <defaultAction key="Canvas" value="{00000000-0000-0000-0000-000000000000}"/>
  </attributeactions>
  <attributetableconfig sortOrder="0" sortExpression="" actionWidgetStyle="dropDown">
    <columns>
      <column type="field" name="id_portion" hidden="0" width="95"/>
      <column type="field" name="nom" hidden="0" width="224"/>
      <column type="field" name="description" hidden="0" width="301"/>
      <column type="field" name="type_portion" hidden="0" width="-1"/>
      <column type="actions" hidden="1" width="-1"/>
      <column type="field" name="id_on3v" hidden="0" width="-1"/>
      <column type="field" name="id_local" hidden="0" width="-1"/>
      <column type="field" name="mont_subv" hidden="0" width="-1"/>
      <column type="field" name="annee_subv" hidden="0" width="-1"/>
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
    <field name="annee_subv" editable="1"/>
    <field name="description" editable="1"/>
    <field name="id_local" editable="1"/>
    <field name="id_on3v" editable="1"/>
    <field name="id_portion" editable="0"/>
    <field name="mont_subv" editable="1"/>
    <field name="nom" editable="1"/>
    <field name="type_portion" editable="1"/>
    <field name="v_portion_description" editable="0"/>
    <field name="v_portion_nom" editable="0"/>
    <field name="v_portion_type_portion" editable="0"/>
  </editable>
  <labelOnTop>
    <field name="annee_subv" labelOnTop="0"/>
    <field name="description" labelOnTop="0"/>
    <field name="id_local" labelOnTop="0"/>
    <field name="id_on3v" labelOnTop="0"/>
    <field name="id_portion" labelOnTop="0"/>
    <field name="mont_subv" labelOnTop="0"/>
    <field name="nom" labelOnTop="0"/>
    <field name="type_portion" labelOnTop="0"/>
    <field name="v_portion_description" labelOnTop="0"/>
    <field name="v_portion_nom" labelOnTop="0"/>
    <field name="v_portion_type_portion" labelOnTop="0"/>
  </labelOnTop>
  <widgets>
    <widget name="element_87795107_6a41_4d89_b7a9_27020145c4c2_id_portion_portion_43c846b8_2e8c_4dbc_a286_7779b2dc6274_id_portion">
      <config type="Map">
        <Option type="QString" name="nm-rel" value=""/>
      </config>
    </widget>
    <widget name="element_d645199c_2ad4_4c2c_afff_a94e74912f09_id_portion_portion_6078641e_d0e3_4be8_96d3_831341a6ee37_id_portion">
      <config type="Map">
        <Option type="QString" name="nm-rel" value=""/>
      </config>
    </widget>
    <widget name="etape_7d2fa857_5f19_42b8_ae43_c514540041db_id_portion_portion_43c846b8_2e8c_4dbc_a286_7779b2dc6274_id_portion">
      <config type="Map">
        <Option type="QString" name="nm-rel" value=""/>
      </config>
    </widget>
    <widget name="etape_9a378a97_1e9f_455f_972e_02e7bc9efae0_id_portion_portion_6078641e_d0e3_4be8_96d3_831341a6ee37_id_portion">
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
  <previewExpression>"id_portion"</previewExpression>
  <mapTip></mapTip>
  <layerGeometryType>4</layerGeometryType>
</qgis>
