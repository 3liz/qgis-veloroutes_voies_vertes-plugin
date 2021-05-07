<!DOCTYPE qgis PUBLIC 'http://mrcc.com/qgis.dtd' 'SYSTEM'>
<qgis hasScaleBasedVisibilityFlag="0" styleCategories="AllStyleCategories" minScale="1e+8" version="3.10.14-A Coruña" maxScale="0" readOnly="0">
  <flags>
    <Identifiable>1</Identifiable>
    <Removable>1</Removable>
    <Searchable>1</Searchable>
  </flags>
  <customproperties>
    <property value="&quot;numero&quot;" key="dualview/previewExpressions"/>
    <property value="0" key="embeddedWidgets/count"/>
    <property key="variableNames"/>
    <property key="variableValues"/>
  </customproperties>
  <geometryOptions geometryPrecision="0" removeDuplicateNodes="0">
    <activeChecks/>
    <checkConfiguration/>
  </geometryOptions>
  <fieldConfiguration>
    <field name="numero">
      <editWidget type="UniqueValues">
        <config>
          <Option type="Map">
            <Option name="Editable" value="true" type="bool"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="nom_officiel">
      <editWidget type="UniqueValues">
        <config>
          <Option type="Map">
            <Option name="Editable" value="true" type="bool"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="nom_usage">
      <editWidget type="UniqueValues">
        <config>
          <Option type="Map">
            <Option name="Editable" value="true" type="bool"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="depart">
      <editWidget type="UniqueValues">
        <config>
          <Option type="Map">
            <Option name="Editable" value="true" type="bool"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="arrivee">
      <editWidget type="UniqueValues">
        <config>
          <Option type="Map">
            <Option name="Editable" value="true" type="bool"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="id_itineraire">
      <editWidget type="TextEdit">
        <config>
          <Option type="Map">
            <Option name="IsMultiline" value="false" type="bool"/>
            <Option name="UseHtml" value="false" type="bool"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="annee_inscription">
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
    <field name="site_web">
      <editWidget type="TextEdit">
        <config>
          <Option type="Map">
            <Option name="IsMultiline" value="false" type="bool"/>
            <Option name="UseHtml" value="false" type="bool"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="annee_ouverture">
      <editWidget type="DateTime">
        <config>
          <Option type="Map">
            <Option name="allow_null" value="false" type="bool"/>
            <Option name="calendar_popup" value="true" type="bool"/>
            <Option name="display_format" value="yyyy" type="QString"/>
            <Option name="field_format" value="yyyy" type="QString"/>
            <Option name="field_iso_format" value="false" type="bool"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="niveau_schema">
      <editWidget type="ValueMap">
        <config>
          <Option type="Map">
            <Option name="map" type="List">
              <Option type="Map">
                <Option name="Départemental" value="DEP" type="QString"/>
              </Option>
              <Option type="Map">
                <Option name="Régional" value="REG" type="QString"/>
              </Option>
              <Option type="Map">
                <Option name="National" value="NAT" type="QString"/>
              </Option>
              <Option type="Map">
                <Option name="Européen" value="EUR" type="QString"/>
              </Option>
              <Option type="Map">
                <Option name="Non précisé" value="{2839923C-8B7D-419E-B84B-CA2FE9B80EC7}" type="QString"/>
              </Option>
            </Option>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="est_inscrit">
      <editWidget type="ValueMap">
        <config>
          <Option type="Map">
            <Option name="map" type="List">
              <Option type="Map">
                <Option name="Oui" value="T" type="QString"/>
              </Option>
              <Option type="Map">
                <Option name="Non" value="F" type="QString"/>
              </Option>
              <Option type="Map">
                <Option name="Ne sais pas" value="N" type="QString"/>
              </Option>
              <Option type="Map">
                <Option name="Non précisée" value="{2839923C-8B7D-419E-B84B-CA2FE9B80EC7}" type="QString"/>
              </Option>
            </Option>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="etapes">
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
    <alias field="numero" name="Numéro" index="0"/>
    <alias field="nom_officiel" name="Nom officiel" index="1"/>
    <alias field="nom_usage" name="Nom d'usage" index="2"/>
    <alias field="depart" name="Départ" index="3"/>
    <alias field="arrivee" name="Arrivée" index="4"/>
    <alias field="id_itineraire" name="Identifiant" index="5"/>
    <alias field="annee_inscription" name="Année d'inscription" index="6"/>
    <alias field="site_web" name="Site internet" index="7"/>
    <alias field="annee_ouverture" name="Année d'ouverture" index="8"/>
    <alias field="niveau_schema" name="Niveau administratif" index="9"/>
    <alias field="est_inscrit" name="Est inscrit à un schéma" index="10"/>
    <alias field="etapes" name="Nombre d'étapes" index="11"/>
  </aliases>
  <excludeAttributesWMS/>
  <excludeAttributesWFS/>
  <defaults>
    <default expression="" field="numero" applyOnUpdate="0"/>
    <default expression="" field="nom_officiel" applyOnUpdate="0"/>
    <default expression="" field="nom_usage" applyOnUpdate="0"/>
    <default expression="" field="depart" applyOnUpdate="0"/>
    <default expression="" field="arrivee" applyOnUpdate="0"/>
    <default expression="" field="id_itineraire" applyOnUpdate="0"/>
    <default expression="" field="annee_inscription" applyOnUpdate="0"/>
    <default expression="" field="site_web" applyOnUpdate="0"/>
    <default expression="" field="annee_ouverture" applyOnUpdate="0"/>
    <default expression="NULL" field="niveau_schema" applyOnUpdate="0"/>
    <default expression="" field="est_inscrit" applyOnUpdate="0"/>
    <default expression="" field="etapes" applyOnUpdate="0"/>
  </defaults>
  <constraints>
    <constraint field="numero" notnull_strength="1" exp_strength="0" unique_strength="0" constraints="1"/>
    <constraint field="nom_officiel" notnull_strength="0" exp_strength="0" unique_strength="0" constraints="0"/>
    <constraint field="nom_usage" notnull_strength="0" exp_strength="0" unique_strength="0" constraints="0"/>
    <constraint field="depart" notnull_strength="0" exp_strength="0" unique_strength="0" constraints="0"/>
    <constraint field="arrivee" notnull_strength="0" exp_strength="0" unique_strength="0" constraints="0"/>
    <constraint field="id_itineraire" notnull_strength="2" exp_strength="0" unique_strength="2" constraints="3"/>
    <constraint field="annee_inscription" notnull_strength="0" exp_strength="0" unique_strength="0" constraints="0"/>
    <constraint field="site_web" notnull_strength="0" exp_strength="2" unique_strength="0" constraints="4"/>
    <constraint field="annee_ouverture" notnull_strength="0" exp_strength="0" unique_strength="0" constraints="0"/>
    <constraint field="niveau_schema" notnull_strength="0" exp_strength="0" unique_strength="0" constraints="0"/>
    <constraint field="est_inscrit" notnull_strength="0" exp_strength="0" unique_strength="0" constraints="0"/>
    <constraint field="etapes" notnull_strength="0" exp_strength="0" unique_strength="0" constraints="0"/>
  </constraints>
  <constraintExpressions>
    <constraint field="numero" desc="" exp=""/>
    <constraint field="nom_officiel" desc="" exp=""/>
    <constraint field="nom_usage" desc="" exp=""/>
    <constraint field="depart" desc="" exp=""/>
    <constraint field="arrivee" desc="" exp=""/>
    <constraint field="id_itineraire" desc="" exp=""/>
    <constraint field="annee_inscription" desc="" exp=""/>
    <constraint field="site_web" desc="" exp="CASE WHEN &quot;site_web&quot; IS NOT NULL THEN regexp_match(&quot;site_web&quot;, '^(?:http(s)?:\\/\\/)?[\\w.-]+(?:\\.[\\w\\.-]+)+[\\w\\-\\._~:/?#[\\]@!\\$&amp;''\\(\\)\\*\\+,;=.]+$') ELSE TRUE END"/>
    <constraint field="annee_ouverture" desc="" exp=""/>
    <constraint field="niveau_schema" desc="" exp=""/>
    <constraint field="est_inscrit" desc="" exp=""/>
    <constraint field="etapes" desc="" exp=""/>
  </constraintExpressions>
  <expressionfields>
    <field typeName="integer" expression=" relation_aggregate( 'etape_itineraire_portion', 'count', &quot;id_portion&quot;)" comment="" name="etapes" type="2" length="0" subType="0" precision="0"/>
  </expressionfields>
  <attributeactions>
    <defaultAction value="{00000000-0000-0000-0000-000000000000}" key="Canvas"/>
    <actionsetting capture="0" icon="" id="{613015f6-c2d7-4cd4-ab89-89c2a63fd557}" name="Suppression d'étape sur un itinéraire à partir de portions sélectionnées " action="from qgis.utils import plugins&#xa;plugins['veloroutes_voies_vertes'].run_action('update_selected_feature', [%id_itineraire%],[% '\''||@layer_name||'\'' %], 'del')" shortTitle="Suppression d'étape" type="1" notificationMessage="" isEnabledOnlyWhenEditable="0">
      <actionScope id="Feature"/>
      <actionScope id="Canvas"/>
    </actionsetting>
    <actionsetting capture="0" icon="" id="{f1dd738e-3484-4392-80e0-16f2fd14cb4a}" name="Ajouter des étapes à partir de portions sélectionnées" action="from qgis.utils import plugins&#xa;plugins['veloroutes_voies_vertes'].run_action('update_selected_feature', [%id_itineraire%], [% '\''||@layer_name||'\'' %] ,'add')" shortTitle="Ajouter des étapes" type="1" notificationMessage="" isEnabledOnlyWhenEditable="0">
      <actionScope id="Feature"/>
      <actionScope id="Canvas"/>
    </actionsetting>
  </attributeactions>
  <attributetableconfig actionWidgetStyle="dropDown" sortOrder="0" sortExpression="&quot;etapes&quot;">
    <columns>
      <column hidden="0" name="id_itineraire" type="field" width="-1"/>
      <column hidden="0" name="numero" type="field" width="-1"/>
      <column hidden="0" name="nom_officiel" type="field" width="-1"/>
      <column hidden="0" name="nom_usage" type="field" width="-1"/>
      <column hidden="0" name="depart" type="field" width="-1"/>
      <column hidden="0" name="arrivee" type="field" width="-1"/>
      <column hidden="0" name="annee_inscription" type="field" width="-1"/>
      <column hidden="0" name="site_web" type="field" width="-1"/>
      <column hidden="0" name="annee_ouverture" type="field" width="-1"/>
      <column hidden="0" name="niveau_schema" type="field" width="-1"/>
      <column hidden="0" name="est_inscrit" type="field" width="-1"/>
      <column hidden="0" name="etapes" type="field" width="84"/>
      <column hidden="0" type="actions" width="-1"/>
    </columns>
  </attributetableconfig>
  <conditionalstyles>
    <rowstyles>
      <style name="Itinéraire vide" background_color_alpha="255" rule="&quot;etapes&quot; = 0" background_color="#fb9a99">
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
    <attributeEditorField showLabel="1" name="id_itineraire" index="5"/>
    <attributeEditorContainer showLabel="1" name="Informations" visibilityExpression="" groupBox="0" visibilityExpressionEnabled="0" columnCount="1">
      <attributeEditorField showLabel="1" name="numero" index="0"/>
      <attributeEditorField showLabel="1" name="nom_officiel" index="1"/>
      <attributeEditorField showLabel="1" name="nom_usage" index="2"/>
      <attributeEditorField showLabel="1" name="depart" index="3"/>
      <attributeEditorField showLabel="1" name="arrivee" index="4"/>
      <attributeEditorField showLabel="1" name="niveau_schema" index="9"/>
      <attributeEditorField showLabel="1" name="site_web" index="7"/>
      <attributeEditorField showLabel="1" name="annee_ouverture" index="8"/>
      <attributeEditorField showLabel="1" name="est_inscrit" index="10"/>
      <attributeEditorField showLabel="1" name="annee_inscription" index="6"/>
    </attributeEditorContainer>
    <attributeEditorContainer showLabel="1" name="Étapes" visibilityExpression="" groupBox="0" visibilityExpressionEnabled="0" columnCount="1">
      <attributeEditorField showLabel="1" name="etapes" index="11"/>
      <attributeEditorRelation showLabel="1" showUnlinkButton="1" name="" showLinkButton="1" relation=""/>
    </attributeEditorContainer>
  </attributeEditorForm>
  <editable>
    <field name="annee_inscription" editable="1"/>
    <field name="annee_ouverture" editable="1"/>
    <field name="annee_subv" editable="1"/>
    <field name="arrivee" editable="1"/>
    <field name="depart" editable="1"/>
    <field name="est_inscrit" editable="1"/>
    <field name="etapes" editable="0"/>
    <field name="id_iti" editable="0"/>
    <field name="id_itineraire" editable="0"/>
    <field name="longueur" editable="1"/>
    <field name="mont_subv" editable="1"/>
    <field name="niveau_schema" editable="1"/>
    <field name="nom_officiel" editable="1"/>
    <field name="nom_usage" editable="1"/>
    <field name="numero" editable="1"/>
    <field name="site_web" editable="1"/>
    <field name="type_pluriannuel" editable="1"/>
  </editable>
  <labelOnTop>
    <field name="annee_inscription" labelOnTop="0"/>
    <field name="annee_ouverture" labelOnTop="0"/>
    <field name="annee_subv" labelOnTop="0"/>
    <field name="arrivee" labelOnTop="0"/>
    <field name="depart" labelOnTop="0"/>
    <field name="est_inscrit" labelOnTop="0"/>
    <field name="etapes" labelOnTop="0"/>
    <field name="id_iti" labelOnTop="0"/>
    <field name="id_itineraire" labelOnTop="0"/>
    <field name="longueur" labelOnTop="0"/>
    <field name="mont_subv" labelOnTop="0"/>
    <field name="niveau_schema" labelOnTop="0"/>
    <field name="nom_officiel" labelOnTop="0"/>
    <field name="nom_usage" labelOnTop="0"/>
    <field name="numero" labelOnTop="0"/>
    <field name="site_web" labelOnTop="0"/>
    <field name="type_pluriannuel" labelOnTop="0"/>
  </labelOnTop>
  <widgets>
    <widget name="etape_008e0743_3f06_431d_afbb_0c8da7d8e66f_id_itineraire_itineraire_37f151ab_0ac8_4003_b653_f83e948fd3f8_id_itineraire">
      <config type="Map">
        <Option name="nm-rel" value="etape_008e0743_3f06_431d_afbb_0c8da7d8e66f_id_portion_portion_8b4d47a9_fcca_4e53_8b4e_cd6aa677ad13_id_portion" type="QString"/>
      </config>
    </widget>
    <widget name="etape_16996ead_334c_40f9_9ab8_32f6c1cfbd04_id_itineraire_itineraire_f196ffc9_3afa_4821_997e_689c44e2df18_id_itineraire">
      <config type="Map">
        <Option name="nm-rel" value="" type="QString"/>
      </config>
    </widget>
    <widget name="etape_5cf240ae_720f_4cc7_833c_e9352114f713_id_itineraire_itineraire_f3449530_e5bc_423d_a6a5_46186976bbec_id_itineraire">
      <config type="Map">
        <Option name="nm-rel" value="" type="QString"/>
      </config>
    </widget>
    <widget name="etape_6a0e5c72_95ba_4012_8a51_77f727a0c755_id_itineraire_itineraire_1bcf6d5d_e7e4_493e_89a3_45ebef699aea_id_iti">
      <config type="Map">
        <Option name="nm-rel" value="" type="QString"/>
      </config>
    </widget>
    <widget name="etape_7d2f_id_itineraire_v_itinerai_id_iti">
      <config type="Map">
        <Option name="nm-rel" value="" type="QString"/>
      </config>
    </widget>
    <widget name="etape_7d2f_id_itineraire_v_itinerai_id_itineraire">
      <config type="Map">
        <Option name="nm-rel" value="" type="QString"/>
      </config>
    </widget>
    <widget name="etape_7d2fa857_5f19_42b8_ae43_c514540041db_id_itineraire_itineraire_c47affa8_3ced_43b5_b85b_cb009c7b432a_id_iti">
      <config type="Map">
        <Option name="nm-rel" value="" type="QString"/>
      </config>
    </widget>
    <widget name="etape_89853236_c631_4e7e_897f_0123ec8e1c78_id_itineraire_itineraire_cb3e435a_54c9_477f_aa8b_13a121ad9ba4_id_itineraire">
      <config type="Map">
        <Option name="nm-rel" value="" type="QString"/>
      </config>
    </widget>
    <widget name="etape_9a378a97_1e9f_455f_972e_02e7bc9efae0_id_itineraire_itineraire_6d73d1d4_22e7_434a_8911_95df835869cd_id_itineraire">
      <config type="Map">
        <Option name="nm-rel" value="" type="QString"/>
      </config>
    </widget>
    <widget name="etape_a1ad917b_770b_4d52_9b2b_68e3840490a0_id_itineraire_itineraire_2d2a1f44_fd42_4393_ae1c_1c3cbff194dd_id_itineraire">
      <config type="Map">
        <Option name="nm-rel" value="" type="QString"/>
      </config>
    </widget>
    <widget name="etape_bfc9de6e_3c03_405b_8ea9_5f7ac7410b40_id_itineraire_itineraire_eb402d9f_d768_4aa8_81e8_c6c899065aad_id_itineraire">
      <config type="Map">
        <Option name="nm-rel" value="" type="QString"/>
      </config>
    </widget>
  </widgets>
  <previewExpression>"numero"</previewExpression>
  <mapTip></mapTip>
  <layerGeometryType>4</layerGeometryType>
</qgis>
