<!DOCTYPE qgis PUBLIC 'http://mrcc.com/qgis.dtd' 'SYSTEM'>
<qgis maxScale="0" version="3.10.10-A Coruña" hasScaleBasedVisibilityFlag="0" readOnly="0" minScale="1e+8" styleCategories="AllStyleCategories">
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
            <Option type="bool" value="false" name="IsMultiline"/>
            <Option type="bool" value="false" name="UseHtml"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="nom">
      <editWidget type="TextEdit">
        <config>
          <Option type="Map">
            <Option type="bool" value="false" name="IsMultiline"/>
            <Option type="bool" value="false" name="UseHtml"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="description">
      <editWidget type="TextEdit">
        <config>
          <Option type="Map">
            <Option type="bool" value="true" name="IsMultiline"/>
            <Option type="bool" value="false" name="UseHtml"/>
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
                <Option type="QString" value="ETP" name="Etape"/>
              </Option>
              <Option type="Map">
                <Option type="QString" value="VAR" name="Variante"/>
              </Option>
              <Option type="Map">
                <Option type="QString" value="PRV" name="Portion provisoire"/>
              </Option>
              <Option type="Map">
                <Option type="QString" value="OBS" name="Portion observée"/>
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
            <Option type="bool" value="false" name="IsMultiline"/>
            <Option type="bool" value="false" name="UseHtml"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="id_local">
      <editWidget type="TextEdit">
        <config>
          <Option type="Map">
            <Option type="bool" value="false" name="IsMultiline"/>
            <Option type="bool" value="false" name="UseHtml"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="mont_subv">
      <editWidget type="Range">
        <config>
          <Option type="Map">
            <Option type="bool" value="true" name="AllowNull"/>
            <Option type="double" value="2147483647" name="Max"/>
            <Option type="double" value="0" name="Min"/>
            <Option type="int" value="0" name="Precision"/>
            <Option type="double" value="1" name="Step"/>
            <Option type="QString" value="SpinBox" name="Style"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="annee_subv">
      <editWidget type="DateTime">
        <config>
          <Option type="Map">
            <Option type="bool" value="true" name="allow_null"/>
            <Option type="bool" value="false" name="calendar_popup"/>
            <Option type="QString" value="yyyy" name="display_format"/>
            <Option type="QString" value="yyyy" name="field_format"/>
            <Option type="bool" value="false" name="field_iso_format"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="convention">
      <editWidget type="UniqueValues">
        <config>
          <Option type="Map">
            <Option type="bool" value="true" name="Editable"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="type_pluriannuel">
      <editWidget type="UniqueValues">
        <config>
          <Option type="Map">
            <Option type="bool" value="true" name="Editable"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="elements">
      <editWidget type="Range">
        <config>
          <Option type="Map">
            <Option type="bool" value="true" name="AllowNull"/>
            <Option type="int" value="2147483647" name="Max"/>
            <Option type="int" value="-2147483648" name="Min"/>
            <Option type="int" value="0" name="Precision"/>
            <Option type="int" value="1" name="Step"/>
            <Option type="QString" value="SpinBox" name="Style"/>
          </Option>
        </config>
      </editWidget>
    </field>
  </fieldConfiguration>
  <aliases>
    <alias index="0" name="Identifiant" field="id_portion"/>
    <alias index="1" name="Nom" field="nom"/>
    <alias index="2" name="Description" field="description"/>
    <alias index="3" name="Type de portion" field="type_portion"/>
    <alias index="4" name="Id. ON3V" field="id_on3v"/>
    <alias index="5" name="Id. Local" field="id_local"/>
    <alias index="6" name="Montant Subvention" field="mont_subv"/>
    <alias index="7" name="Année de subvention" field="annee_subv"/>
    <alias index="8" name="Lien convention" field="convention"/>
    <alias index="9" name="Type pluriannuel" field="type_pluriannuel"/>
    <alias index="10" name="Nombre d'éléments" field="elements"/>
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
    <constraint unique_strength="2" notnull_strength="2" exp_strength="0" field="id_portion" constraints="3"/>
    <constraint unique_strength="0" notnull_strength="0" exp_strength="0" field="nom" constraints="0"/>
    <constraint unique_strength="0" notnull_strength="0" exp_strength="0" field="description" constraints="0"/>
    <constraint unique_strength="0" notnull_strength="1" exp_strength="0" field="type_portion" constraints="1"/>
    <constraint unique_strength="0" notnull_strength="0" exp_strength="0" field="id_on3v" constraints="0"/>
    <constraint unique_strength="0" notnull_strength="0" exp_strength="0" field="id_local" constraints="0"/>
    <constraint unique_strength="0" notnull_strength="0" exp_strength="0" field="mont_subv" constraints="0"/>
    <constraint unique_strength="0" notnull_strength="0" exp_strength="0" field="annee_subv" constraints="0"/>
    <constraint unique_strength="0" notnull_strength="0" exp_strength="0" field="convention" constraints="0"/>
    <constraint unique_strength="0" notnull_strength="0" exp_strength="0" field="type_pluriannuel" constraints="0"/>
    <constraint unique_strength="0" notnull_strength="0" exp_strength="0" field="elements" constraints="0"/>
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
    <constraint exp="" desc="" field="convention"/>
    <constraint exp="" desc="" field="type_pluriannuel"/>
    <constraint exp="" desc="" field="elements"/>
  </constraintExpressions>
  <expressionfields>
    <field subType="0" comment="" type="2" expression=" relation_aggregate( 'element_portion_segment', 'count', &quot;id_segment&quot;)" length="0" precision="0" typeName="integer" name="elements"/>
  </expressionfields>
  <attributeactions>
    <defaultAction value="{00000000-0000-0000-0000-000000000000}" key="Canvas"/>
    <actionsetting type="1" shortTitle="Ajouter des éléments de portion" isEnabledOnlyWhenEditable="0" notificationMessage="" icon="" name="Ajouter des éléments de portion à partir des segments sélectionnés" capture="0" action="from qgis.utils import plugins&#xa;plugins['veloroutes_voies_vertes'].run_action('update_selected_feature', [%id_portion%], [% '\''||@layer_name||'\'' %] , 'add')" id="{385979da-edd2-459f-b034-ab82c048d849}">
      <actionScope id="Feature"/>
    </actionsetting>
    <actionsetting type="1" shortTitle="Suppression d'éléments de portion" isEnabledOnlyWhenEditable="0" notificationMessage="" icon="" name="Suppression d'éléments de portion à partir des segments sélectionnés" capture="0" action="from qgis.utils import plugins&#xa;plugins['veloroutes_voies_vertes'].run_action('update_selected_feature', [%id_portion%], [% '\''||@layer_name||'\'' %] , 'del')" id="{80dd32d4-ab60-464b-890b-9b62fec0b3ba}">
      <actionScope id="Feature"/>
    </actionsetting>
  </attributeactions>
  <attributetableconfig sortExpression="&quot;elements&quot;" actionWidgetStyle="dropDown" sortOrder="0">
    <columns>
      <column type="field" name="id_portion" width="95" hidden="0"/>
      <column type="field" name="nom" width="224" hidden="0"/>
      <column type="field" name="description" width="301" hidden="0"/>
      <column type="field" name="type_portion" width="-1" hidden="0"/>
      <column type="field" name="id_on3v" width="-1" hidden="0"/>
      <column type="field" name="id_local" width="-1" hidden="0"/>
      <column type="field" name="mont_subv" width="-1" hidden="0"/>
      <column type="field" name="annee_subv" width="-1" hidden="0"/>
      <column type="field" name="elements" width="-1" hidden="0"/>
      <column type="actions" width="308" hidden="0"/>
      <column type="field" name="convention" width="-1" hidden="0"/>
      <column type="field" name="type_pluriannuel" width="-1" hidden="0"/>
    </columns>
  </attributetableconfig>
  <conditionalstyles>
    <rowstyles>
      <style background_color_alpha="255" rule="&quot;elements&quot; = 0" background_color="#fb9a99" name="portion vide">
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
    <attributeEditorField index="0" showLabel="1" name="id_portion"/>
    <attributeEditorContainer groupBox="0" columnCount="1" showLabel="1" name="Informations" visibilityExpression="" visibilityExpressionEnabled="0">
      <attributeEditorContainer groupBox="1" columnCount="1" showLabel="1" name="Covadis" visibilityExpression="" visibilityExpressionEnabled="0">
        <attributeEditorField index="5" showLabel="1" name="id_local"/>
        <attributeEditorField index="4" showLabel="1" name="id_on3v"/>
        <attributeEditorField index="1" showLabel="1" name="nom"/>
        <attributeEditorField index="3" showLabel="1" name="type_portion"/>
        <attributeEditorField index="2" showLabel="1" name="description"/>
      </attributeEditorContainer>
      <attributeEditorContainer groupBox="1" columnCount="1" showLabel="1" name="Subvention" visibilityExpression="" visibilityExpressionEnabled="0">
        <attributeEditorField index="9" showLabel="1" name="type_pluriannuel"/>
        <attributeEditorField index="8" showLabel="1" name="convention"/>
        <attributeEditorField index="7" showLabel="1" name="annee_subv"/>
        <attributeEditorField index="6" showLabel="1" name="mont_subv"/>
      </attributeEditorContainer>
    </attributeEditorContainer>
    <attributeEditorContainer groupBox="0" columnCount="1" showLabel="1" name="Segments" visibilityExpression="" visibilityExpressionEnabled="0">
      <attributeEditorField index="10" showLabel="1" name="elements"/>
      <attributeEditorRelation showLinkButton="1" showLabel="1" name="element_2d1e038c_1f70_4cbe_8991_0305fb4b3058_id_portion_portion_79493e26_d897_49a0_8f75_d4e13768e34d_id_portion" showUnlinkButton="1" relation="element_2d1e038c_1f70_4cbe_8991_0305fb4b3058_id_portion_portion_79493e26_d897_49a0_8f75_d4e13768e34d_id_portion"/>
    </attributeEditorContainer>
    <attributeEditorContainer groupBox="0" columnCount="1" showLabel="1" name="Étapes" visibilityExpression="" visibilityExpressionEnabled="0">
      <attributeEditorRelation showLinkButton="1" showLabel="1" name="etape_16996ead_334c_40f9_9ab8_32f6c1cfbd04_id_portion_portion_79493e26_d897_49a0_8f75_d4e13768e34d_id_portion" showUnlinkButton="1" relation="etape_16996ead_334c_40f9_9ab8_32f6c1cfbd04_id_portion_portion_79493e26_d897_49a0_8f75_d4e13768e34d_id_portion"/>
    </attributeEditorContainer>
  </attributeEditorForm>
  <editable>
    <field editable="1" name="annee_subv"/>
    <field editable="1" name="convention"/>
    <field editable="1" name="description"/>
    <field editable="0" name="elements"/>
    <field editable="1" name="id_local"/>
    <field editable="1" name="id_on3v"/>
    <field editable="0" name="id_portion"/>
    <field editable="0" name="longueur"/>
    <field editable="1" name="mont_subv"/>
    <field editable="1" name="nom"/>
    <field editable="1" name="type_pluriannuel"/>
    <field editable="1" name="type_portion"/>
  </editable>
  <labelOnTop>
    <field labelOnTop="0" name="annee_subv"/>
    <field labelOnTop="0" name="convention"/>
    <field labelOnTop="0" name="description"/>
    <field labelOnTop="0" name="elements"/>
    <field labelOnTop="0" name="id_local"/>
    <field labelOnTop="0" name="id_on3v"/>
    <field labelOnTop="0" name="id_portion"/>
    <field labelOnTop="0" name="longueur"/>
    <field labelOnTop="0" name="mont_subv"/>
    <field labelOnTop="0" name="nom"/>
    <field labelOnTop="0" name="type_pluriannuel"/>
    <field labelOnTop="0" name="type_portion"/>
  </labelOnTop>
  <widgets>
    <widget name="element_187bfb9d_67f5_4058_8133_4c3aab650a47_id_portion_portion_097d5bb8_46a9_4b89_afcc_d25683ead4c5_id_portion">
      <config type="Map">
        <Option type="QString" value="" name="nm-rel"/>
      </config>
    </widget>
    <widget name="element_2d1e038c_1f70_4cbe_8991_0305fb4b3058_id_portion_portion_79493e26_d897_49a0_8f75_d4e13768e34d_id_portion">
      <config type="Map">
        <Option type="QString" value="element_2d1e038c_1f70_4cbe_8991_0305fb4b3058_id_segment_segment_bb2f5510_a1b1_44ff_b8f4_953e448d8a06_id_segment" name="nm-rel"/>
      </config>
    </widget>
    <widget name="element_45b9ee55_4ba6_4126_b75c_a07df5f2e856_id_portion_portion_367b20eb_71df_4577_b82c_50df637836ba_id_portion">
      <config type="Map">
        <Option type="QString" value="" name="nm-rel"/>
      </config>
    </widget>
    <widget name="element_87795107_6a41_4d89_b7a9_27020145c4c2_id_portion_portion_43c846b8_2e8c_4dbc_a286_7779b2dc6274_id_portion">
      <config type="Map">
        <Option type="QString" value="" name="nm-rel"/>
      </config>
    </widget>
    <widget name="element_87_id_portion_v_portion__id_portion">
      <config type="Map">
        <Option type="QString" value="element_34_id_segment_segment__id_segment" name="nm-rel"/>
      </config>
    </widget>
    <widget name="element_9448090b_c4ec_49b1_81c1_c622817d5aac_id_portion_portion_8b4d47a9_fcca_4e53_8b4e_cd6aa677ad13_id_portion">
      <config type="Map">
        <Option type="QString" value="element_34_id_segment_segment__id_segment" name="nm-rel"/>
      </config>
    </widget>
    <widget name="element_d645199c_2ad4_4c2c_afff_a94e74912f09_id_portion_portion_6078641e_d0e3_4be8_96d3_831341a6ee37_id_portion">
      <config type="Map">
        <Option type="QString" value="" name="nm-rel"/>
      </config>
    </widget>
    <widget name="etape_008e0743_3f06_431d_afbb_0c8da7d8e66f_id_portion_portion_8b4d47a9_fcca_4e53_8b4e_cd6aa677ad13_id_portion">
      <config type="Map">
        <Option type="QString" value="etape_008e0743_3f06_431d_afbb_0c8da7d8e66f_id_itineraire_itineraire_37f151ab_0ac8_4003_b653_f83e948fd3f8_id_itineraire" name="nm-rel"/>
      </config>
    </widget>
    <widget name="etape_16996ead_334c_40f9_9ab8_32f6c1cfbd04_id_portion_portion_79493e26_d897_49a0_8f75_d4e13768e34d_id_portion">
      <config type="Map">
        <Option type="QString" value="" name="nm-rel"/>
      </config>
    </widget>
    <widget name="etape_7d2f_id_portion_v_portion__id_portion">
      <config type="Map">
        <Option type="QString" value="" name="nm-rel"/>
      </config>
    </widget>
    <widget name="etape_7d2fa857_5f19_42b8_ae43_c514540041db_id_portion_portion_43c846b8_2e8c_4dbc_a286_7779b2dc6274_id_portion">
      <config type="Map">
        <Option type="QString" value="" name="nm-rel"/>
      </config>
    </widget>
    <widget name="etape_9a378a97_1e9f_455f_972e_02e7bc9efae0_id_portion_portion_6078641e_d0e3_4be8_96d3_831341a6ee37_id_portion">
      <config type="Map">
        <Option type="QString" value="" name="nm-rel"/>
      </config>
    </widget>
    <widget name="etape_a1ad917b_770b_4d52_9b2b_68e3840490a0_id_portion_portion_367b20eb_71df_4577_b82c_50df637836ba_id_portion">
      <config type="Map">
        <Option type="QString" value="" name="nm-rel"/>
      </config>
    </widget>
    <widget name="etape_bfc9de6e_3c03_405b_8ea9_5f7ac7410b40_id_portion_portion_097d5bb8_46a9_4b89_afcc_d25683ead4c5_id_portion">
      <config type="Map">
        <Option type="QString" value="" name="nm-rel"/>
      </config>
    </widget>
    <widget name="v_portion__id_portion_portion_43_id_portion">
      <config type="Map">
        <Option type="QString" value="" name="nm-rel"/>
      </config>
    </widget>
    <widget name="v_portion__id_portion_portion_43_id_portion_1">
      <config type="Map">
        <Option type="QString" value="" name="nm-rel"/>
      </config>
    </widget>
    <widget name="virtual_la_id_portion_portion_43_id_portion">
      <config type="Map">
        <Option type="QString" value="" name="nm-rel"/>
      </config>
    </widget>
  </widgets>
  <previewExpression>"id_portion"</previewExpression>
  <mapTip></mapTip>
  <layerGeometryType>4</layerGeometryType>
</qgis>
