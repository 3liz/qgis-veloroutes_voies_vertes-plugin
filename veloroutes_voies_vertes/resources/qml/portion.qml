<!DOCTYPE qgis PUBLIC 'http://mrcc.com/qgis.dtd' 'SYSTEM'>
<qgis styleCategories="AllStyleCategories" maxScale="0" readOnly="0" version="3.10.10-A Coruña" minScale="1e+8" hasScaleBasedVisibilityFlag="0">
  <flags>
    <Identifiable>1</Identifiable>
    <Removable>1</Removable>
    <Searchable>1</Searchable>
  </flags>
  <customproperties>
    <property key="dualview/previewExpressions" value="&quot;id_portion&quot;"/>
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
            <Option name="IsMultiline" value="true" type="bool"/>
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
                <Option name="Etape" value="ETP" type="QString"/>
              </Option>
              <Option type="Map">
                <Option name="Variante" value="VAR" type="QString"/>
              </Option>
              <Option type="Map">
                <Option name="Portion provisoire" value="PRV" type="QString"/>
              </Option>
              <Option type="Map">
                <Option name="Portion observée" value="OBS" type="QString"/>
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
            <Option name="IsMultiline" value="false" type="bool"/>
            <Option name="UseHtml" value="false" type="bool"/>
          </Option>
        </config>
      </editWidget>
    </field>
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
    <field name="mont_subv">
      <editWidget type="Range">
        <config>
          <Option type="Map">
            <Option name="AllowNull" value="true" type="bool"/>
            <Option name="Max" value="2147483647" type="double"/>
            <Option name="Min" value="0" type="double"/>
            <Option name="Precision" value="0" type="int"/>
            <Option name="Step" value="1" type="double"/>
            <Option name="Style" value="SpinBox" type="QString"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="annee_subv">
      <editWidget type="DateTime">
        <config>
          <Option type="Map">
            <Option name="allow_null" value="true" type="bool"/>
            <Option name="calendar_popup" value="false" type="bool"/>
            <Option name="display_format" value="yyyy" type="QString"/>
            <Option name="field_format" value="yyyy" type="QString"/>
            <Option name="field_iso_format" value="false" type="bool"/>
          </Option>
        </config>
      </editWidget>
    </field>
  </fieldConfiguration>
  <aliases>
    <alias name="Identifiant" index="0" field="id_portion"/>
    <alias name="Nom" index="1" field="nom"/>
    <alias name="Description" index="2" field="description"/>
    <alias name="Type de portion" index="3" field="type_portion"/>
    <alias name="Id. ON3V" index="4" field="id_on3v"/>
    <alias name="Id. Local" index="5" field="id_local"/>
    <alias name="Montant Subvention" index="6" field="mont_subv"/>
    <alias name="Année de subvention" index="7" field="annee_subv"/>
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
    <constraint notnull_strength="2" exp_strength="0" constraints="3" unique_strength="2" field="id_portion"/>
    <constraint notnull_strength="0" exp_strength="0" constraints="0" unique_strength="0" field="nom"/>
    <constraint notnull_strength="0" exp_strength="0" constraints="0" unique_strength="0" field="description"/>
    <constraint notnull_strength="1" exp_strength="0" constraints="1" unique_strength="0" field="type_portion"/>
    <constraint notnull_strength="0" exp_strength="0" constraints="0" unique_strength="0" field="id_on3v"/>
    <constraint notnull_strength="0" exp_strength="0" constraints="0" unique_strength="0" field="id_local"/>
    <constraint notnull_strength="0" exp_strength="0" constraints="0" unique_strength="0" field="mont_subv"/>
    <constraint notnull_strength="0" exp_strength="0" constraints="0" unique_strength="0" field="annee_subv"/>
  </constraints>
  <constraintExpressions>
    <constraint desc="" exp="" field="id_portion"/>
    <constraint desc="" exp="" field="nom"/>
    <constraint desc="" exp="" field="description"/>
    <constraint desc="" exp="" field="type_portion"/>
    <constraint desc="" exp="" field="id_on3v"/>
    <constraint desc="" exp="" field="id_local"/>
    <constraint desc="" exp="" field="mont_subv"/>
    <constraint desc="" exp="" field="annee_subv"/>
  </constraintExpressions>
  <expressionfields/>
  <attributeactions>
    <defaultAction key="Canvas" value="{00000000-0000-0000-0000-000000000000}"/>
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
        <Option name="nm-rel" value="" type="QString"/>
      </config>
    </widget>
    <widget name="element_9448090b_c4ec_49b1_81c1_c622817d5aac_id_portion_portion_8b4d47a9_fcca_4e53_8b4e_cd6aa677ad13_id_portion">
      <config type="Map">
        <Option name="nm-rel" value="element_34_id_segment_segment__id_segment" type="QString"/>
      </config>
    </widget>
    <widget name="element_d645199c_2ad4_4c2c_afff_a94e74912f09_id_portion_portion_6078641e_d0e3_4be8_96d3_831341a6ee37_id_portion">
      <config type="Map">
        <Option name="nm-rel" value="" type="QString"/>
      </config>
    </widget>
    <widget name="etape_008e0743_3f06_431d_afbb_0c8da7d8e66f_id_portion_portion_8b4d47a9_fcca_4e53_8b4e_cd6aa677ad13_id_portion">
      <config type="Map">
        <Option name="nm-rel" value="etape_008e0743_3f06_431d_afbb_0c8da7d8e66f_id_itineraire_itineraire_37f151ab_0ac8_4003_b653_f83e948fd3f8_id_itineraire" type="QString"/>
      </config>
    </widget>
    <widget name="etape_7d2fa857_5f19_42b8_ae43_c514540041db_id_portion_portion_43c846b8_2e8c_4dbc_a286_7779b2dc6274_id_portion">
      <config type="Map">
        <Option name="nm-rel" value="" type="QString"/>
      </config>
    </widget>
    <widget name="etape_9a378a97_1e9f_455f_972e_02e7bc9efae0_id_portion_portion_6078641e_d0e3_4be8_96d3_831341a6ee37_id_portion">
      <config type="Map">
        <Option name="nm-rel" value="" type="QString"/>
      </config>
    </widget>
    <widget name="v_portion__id_portion_portion_43_id_portion">
      <config type="Map">
        <Option name="nm-rel" value="" type="QString"/>
      </config>
    </widget>
    <widget name="v_portion__id_portion_portion_43_id_portion_1">
      <config type="Map">
        <Option name="nm-rel" value="" type="QString"/>
      </config>
    </widget>
    <widget name="virtual_la_id_portion_portion_43_id_portion">
      <config type="Map">
        <Option name="nm-rel" value="" type="QString"/>
      </config>
    </widget>
  </widgets>
  <previewExpression>"id_portion"</previewExpression>
  <mapTip></mapTip>
  <layerGeometryType>4</layerGeometryType>
</qgis>
