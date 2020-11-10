<!DOCTYPE qgis PUBLIC 'http://mrcc.com/qgis.dtd' 'SYSTEM'>
<qgis styleCategories="AllStyleCategories" readOnly="0" maxScale="0" version="3.10.10-A Coruña" minScale="1e+8" hasScaleBasedVisibilityFlag="0">
  <flags>
    <Identifiable>1</Identifiable>
    <Removable>1</Removable>
    <Searchable>1</Searchable>
  </flags>
  <customproperties>
    <property key="dualview/previewExpressions">
      <value>"id_portion"</value>
    </property>
    <property value="0" key="embeddedWidgets/count"/>
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
            <Option value="true" name="IsMultiline" type="bool"/>
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
                <Option value="OBS" name="Portion observée" type="QString"/>
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
            <Option value="false" name="IsMultiline" type="bool"/>
            <Option value="false" name="UseHtml" type="bool"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="id_local">
      <editWidget type="TextEdit">
        <config>
          <Option type="Map">
            <Option value="false" name="IsMultiline" type="bool"/>
            <Option value="false" name="UseHtml" type="bool"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="mont_subv">
      <editWidget type="Range">
        <config>
          <Option type="Map">
            <Option value="true" name="AllowNull" type="bool"/>
            <Option value="2147483647" name="Max" type="double"/>
            <Option value="0" name="Min" type="double"/>
            <Option value="0" name="Precision" type="int"/>
            <Option value="1" name="Step" type="double"/>
            <Option value="SpinBox" name="Style" type="QString"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="annee_subv">
      <editWidget type="DateTime">
        <config>
          <Option type="Map">
            <Option value="true" name="allow_null" type="bool"/>
            <Option value="false" name="calendar_popup" type="bool"/>
            <Option value="yyyy" name="display_format" type="QString"/>
            <Option value="yyyy" name="field_format" type="QString"/>
            <Option value="false" name="field_iso_format" type="bool"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="elements">
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
    <alias name="Nombre d'éléments" field="elements" index="8"/>
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
    <default expression="" field="elements" applyOnUpdate="0"/>
  </defaults>
  <constraints>
    <constraint unique_strength="2" notnull_strength="2" field="id_portion" constraints="3" exp_strength="0"/>
    <constraint unique_strength="0" notnull_strength="0" field="nom" constraints="0" exp_strength="0"/>
    <constraint unique_strength="0" notnull_strength="0" field="description" constraints="0" exp_strength="0"/>
    <constraint unique_strength="0" notnull_strength="1" field="type_portion" constraints="1" exp_strength="0"/>
    <constraint unique_strength="0" notnull_strength="0" field="id_on3v" constraints="0" exp_strength="0"/>
    <constraint unique_strength="0" notnull_strength="0" field="id_local" constraints="0" exp_strength="0"/>
    <constraint unique_strength="0" notnull_strength="0" field="mont_subv" constraints="0" exp_strength="0"/>
    <constraint unique_strength="0" notnull_strength="0" field="annee_subv" constraints="0" exp_strength="0"/>
    <constraint unique_strength="0" notnull_strength="0" field="elements" constraints="0" exp_strength="0"/>
  </constraints>
  <constraintExpressions>
    <constraint desc="" field="id_portion" exp=""/>
    <constraint desc="" field="nom" exp=""/>
    <constraint desc="" field="description" exp=""/>
    <constraint desc="" field="type_portion" exp=""/>
    <constraint desc="" field="id_on3v" exp=""/>
    <constraint desc="" field="id_local" exp=""/>
    <constraint desc="" field="mont_subv" exp=""/>
    <constraint desc="" field="annee_subv" exp=""/>
    <constraint desc="" field="elements" exp=""/>
  </constraintExpressions>
  <expressionfields>
    <field length="0" name="elements" subType="0" expression=" relation_aggregate( 'element_portion_segment', 'count', &quot;id_segment&quot;)" type="2" typeName="integer" precision="0" comment=""/>
  </expressionfields>
  <attributeactions>
    <defaultAction value="{00000000-0000-0000-0000-000000000000}" key="Canvas"/>
    <actionsetting capture="0" name="Ajouter des éléments de portion à partir des segments sélectionnés" shortTitle="Ajouter des éléments de portion" type="1" action="from qgis.utils import plugins&#xa;plugins['veloroutes_voies_vertes'].run_action('update_selected_feature', [%id_portion%], [% '\''||@layer_name||'\'' %] , 'add')" notificationMessage="" isEnabledOnlyWhenEditable="0" id="{c32f4780-c23a-4627-91f2-34cb3666b990}" icon="">
      <actionScope id="Feature"/>
    </actionsetting>
    <actionsetting capture="0" name="Suppression d'éléments de portion à partir des segments sélectionnés" shortTitle="Suppression d'éléments de portion" type="1" action="from qgis.utils import plugins&#xa;plugins['veloroutes_voies_vertes'].run_action('update_selected_feature', [%id_portion%], [% '\''||@layer_name||'\'' %] , 'del')" notificationMessage="" isEnabledOnlyWhenEditable="0" id="{040efc93-3296-4c48-9fe9-efd45ac8b65b}" icon="">
      <actionScope id="Feature"/>
    </actionsetting>
  </attributeactions>
  <attributetableconfig sortExpression="&quot;elements&quot;" sortOrder="0" actionWidgetStyle="dropDown">
    <columns>
      <column name="id_portion" hidden="0" type="field" width="95"/>
      <column name="nom" hidden="0" type="field" width="224"/>
      <column name="description" hidden="0" type="field" width="301"/>
      <column name="type_portion" hidden="0" type="field" width="-1"/>
      <column name="id_on3v" hidden="0" type="field" width="-1"/>
      <column name="id_local" hidden="0" type="field" width="-1"/>
      <column name="mont_subv" hidden="0" type="field" width="-1"/>
      <column name="annee_subv" hidden="0" type="field" width="-1"/>
      <column name="elements" hidden="0" type="field" width="-1"/>
      <column hidden="0" type="actions" width="308"/>
    </columns>
  </attributetableconfig>
  <conditionalstyles>
    <rowstyles>
      <style name="portion vide" rule="&quot;elements&quot; = 0" background_color="#fb9a99" background_color_alpha="255">
        <font description="Ubuntu,11,-1,5,50,0,0,0,0,0" style=""/>
      </style>
    </rowstyles>
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
    <field name="elements" editable="0"/>
    <field name="id_local" editable="1"/>
    <field name="id_on3v" editable="1"/>
    <field name="id_portion" editable="0"/>
    <field name="mont_subv" editable="1"/>
    <field name="nom" editable="1"/>
    <field name="segments" editable="0"/>
    <field name="type_portion" editable="1"/>
    <field name="v_portion_description" editable="0"/>
    <field name="v_portion_nom" editable="0"/>
    <field name="v_portion_type_portion" editable="0"/>
  </editable>
  <labelOnTop>
    <field labelOnTop="0" name="annee_subv"/>
    <field labelOnTop="0" name="description"/>
    <field labelOnTop="0" name="elements"/>
    <field labelOnTop="0" name="id_local"/>
    <field labelOnTop="0" name="id_on3v"/>
    <field labelOnTop="0" name="id_portion"/>
    <field labelOnTop="0" name="mont_subv"/>
    <field labelOnTop="0" name="nom"/>
    <field labelOnTop="0" name="segments"/>
    <field labelOnTop="0" name="type_portion"/>
    <field labelOnTop="0" name="v_portion_description"/>
    <field labelOnTop="0" name="v_portion_nom"/>
    <field labelOnTop="0" name="v_portion_type_portion"/>
  </labelOnTop>
  <widgets>
    <widget name="element_187bfb9d_67f5_4058_8133_4c3aab650a47_id_portion_portion_097d5bb8_46a9_4b89_afcc_d25683ead4c5_id_portion">
      <config type="Map">
        <Option value="" name="nm-rel" type="QString"/>
      </config>
    </widget>
    <widget name="element_87795107_6a41_4d89_b7a9_27020145c4c2_id_portion_portion_43c846b8_2e8c_4dbc_a286_7779b2dc6274_id_portion">
      <config type="Map">
        <Option value="" name="nm-rel" type="QString"/>
      </config>
    </widget>
    <widget name="element_9448090b_c4ec_49b1_81c1_c622817d5aac_id_portion_portion_8b4d47a9_fcca_4e53_8b4e_cd6aa677ad13_id_portion">
      <config type="Map">
        <Option value="element_34_id_segment_segment__id_segment" name="nm-rel" type="QString"/>
      </config>
    </widget>
    <widget name="element_d645199c_2ad4_4c2c_afff_a94e74912f09_id_portion_portion_6078641e_d0e3_4be8_96d3_831341a6ee37_id_portion">
      <config type="Map">
        <Option value="" name="nm-rel" type="QString"/>
      </config>
    </widget>
    <widget name="etape_008e0743_3f06_431d_afbb_0c8da7d8e66f_id_portion_portion_8b4d47a9_fcca_4e53_8b4e_cd6aa677ad13_id_portion">
      <config type="Map">
        <Option value="etape_008e0743_3f06_431d_afbb_0c8da7d8e66f_id_itineraire_itineraire_37f151ab_0ac8_4003_b653_f83e948fd3f8_id_itineraire" name="nm-rel" type="QString"/>
      </config>
    </widget>
    <widget name="etape_7d2fa857_5f19_42b8_ae43_c514540041db_id_portion_portion_43c846b8_2e8c_4dbc_a286_7779b2dc6274_id_portion">
      <config type="Map">
        <Option value="" name="nm-rel" type="QString"/>
      </config>
    </widget>
    <widget name="etape_9a378a97_1e9f_455f_972e_02e7bc9efae0_id_portion_portion_6078641e_d0e3_4be8_96d3_831341a6ee37_id_portion">
      <config type="Map">
        <Option value="" name="nm-rel" type="QString"/>
      </config>
    </widget>
    <widget name="etape_bfc9de6e_3c03_405b_8ea9_5f7ac7410b40_id_portion_portion_097d5bb8_46a9_4b89_afcc_d25683ead4c5_id_portion">
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
