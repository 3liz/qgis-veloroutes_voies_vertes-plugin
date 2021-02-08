<!DOCTYPE qgis PUBLIC 'http://mrcc.com/qgis.dtd' 'SYSTEM'>
<qgis maxScale="0" minScale="1e+8" styleCategories="AllStyleCategories" hasScaleBasedVisibilityFlag="0" version="3.10.14-A Coruña" readOnly="0">
  <flags>
    <Identifiable>1</Identifiable>
    <Removable>1</Removable>
    <Searchable>1</Searchable>
  </flags>
  <customproperties>
    <property key="dualview/previewExpressions" value="&quot;numero&quot;"/>
    <property key="embeddedWidgets/count" value="0"/>
    <property key="variableNames"/>
    <property key="variableValues"/>
  </customproperties>
  <geometryOptions removeDuplicateNodes="0" geometryPrecision="0">
    <activeChecks/>
    <checkConfiguration/>
  </geometryOptions>
  <fieldConfiguration>
    <field name="numero">
      <editWidget type="TextEdit">
        <config>
          <Option type="Map">
            <Option type="bool" name="IsMultiline" value="false"/>
            <Option type="bool" name="UseHtml" value="false"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="nom_officiel">
      <editWidget type="TextEdit">
        <config>
          <Option type="Map">
            <Option type="bool" name="IsMultiline" value="false"/>
            <Option type="bool" name="UseHtml" value="false"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="nom_usage">
      <editWidget type="TextEdit">
        <config>
          <Option type="Map">
            <Option type="bool" name="IsMultiline" value="false"/>
            <Option type="bool" name="UseHtml" value="false"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="depart">
      <editWidget type="TextEdit">
        <config>
          <Option type="Map">
            <Option type="bool" name="IsMultiline" value="false"/>
            <Option type="bool" name="UseHtml" value="false"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="arrivee">
      <editWidget type="TextEdit">
        <config>
          <Option type="Map">
            <Option type="bool" name="IsMultiline" value="false"/>
            <Option type="bool" name="UseHtml" value="false"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="id_itineraire">
      <editWidget type="TextEdit">
        <config>
          <Option type="Map">
            <Option type="bool" name="IsMultiline" value="false"/>
            <Option type="bool" name="UseHtml" value="false"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="annee_inscription">
      <editWidget type="DateTime">
        <config>
          <Option type="Map">
            <Option type="bool" name="allow_null" value="true"/>
            <Option type="bool" name="calendar_popup" value="false"/>
            <Option type="QString" name="display_format" value="yyyy"/>
            <Option type="QString" name="field_format" value="yyyy"/>
            <Option type="bool" name="field_iso_format" value="false"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="site_web">
      <editWidget type="TextEdit">
        <config>
          <Option type="Map">
            <Option type="bool" name="IsMultiline" value="false"/>
            <Option type="bool" name="UseHtml" value="false"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="annee_ouverture">
      <editWidget type="DateTime">
        <config>
          <Option type="Map">
            <Option type="bool" name="allow_null" value="false"/>
            <Option type="bool" name="calendar_popup" value="true"/>
            <Option type="QString" name="display_format" value="yyyy"/>
            <Option type="QString" name="field_format" value="yyyy"/>
            <Option type="bool" name="field_iso_format" value="false"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="niveau_schema">
      <editWidget type="ValueMap">
        <config>
          <Option type="Map">
            <Option type="List" name="map">
              <Option type="Map">
                <Option type="QString" name="Départemental" value="DEP"/>
              </Option>
              <Option type="Map">
                <Option type="QString" name="Régional" value="REG"/>
              </Option>
              <Option type="Map">
                <Option type="QString" name="National" value="NAT"/>
              </Option>
              <Option type="Map">
                <Option type="QString" name="Européen" value="EUR"/>
              </Option>
              <Option type="Map">
                <Option type="QString" name="Non précisé" value="{2839923C-8B7D-419E-B84B-CA2FE9B80EC7}"/>
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
            <Option type="List" name="map">
              <Option type="Map">
                <Option type="QString" name="Oui" value="T"/>
              </Option>
              <Option type="Map">
                <Option type="QString" name="Non" value="F"/>
              </Option>
              <Option type="Map">
                <Option type="QString" name="Ne sais pas" value="N"/>
              </Option>
              <Option type="Map">
                <Option type="QString" name="Non précisée" value="{2839923C-8B7D-419E-B84B-CA2FE9B80EC7}"/>
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
  </fieldConfiguration>
  <aliases>
    <alias index="0" name="Numéro" field="numero"/>
    <alias index="1" name="Nom officiel" field="nom_officiel"/>
    <alias index="2" name="Nom d'usage" field="nom_usage"/>
    <alias index="3" name="Départ" field="depart"/>
    <alias index="4" name="Arrivée" field="arrivee"/>
    <alias index="5" name="Identifiant" field="id_itineraire"/>
    <alias index="6" name="Année d'inscription" field="annee_inscription"/>
    <alias index="7" name="Site internet" field="site_web"/>
    <alias index="8" name="Année d'ouverture" field="annee_ouverture"/>
    <alias index="9" name="Niveau administratif" field="niveau_schema"/>
    <alias index="10" name="Est inscrit à un schéma" field="est_inscrit"/>
    <alias index="11" name="Nombre d'étapes" field="etapes"/>
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
    <constraint notnull_strength="1" exp_strength="0" constraints="1" field="numero" unique_strength="0"/>
    <constraint notnull_strength="0" exp_strength="0" constraints="0" field="nom_officiel" unique_strength="0"/>
    <constraint notnull_strength="0" exp_strength="0" constraints="0" field="nom_usage" unique_strength="0"/>
    <constraint notnull_strength="0" exp_strength="0" constraints="0" field="depart" unique_strength="0"/>
    <constraint notnull_strength="0" exp_strength="0" constraints="0" field="arrivee" unique_strength="0"/>
    <constraint notnull_strength="2" exp_strength="0" constraints="3" field="id_itineraire" unique_strength="2"/>
    <constraint notnull_strength="0" exp_strength="0" constraints="0" field="annee_inscription" unique_strength="0"/>
    <constraint notnull_strength="0" exp_strength="2" constraints="4" field="site_web" unique_strength="0"/>
    <constraint notnull_strength="0" exp_strength="0" constraints="0" field="annee_ouverture" unique_strength="0"/>
    <constraint notnull_strength="0" exp_strength="0" constraints="0" field="niveau_schema" unique_strength="0"/>
    <constraint notnull_strength="0" exp_strength="0" constraints="0" field="est_inscrit" unique_strength="0"/>
    <constraint notnull_strength="0" exp_strength="0" constraints="0" field="etapes" unique_strength="0"/>
  </constraints>
  <constraintExpressions>
    <constraint desc="" exp="" field="numero"/>
    <constraint desc="" exp="" field="nom_officiel"/>
    <constraint desc="" exp="" field="nom_usage"/>
    <constraint desc="" exp="" field="depart"/>
    <constraint desc="" exp="" field="arrivee"/>
    <constraint desc="" exp="" field="id_itineraire"/>
    <constraint desc="" exp="" field="annee_inscription"/>
    <constraint desc="" exp="CASE WHEN &quot;site_web&quot; IS NOT NULL THEN regexp_match(&quot;site_web&quot;, '^(?:http(s)?:\\/\\/)?[\\w.-]+(?:\\.[\\w\\.-]+)+[\\w\\-\\._~:/?#[\\]@!\\$&amp;''\\(\\)\\*\\+,;=.]+$') ELSE TRUE END" field="site_web"/>
    <constraint desc="" exp="" field="annee_ouverture"/>
    <constraint desc="" exp="" field="niveau_schema"/>
    <constraint desc="" exp="" field="est_inscrit"/>
    <constraint desc="" exp="" field="etapes"/>
  </constraintExpressions>
  <expressionfields>
    <field type="2" comment="" typeName="integer" name="etapes" subType="0" expression=" relation_aggregate( 'etape_itineraire_portion', 'count', &quot;id_portion&quot;)" precision="0" length="0"/>
  </expressionfields>
  <attributeactions>
    <defaultAction key="Canvas" value="{00000000-0000-0000-0000-000000000000}"/>
    <actionsetting type="1" shortTitle="Suppression d'étape" icon="" capture="0" id="{4faa5b8b-3642-4b24-9a39-141bd425be29}" name="Suppression d'étape sur un itinéraire à partir de portions sélectionnées " notificationMessage="" action="from qgis.utils import plugins&#xa;plugins['veloroutes_voies_vertes'].run_action('update_selected_feature', [%id_itineraire%],[% '\''||@layer_name||'\'' %], 'del')" isEnabledOnlyWhenEditable="0">
      <actionScope id="Canvas"/>
      <actionScope id="Feature"/>
    </actionsetting>
    <actionsetting type="1" shortTitle="Ajouter des étapes" icon="" capture="0" id="{1348e215-2a5d-4d63-b118-1ae7b0e76c9e}" name="Ajouter des étapes à partir de portions sélectionnées" notificationMessage="" action="from qgis.utils import plugins&#xa;plugins['veloroutes_voies_vertes'].run_action('update_selected_feature', [%id_itineraire%], [% '\''||@layer_name||'\'' %] ,'add')" isEnabledOnlyWhenEditable="0">
      <actionScope id="Canvas"/>
      <actionScope id="Feature"/>
    </actionsetting>
  </attributeactions>
  <attributetableconfig sortExpression="&quot;etapes&quot;" sortOrder="0" actionWidgetStyle="dropDown">
    <columns>
      <column type="field" width="-1" hidden="0" name="id_itineraire"/>
      <column type="field" width="-1" hidden="0" name="numero"/>
      <column type="field" width="-1" hidden="0" name="nom_officiel"/>
      <column type="field" width="-1" hidden="0" name="nom_usage"/>
      <column type="field" width="-1" hidden="0" name="depart"/>
      <column type="field" width="-1" hidden="0" name="arrivee"/>
      <column type="field" width="-1" hidden="0" name="annee_inscription"/>
      <column type="field" width="-1" hidden="0" name="site_web"/>
      <column type="field" width="-1" hidden="0" name="annee_ouverture"/>
      <column type="field" width="-1" hidden="0" name="niveau_schema"/>
      <column type="field" width="-1" hidden="0" name="est_inscrit"/>
      <column type="field" width="84" hidden="0" name="etapes"/>
      <column type="actions" width="-1" hidden="0"/>
    </columns>
  </attributetableconfig>
  <conditionalstyles>
    <rowstyles>
      <style rule="&quot;etapes&quot; = 0" background_color_alpha="255" name="Itinéraire vide" background_color="#fb9a99">
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
    <attributeEditorField showLabel="1" index="5" name="id_itineraire"/>
    <attributeEditorContainer visibilityExpressionEnabled="0" columnCount="1" showLabel="1" name="Informations" visibilityExpression="" groupBox="0">
      <attributeEditorContainer visibilityExpressionEnabled="0" columnCount="1" showLabel="1" name="Covadis" visibilityExpression="" groupBox="1">
        <attributeEditorField showLabel="1" index="0" name="numero"/>
        <attributeEditorField showLabel="1" index="1" name="nom_officiel"/>
        <attributeEditorField showLabel="1" index="2" name="nom_usage"/>
        <attributeEditorField showLabel="1" index="3" name="depart"/>
        <attributeEditorField showLabel="1" index="4" name="arrivee"/>
        <attributeEditorField showLabel="1" index="9" name="niveau_schema"/>
        <attributeEditorField showLabel="1" index="7" name="site_web"/>
        <attributeEditorField showLabel="1" index="8" name="annee_ouverture"/>
        <attributeEditorField showLabel="1" index="10" name="est_inscrit"/>
        <attributeEditorField showLabel="1" index="6" name="annee_inscription"/>
      </attributeEditorContainer>
      <attributeEditorContainer visibilityExpressionEnabled="0" columnCount="1" showLabel="1" name="Subvention" visibilityExpression="" groupBox="1">
        <attributeEditorField showLabel="1" index="-1" name="mont_subv"/>
        <attributeEditorField showLabel="1" index="-1" name="annee_subv"/>
        <attributeEditorField showLabel="1" index="-1" name="type_pluriannuel"/>
      </attributeEditorContainer>
    </attributeEditorContainer>
    <attributeEditorContainer visibilityExpressionEnabled="0" columnCount="1" showLabel="1" name="Étapes" visibilityExpression="" groupBox="0">
      <attributeEditorField showLabel="1" index="11" name="etapes"/>
      <attributeEditorRelation relation="" showUnlinkButton="1" showLabel="1" showLinkButton="1" name=""/>
    </attributeEditorContainer>
  </attributeEditorForm>
  <editable>
    <field editable="1" name="annee_inscription"/>
    <field editable="1" name="annee_ouverture"/>
    <field editable="1" name="annee_subv"/>
    <field editable="1" name="arrivee"/>
    <field editable="1" name="depart"/>
    <field editable="1" name="est_inscrit"/>
    <field editable="0" name="etapes"/>
    <field editable="0" name="id_iti"/>
    <field editable="0" name="id_itineraire"/>
    <field editable="1" name="longueur"/>
    <field editable="1" name="mont_subv"/>
    <field editable="1" name="niveau_schema"/>
    <field editable="1" name="nom_officiel"/>
    <field editable="1" name="nom_usage"/>
    <field editable="1" name="numero"/>
    <field editable="1" name="site_web"/>
    <field editable="1" name="type_pluriannuel"/>
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
        <Option type="QString" name="nm-rel" value="etape_008e0743_3f06_431d_afbb_0c8da7d8e66f_id_portion_portion_8b4d47a9_fcca_4e53_8b4e_cd6aa677ad13_id_portion"/>
      </config>
    </widget>
    <widget name="etape_16996ead_334c_40f9_9ab8_32f6c1cfbd04_id_itineraire_itineraire_f196ffc9_3afa_4821_997e_689c44e2df18_id_itineraire">
      <config type="Map">
        <Option type="QString" name="nm-rel" value=""/>
      </config>
    </widget>
    <widget name="etape_5cf240ae_720f_4cc7_833c_e9352114f713_id_itineraire_itineraire_f3449530_e5bc_423d_a6a5_46186976bbec_id_itineraire">
      <config type="Map">
        <Option type="QString" name="nm-rel" value=""/>
      </config>
    </widget>
    <widget name="etape_6a0e5c72_95ba_4012_8a51_77f727a0c755_id_itineraire_itineraire_1bcf6d5d_e7e4_493e_89a3_45ebef699aea_id_iti">
      <config type="Map">
        <Option type="QString" name="nm-rel" value=""/>
      </config>
    </widget>
    <widget name="etape_7d2f_id_itineraire_v_itinerai_id_iti">
      <config type="Map">
        <Option type="QString" name="nm-rel" value=""/>
      </config>
    </widget>
    <widget name="etape_7d2f_id_itineraire_v_itinerai_id_itineraire">
      <config type="Map">
        <Option type="QString" name="nm-rel" value=""/>
      </config>
    </widget>
    <widget name="etape_7d2fa857_5f19_42b8_ae43_c514540041db_id_itineraire_itineraire_c47affa8_3ced_43b5_b85b_cb009c7b432a_id_iti">
      <config type="Map">
        <Option type="QString" name="nm-rel" value=""/>
      </config>
    </widget>
    <widget name="etape_9a378a97_1e9f_455f_972e_02e7bc9efae0_id_itineraire_itineraire_6d73d1d4_22e7_434a_8911_95df835869cd_id_itineraire">
      <config type="Map">
        <Option type="QString" name="nm-rel" value=""/>
      </config>
    </widget>
    <widget name="etape_a1ad917b_770b_4d52_9b2b_68e3840490a0_id_itineraire_itineraire_2d2a1f44_fd42_4393_ae1c_1c3cbff194dd_id_itineraire">
      <config type="Map">
        <Option type="QString" name="nm-rel" value=""/>
      </config>
    </widget>
    <widget name="etape_bfc9de6e_3c03_405b_8ea9_5f7ac7410b40_id_itineraire_itineraire_eb402d9f_d768_4aa8_81e8_c6c899065aad_id_itineraire">
      <config type="Map">
        <Option type="QString" name="nm-rel" value=""/>
      </config>
    </widget>
  </widgets>
  <previewExpression>"numero"</previewExpression>
  <mapTip></mapTip>
  <layerGeometryType>4</layerGeometryType>
</qgis>
