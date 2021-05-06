<!DOCTYPE qgis PUBLIC 'http://mrcc.com/qgis.dtd' 'SYSTEM'>
<qgis hasScaleBasedVisibilityFlag="0" styleCategories="AllStyleCategories" minScale="1e+8" version="3.10.14-A Coruña" maxScale="0" readOnly="0">
  <flags>
    <Identifiable>1</Identifiable>
    <Removable>1</Removable>
    <Searchable>1</Searchable>
  </flags>
  <customproperties>
    <property value="&quot;id_portion&quot;" key="dualview/previewExpressions"/>
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
            <Option name="IsMultiline" value="false" type="bool"/>
            <Option name="UseHtml" value="false" type="bool"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="nom">
      <editWidget type="UniqueValues">
        <config>
          <Option type="Map">
            <Option name="Editable" value="true" type="bool"/>
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
    <field name="convention">
      <editWidget type="UniqueValues">
        <config>
          <Option type="Map">
            <Option name="Editable" value="true" type="bool"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="type_pluriannuel">
      <editWidget type="UniqueValues">
        <config>
          <Option type="Map">
            <Option name="Editable" value="true" type="bool"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="elements">
      <editWidget type="Range">
        <config>
          <Option type="Map">
            <Option name="AllowNull" value="true" type="bool"/>
            <Option name="Max" value="2147483647" type="int"/>
            <Option name="Min" value="-2147483648" type="int"/>
            <Option name="Precision" value="0" type="int"/>
            <Option name="Step" value="1" type="int"/>
            <Option name="Style" value="SpinBox" type="QString"/>
          </Option>
        </config>
      </editWidget>
    </field>
  </fieldConfiguration>
  <aliases>
    <alias field="id_portion" name="Identifiant" index="0"/>
    <alias field="nom" name="Nom" index="1"/>
    <alias field="description" name="Description" index="2"/>
    <alias field="type_portion" name="Type de portion" index="3"/>
    <alias field="id_on3v" name="Id. ON3V" index="4"/>
    <alias field="id_local" name="Id. Local" index="5"/>
    <alias field="mont_subv" name="Montant Subvention" index="6"/>
    <alias field="annee_subv" name="Année de subvention" index="7"/>
    <alias field="convention" name="Lien convention" index="8"/>
    <alias field="type_pluriannuel" name="Type pluriannuel" index="9"/>
    <alias field="elements" name="Nombre d'éléments" index="10"/>
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
    <default expression="" field="convention" applyOnUpdate="0"/>
    <default expression="" field="type_pluriannuel" applyOnUpdate="0"/>
    <default expression="" field="elements" applyOnUpdate="0"/>
  </defaults>
  <constraints>
    <constraint field="id_portion" notnull_strength="2" exp_strength="0" unique_strength="2" constraints="3"/>
    <constraint field="nom" notnull_strength="0" exp_strength="0" unique_strength="0" constraints="0"/>
    <constraint field="description" notnull_strength="0" exp_strength="0" unique_strength="0" constraints="0"/>
    <constraint field="type_portion" notnull_strength="1" exp_strength="0" unique_strength="0" constraints="1"/>
    <constraint field="id_on3v" notnull_strength="0" exp_strength="0" unique_strength="0" constraints="0"/>
    <constraint field="id_local" notnull_strength="0" exp_strength="0" unique_strength="0" constraints="0"/>
    <constraint field="mont_subv" notnull_strength="0" exp_strength="0" unique_strength="0" constraints="0"/>
    <constraint field="annee_subv" notnull_strength="0" exp_strength="0" unique_strength="0" constraints="0"/>
    <constraint field="convention" notnull_strength="0" exp_strength="0" unique_strength="0" constraints="0"/>
    <constraint field="type_pluriannuel" notnull_strength="0" exp_strength="0" unique_strength="0" constraints="0"/>
    <constraint field="elements" notnull_strength="0" exp_strength="0" unique_strength="0" constraints="0"/>
  </constraints>
  <constraintExpressions>
    <constraint field="id_portion" desc="" exp=""/>
    <constraint field="nom" desc="" exp=""/>
    <constraint field="description" desc="" exp=""/>
    <constraint field="type_portion" desc="" exp=""/>
    <constraint field="id_on3v" desc="" exp=""/>
    <constraint field="id_local" desc="" exp=""/>
    <constraint field="mont_subv" desc="" exp=""/>
    <constraint field="annee_subv" desc="" exp=""/>
    <constraint field="convention" desc="" exp=""/>
    <constraint field="type_pluriannuel" desc="" exp=""/>
    <constraint field="elements" desc="" exp=""/>
  </constraintExpressions>
  <expressionfields>
    <field typeName="integer" expression=" relation_aggregate( 'element_portion_segment', 'count', &quot;id_segment&quot;)" comment="" name="elements" type="2" length="0" subType="0" precision="0"/>
  </expressionfields>
  <attributeactions>
    <defaultAction value="{00000000-0000-0000-0000-000000000000}" key="Canvas"/>
    <actionsetting capture="0" icon="" id="{07fa5d07-06bc-434f-bb0a-03d1fd26ea0f}" name="Ajouter des éléments de portion à partir des segments sélectionnés" action="from qgis.utils import plugins&#xa;plugins['veloroutes_voies_vertes'].run_action('update_selected_feature', [%id_portion%], [% '\''||@layer_name||'\'' %] , 'add')" shortTitle="Ajouter des éléments de portion" type="1" notificationMessage="" isEnabledOnlyWhenEditable="0">
      <actionScope id="Feature"/>
    </actionsetting>
    <actionsetting capture="0" icon="" id="{9fb2cc74-30a9-4098-b5b6-d16cff9bb5f9}" name="Suppression d'éléments de portion à partir des segments sélectionnés" action="from qgis.utils import plugins&#xa;plugins['veloroutes_voies_vertes'].run_action('update_selected_feature', [%id_portion%], [% '\''||@layer_name||'\'' %] , 'del')" shortTitle="Suppression d'éléments de portion" type="1" notificationMessage="" isEnabledOnlyWhenEditable="0">
      <actionScope id="Feature"/>
    </actionsetting>
  </attributeactions>
  <attributetableconfig actionWidgetStyle="dropDown" sortOrder="0" sortExpression="&quot;elements&quot;">
    <columns>
      <column hidden="0" name="id_portion" type="field" width="95"/>
      <column hidden="0" name="nom" type="field" width="224"/>
      <column hidden="0" name="description" type="field" width="301"/>
      <column hidden="0" name="type_portion" type="field" width="-1"/>
      <column hidden="0" name="id_on3v" type="field" width="-1"/>
      <column hidden="0" name="id_local" type="field" width="-1"/>
      <column hidden="0" name="mont_subv" type="field" width="-1"/>
      <column hidden="0" name="annee_subv" type="field" width="-1"/>
      <column hidden="0" name="elements" type="field" width="-1"/>
      <column hidden="0" type="actions" width="308"/>
      <column hidden="0" name="convention" type="field" width="-1"/>
      <column hidden="0" name="type_pluriannuel" type="field" width="-1"/>
    </columns>
  </attributetableconfig>
  <conditionalstyles>
    <rowstyles>
      <style name="portion vide" background_color_alpha="255" rule="&quot;elements&quot; = 0" background_color="#fb9a99">
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
  <editorlayout>tablayout</editorlayout>
  <attributeEditorForm>
    <attributeEditorField showLabel="1" name="id_portion" index="0"/>
    <attributeEditorContainer showLabel="1" name="Informations" visibilityExpression="" groupBox="0" visibilityExpressionEnabled="0" columnCount="1">
      <attributeEditorContainer showLabel="1" name="Covadis" visibilityExpression="" groupBox="1" visibilityExpressionEnabled="0" columnCount="1">
        <attributeEditorField showLabel="1" name="id_local" index="5"/>
        <attributeEditorField showLabel="1" name="id_on3v" index="4"/>
        <attributeEditorField showLabel="1" name="nom" index="1"/>
        <attributeEditorField showLabel="1" name="type_portion" index="3"/>
        <attributeEditorField showLabel="1" name="description" index="2"/>
      </attributeEditorContainer>
      <attributeEditorContainer showLabel="1" name="Subvention" visibilityExpression="" groupBox="1" visibilityExpressionEnabled="0" columnCount="1">
        <attributeEditorField showLabel="1" name="type_pluriannuel" index="9"/>
        <attributeEditorField showLabel="1" name="convention" index="8"/>
        <attributeEditorField showLabel="1" name="annee_subv" index="7"/>
        <attributeEditorField showLabel="1" name="mont_subv" index="6"/>
      </attributeEditorContainer>
    </attributeEditorContainer>
    <attributeEditorContainer showLabel="1" name="Segments" visibilityExpression="" groupBox="0" visibilityExpressionEnabled="0" columnCount="1">
      <attributeEditorField showLabel="1" name="elements" index="10"/>
      <attributeEditorRelation showLabel="1" showUnlinkButton="1" name="" showLinkButton="1" relation=""/>
    </attributeEditorContainer>
    <attributeEditorContainer showLabel="1" name="Étapes" visibilityExpression="" groupBox="0" visibilityExpressionEnabled="0" columnCount="1">
      <attributeEditorRelation showLabel="1" showUnlinkButton="1" name="" showLinkButton="1" relation=""/>
    </attributeEditorContainer>
  </attributeEditorForm>
  <editable>
    <field name="annee_subv" editable="1"/>
    <field name="convention" editable="1"/>
    <field name="description" editable="1"/>
    <field name="elements" editable="0"/>
    <field name="id_local" editable="1"/>
    <field name="id_on3v" editable="1"/>
    <field name="id_portion" editable="0"/>
    <field name="longueur" editable="0"/>
    <field name="mont_subv" editable="1"/>
    <field name="nom" editable="1"/>
    <field name="type_pluriannuel" editable="1"/>
    <field name="type_portion" editable="1"/>
  </editable>
  <labelOnTop>
    <field name="annee_subv" labelOnTop="0"/>
    <field name="convention" labelOnTop="0"/>
    <field name="description" labelOnTop="0"/>
    <field name="elements" labelOnTop="0"/>
    <field name="id_local" labelOnTop="0"/>
    <field name="id_on3v" labelOnTop="0"/>
    <field name="id_portion" labelOnTop="0"/>
    <field name="longueur" labelOnTop="0"/>
    <field name="mont_subv" labelOnTop="0"/>
    <field name="nom" labelOnTop="0"/>
    <field name="type_pluriannuel" labelOnTop="0"/>
    <field name="type_portion" labelOnTop="0"/>
  </labelOnTop>
  <widgets>
    <widget name="element_187bfb9d_67f5_4058_8133_4c3aab650a47_id_portion_portion_097d5bb8_46a9_4b89_afcc_d25683ead4c5_id_portion">
      <config type="Map">
        <Option name="nm-rel" value="" type="QString"/>
      </config>
    </widget>
    <widget name="element_2d1e038c_1f70_4cbe_8991_0305fb4b3058_id_portion_portion_79493e26_d897_49a0_8f75_d4e13768e34d_id_portion">
      <config type="Map">
        <Option name="nm-rel" value="element_2d1e038c_1f70_4cbe_8991_0305fb4b3058_id_segment_segment_bb2f5510_a1b1_44ff_b8f4_953e448d8a06_id_segment" type="QString"/>
      </config>
    </widget>
    <widget name="element_45b9ee55_4ba6_4126_b75c_a07df5f2e856_id_portion_portion_367b20eb_71df_4577_b82c_50df637836ba_id_portion">
      <config type="Map">
        <Option name="nm-rel" value="" type="QString"/>
      </config>
    </widget>
    <widget name="element_6d5dfa64_f66b_43b8_a321_0fdbb1ff6fc5_id_portion_portion_01930c65_209d_4240_91e8_8d913977bb8e_id_portion">
      <config type="Map">
        <Option name="nm-rel" value="" type="QString"/>
      </config>
    </widget>
    <widget name="element_87795107_6a41_4d89_b7a9_27020145c4c2_id_portion_portion_43c846b8_2e8c_4dbc_a286_7779b2dc6274_id_portion">
      <config type="Map">
        <Option name="nm-rel" value="" type="QString"/>
      </config>
    </widget>
    <widget name="element_87_id_portion_v_portion__id_portion">
      <config type="Map">
        <Option name="nm-rel" value="element_34_id_segment_segment__id_segment" type="QString"/>
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
    <widget name="etape_16996ead_334c_40f9_9ab8_32f6c1cfbd04_id_portion_portion_79493e26_d897_49a0_8f75_d4e13768e34d_id_portion">
      <config type="Map">
        <Option name="nm-rel" value="" type="QString"/>
      </config>
    </widget>
    <widget name="etape_7d2f_id_portion_v_portion__id_portion">
      <config type="Map">
        <Option name="nm-rel" value="" type="QString"/>
      </config>
    </widget>
    <widget name="etape_7d2fa857_5f19_42b8_ae43_c514540041db_id_portion_portion_43c846b8_2e8c_4dbc_a286_7779b2dc6274_id_portion">
      <config type="Map">
        <Option name="nm-rel" value="" type="QString"/>
      </config>
    </widget>
    <widget name="etape_89853236_c631_4e7e_897f_0123ec8e1c78_id_portion_portion_01930c65_209d_4240_91e8_8d913977bb8e_id_portion">
      <config type="Map">
        <Option name="nm-rel" value="" type="QString"/>
      </config>
    </widget>
    <widget name="etape_9a378a97_1e9f_455f_972e_02e7bc9efae0_id_portion_portion_6078641e_d0e3_4be8_96d3_831341a6ee37_id_portion">
      <config type="Map">
        <Option name="nm-rel" value="" type="QString"/>
      </config>
    </widget>
    <widget name="etape_a1ad917b_770b_4d52_9b2b_68e3840490a0_id_portion_portion_367b20eb_71df_4577_b82c_50df637836ba_id_portion">
      <config type="Map">
        <Option name="nm-rel" value="" type="QString"/>
      </config>
    </widget>
    <widget name="etape_bfc9de6e_3c03_405b_8ea9_5f7ac7410b40_id_portion_portion_097d5bb8_46a9_4b89_afcc_d25683ead4c5_id_portion">
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
