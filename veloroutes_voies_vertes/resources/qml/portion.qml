<!DOCTYPE qgis PUBLIC 'http://mrcc.com/qgis.dtd' 'SYSTEM'>
<qgis hasScaleBasedVisibilityFlag="0" maxScale="0" minScale="1e+08" styleCategories="AllStyleCategories" version="3.10.10-A Coruña" readOnly="0">
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
            <Option value="false" name="IsMultiline" type="bool"/>
            <Option value="false" name="UseHtml" type="bool"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="nom">
      <editWidget type="TextEdit">
        <config>
          <Option type="Map">
            <Option value="false" name="IsMultiline" type="bool"/>
            <Option value="false" name="UseHtml" type="bool"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="description">
      <editWidget type="TextEdit">
        <config>
          <Option type="Map">
            <Option value="false" name="IsMultiline" type="bool"/>
            <Option value="false" name="UseHtml" type="bool"/>
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
                <Option value="ETP" name="Etape" type="QString"/>
              </Option>
              <Option type="Map">
                <Option value="VAR" name="Variante" type="QString"/>
              </Option>
              <Option type="Map">
                <Option value="PRV" name="Portion provisoire" type="QString"/>
              </Option>
              <Option type="Map">
                <Option value="OBS" name="Portion obeservée" type="QString"/>
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
            <Option value="true" name="AllowNull" type="bool"/>
            <Option value="2147483647" name="Max" type="int"/>
            <Option value="-2147483648" name="Min" type="int"/>
            <Option value="0" name="Precision" type="int"/>
            <Option value="1" name="Step" type="int"/>
            <Option value="SpinBox" name="Style" type="QString"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="annee_subv">
      <editWidget type="Range">
        <config>
          <Option type="Map">
            <Option value="true" name="AllowNull" type="bool"/>
            <Option value="2147483647" name="Max" type="int"/>
            <Option value="2000" name="Min" type="int"/>
            <Option value="0" name="Precision" type="int"/>
            <Option value="1" name="Step" type="int"/>
            <Option value="SpinBox" name="Style" type="QString"/>
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
    <alias name="" field="id_on3v" index="4"/>
    <alias name="" field="id_local" index="5"/>
    <alias name="" field="mont_subv" index="6"/>
    <alias name="" field="annee_subv" index="7"/>
  </aliases>
  <excludeAttributesWMS/>
  <excludeAttributesWFS/>
  <defaults>
    <default applyOnUpdate="0" field="id_portion" expression=""/>
    <default applyOnUpdate="0" field="nom" expression=""/>
    <default applyOnUpdate="0" field="description" expression=""/>
    <default applyOnUpdate="0" field="type_portion" expression=""/>
    <default applyOnUpdate="0" field="id_on3v" expression=""/>
    <default applyOnUpdate="0" field="id_local" expression=""/>
    <default applyOnUpdate="0" field="mont_subv" expression=""/>
    <default applyOnUpdate="0" field="annee_subv" expression=""/>
  </defaults>
  <constraints>
    <constraint unique_strength="1" notnull_strength="1" constraints="3" field="id_portion" exp_strength="0"/>
    <constraint unique_strength="0" notnull_strength="0" constraints="0" field="nom" exp_strength="0"/>
    <constraint unique_strength="0" notnull_strength="0" constraints="0" field="description" exp_strength="0"/>
    <constraint unique_strength="0" notnull_strength="1" constraints="1" field="type_portion" exp_strength="0"/>
    <constraint unique_strength="0" notnull_strength="0" constraints="0" field="id_on3v" exp_strength="0"/>
    <constraint unique_strength="0" notnull_strength="0" constraints="0" field="id_local" exp_strength="0"/>
    <constraint unique_strength="0" notnull_strength="0" constraints="0" field="mont_subv" exp_strength="0"/>
    <constraint unique_strength="0" notnull_strength="0" constraints="0" field="annee_subv" exp_strength="0"/>
  </constraints>
  <constraintExpressions>
    <constraint exp="" desc="" field="id_portion"/>
    <constraint exp="" desc="" field="nom"/>
    <constraint exp="" desc="" field="description"/>
    <constraint exp="" desc="" field="type_portion"/>
    <constraint exp="" desc="" field="id_on3v"/>
    <constraint exp="" desc="" field="id_local"/>
    <constraint exp="" desc="" field="mont_subv"/>
    <constraint exp="" desc="" field="annee_subv"/>
  </constraintExpressions>
  <expressionfields/>
  <attributeactions>
    <defaultAction value="{00000000-0000-0000-0000-000000000000}" key="Canvas"/>
  </attributeactions>
  <attributetableconfig sortOrder="0" actionWidgetStyle="dropDown" sortExpression="">
    <columns>
      <column width="95" name="id_portion" hidden="0" type="field"/>
      <column width="224" name="nom" hidden="0" type="field"/>
      <column width="301" name="description" hidden="0" type="field"/>
      <column width="-1" name="type_portion" hidden="0" type="field"/>
      <column width="-1" hidden="1" type="actions"/>
      <column width="-1" name="id_on3v" hidden="0" type="field"/>
      <column width="-1" name="id_local" hidden="0" type="field"/>
      <column width="-1" name="mont_subv" hidden="0" type="field"/>
      <column width="-1" name="annee_subv" hidden="0" type="field"/>
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
    <field editable="1" name="annee_subv"/>
    <field editable="1" name="description"/>
    <field editable="1" name="id_local"/>
    <field editable="1" name="id_on3v"/>
    <field editable="0" name="id_portion"/>
    <field editable="1" name="mont_subv"/>
    <field editable="1" name="nom"/>
    <field editable="1" name="type_portion"/>
    <field editable="0" name="v_portion_description"/>
    <field editable="0" name="v_portion_nom"/>
    <field editable="0" name="v_portion_type_portion"/>
  </editable>
  <labelOnTop>
    <field labelOnTop="0" name="annee_subv"/>
    <field labelOnTop="0" name="description"/>
    <field labelOnTop="0" name="id_local"/>
    <field labelOnTop="0" name="id_on3v"/>
    <field labelOnTop="0" name="id_portion"/>
    <field labelOnTop="0" name="mont_subv"/>
    <field labelOnTop="0" name="nom"/>
    <field labelOnTop="0" name="type_portion"/>
    <field labelOnTop="0" name="v_portion_description"/>
    <field labelOnTop="0" name="v_portion_nom"/>
    <field labelOnTop="0" name="v_portion_type_portion"/>
  </labelOnTop>
  <widgets>
    <widget name="element_87795107_6a41_4d89_b7a9_27020145c4c2_id_portion_portion_43c846b8_2e8c_4dbc_a286_7779b2dc6274_id_portion">
      <config type="Map">
        <Option value="" name="nm-rel" type="QString"/>
      </config>
    </widget>
    <widget name="etape_7d2fa857_5f19_42b8_ae43_c514540041db_id_portion_portion_43c846b8_2e8c_4dbc_a286_7779b2dc6274_id_portion">
      <config type="Map">
        <Option value="" name="nm-rel" type="QString"/>
      </config>
    </widget>
    <widget name="v_portion__id_portion_portion_43_id_portion">
      <config type="Map">
        <Option value="" name="nm-rel" type="QString"/>
      </config>
    </widget>
    <widget name="v_portion__id_portion_portion_43_id_portion_1">
      <config type="Map">
        <Option value="" name="nm-rel" type="QString"/>
      </config>
    </widget>
    <widget name="virtual_la_id_portion_portion_43_id_portion">
      <config type="Map">
        <Option value="" name="nm-rel" type="QString"/>
      </config>
    </widget>
  </widgets>
  <previewExpression>"id_portion"</previewExpression>
  <mapTip></mapTip>
  <layerGeometryType>4</layerGeometryType>
</qgis>
