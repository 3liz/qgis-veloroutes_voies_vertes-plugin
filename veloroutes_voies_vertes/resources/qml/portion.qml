<!DOCTYPE qgis PUBLIC 'http://mrcc.com/qgis.dtd' 'SYSTEM'>
<qgis readOnly="0" version="3.10.10-A Coruña" styleCategories="AllStyleCategories" maxScale="0" hasScaleBasedVisibilityFlag="0" minScale="1e+8">
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
  <geometryOptions geometryPrecision="0" removeDuplicateNodes="0">
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
            <Option type="bool" name="IsMultiline" value="true"/>
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
                <Option type="QString" name="Portion observée" value="OBS"/>
              </Option>
            </Option>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="id_on3v">
      <editWidget type="TextEdit">
        <config>
          <Option type="Map">
            <Option type="bool" name="IsMultiline" value="false"/>
            <Option type="bool" name="UseHtml" value="false"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="id_local">
      <editWidget type="TextEdit">
        <config>
          <Option type="Map">
            <Option type="bool" name="IsMultiline" value="false"/>
            <Option type="bool" name="UseHtml" value="false"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="mont_subv">
      <editWidget type="Range">
        <config>
          <Option type="Map">
            <Option type="bool" name="AllowNull" value="true"/>
            <Option type="double" name="Max" value="2147483647"/>
            <Option type="double" name="Min" value="0"/>
            <Option type="int" name="Precision" value="0"/>
            <Option type="double" name="Step" value="1"/>
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
    <alias name="Identifiant" field="id_portion" index="0"/>
    <alias name="Nom" field="nom" index="1"/>
    <alias name="Description" field="description" index="2"/>
    <alias name="Type de portion" field="type_portion" index="3"/>
    <alias name="Id. ON3V" field="id_on3v" index="4"/>
    <alias name="Id. Local" field="id_local" index="5"/>
    <alias name="Montant Subvention" field="mont_subv" index="6"/>
    <alias name="Année de subvention" field="annee_subv" index="7"/>
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
    <constraint constraints="3" unique_strength="2" field="id_portion" exp_strength="0" notnull_strength="2"/>
    <constraint constraints="0" unique_strength="0" field="nom" exp_strength="0" notnull_strength="0"/>
    <constraint constraints="0" unique_strength="0" field="description" exp_strength="0" notnull_strength="0"/>
    <constraint constraints="1" unique_strength="0" field="type_portion" exp_strength="0" notnull_strength="1"/>
    <constraint constraints="0" unique_strength="0" field="id_on3v" exp_strength="0" notnull_strength="0"/>
    <constraint constraints="0" unique_strength="0" field="id_local" exp_strength="0" notnull_strength="0"/>
    <constraint constraints="0" unique_strength="0" field="mont_subv" exp_strength="0" notnull_strength="0"/>
    <constraint constraints="0" unique_strength="0" field="annee_subv" exp_strength="0" notnull_strength="0"/>
  </constraints>
  <constraintExpressions>
    <constraint exp="" field="id_portion" desc=""/>
    <constraint exp="" field="nom" desc=""/>
    <constraint exp="" field="description" desc=""/>
    <constraint exp="" field="type_portion" desc=""/>
    <constraint exp="" field="id_on3v" desc=""/>
    <constraint exp="" field="id_local" desc=""/>
    <constraint exp="" field="mont_subv" desc=""/>
    <constraint exp="" field="annee_subv" desc=""/>
  </constraintExpressions>
  <expressionfields/>
  <attributeactions>
    <defaultAction key="Canvas" value="{00000000-0000-0000-0000-000000000000}"/>
  </attributeactions>
  <attributetableconfig sortOrder="0" sortExpression="" actionWidgetStyle="dropDown">
    <columns>
      <column hidden="0" type="field" name="id_portion" width="95"/>
      <column hidden="0" type="field" name="nom" width="224"/>
      <column hidden="0" type="field" name="description" width="301"/>
      <column hidden="0" type="field" name="type_portion" width="-1"/>
      <column hidden="1" type="actions" width="-1"/>
      <column hidden="0" type="field" name="id_on3v" width="-1"/>
      <column hidden="0" type="field" name="id_local" width="-1"/>
      <column hidden="0" type="field" name="mont_subv" width="-1"/>
      <column hidden="0" type="field" name="annee_subv" width="-1"/>
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
    <widget name="element_9448090b_c4ec_49b1_81c1_c622817d5aac_id_portion_portion_8b4d47a9_fcca_4e53_8b4e_cd6aa677ad13_id_portion">
      <config type="Map">
        <Option type="QString" name="nm-rel" value="element_34_id_segment_segment__id_segment"/>
      </config>
    </widget>
    <widget name="element_d645199c_2ad4_4c2c_afff_a94e74912f09_id_portion_portion_6078641e_d0e3_4be8_96d3_831341a6ee37_id_portion">
      <config type="Map">
        <Option type="QString" name="nm-rel" value=""/>
      </config>
    </widget>
    <widget name="etape_008e0743_3f06_431d_afbb_0c8da7d8e66f_id_portion_portion_8b4d47a9_fcca_4e53_8b4e_cd6aa677ad13_id_portion">
      <config type="Map">
        <Option type="QString" name="nm-rel" value="etape_008e0743_3f06_431d_afbb_0c8da7d8e66f_id_itineraire_itineraire_37f151ab_0ac8_4003_b653_f83e948fd3f8_id_itineraire"/>
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
