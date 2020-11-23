<!DOCTYPE qgis PUBLIC 'http://mrcc.com/qgis.dtd' 'SYSTEM'>
<qgis maxScale="0" version="3.10.10-A Coruña" hasScaleBasedVisibilityFlag="0" readOnly="0" minScale="1e+8" styleCategories="AllStyleCategories">
  <flags>
    <Identifiable>1</Identifiable>
    <Removable>1</Removable>
    <Searchable>1</Searchable>
  </flags>
  <customproperties>
    <property key="dualview/previewExpressions">
      <value>"numero"</value>
      <value>numero</value>
      <value>"id_iti"</value>
      <value>"numero"</value>
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
    <field name="numero">
      <editWidget type="TextEdit">
        <config>
          <Option type="Map">
            <Option type="bool" value="false" name="IsMultiline"/>
            <Option type="bool" value="false" name="UseHtml"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="nom_officiel">
      <editWidget type="TextEdit">
        <config>
          <Option type="Map">
            <Option type="bool" value="false" name="IsMultiline"/>
            <Option type="bool" value="false" name="UseHtml"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="nom_usage">
      <editWidget type="TextEdit">
        <config>
          <Option type="Map">
            <Option type="bool" value="false" name="IsMultiline"/>
            <Option type="bool" value="false" name="UseHtml"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="depart">
      <editWidget type="TextEdit">
        <config>
          <Option type="Map">
            <Option type="bool" value="false" name="IsMultiline"/>
            <Option type="bool" value="false" name="UseHtml"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="arrivee">
      <editWidget type="TextEdit">
        <config>
          <Option type="Map">
            <Option type="bool" value="false" name="IsMultiline"/>
            <Option type="bool" value="false" name="UseHtml"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="id_itineraire">
      <editWidget type="TextEdit">
        <config>
          <Option type="Map">
            <Option type="bool" value="false" name="IsMultiline"/>
            <Option type="bool" value="false" name="UseHtml"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="annee_inscription">
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
    <field name="site_web">
      <editWidget type="TextEdit">
        <config>
          <Option type="Map">
            <Option type="bool" value="false" name="IsMultiline"/>
            <Option type="bool" value="false" name="UseHtml"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="annee_ouverture">
      <editWidget type="DateTime">
        <config>
          <Option type="Map">
            <Option type="bool" value="false" name="allow_null"/>
            <Option type="bool" value="true" name="calendar_popup"/>
            <Option type="QString" value="yyyy" name="display_format"/>
            <Option type="QString" value="yyyy" name="field_format"/>
            <Option type="bool" value="false" name="field_iso_format"/>
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
                <Option type="QString" value="DEP" name="Départemental"/>
              </Option>
              <Option type="Map">
                <Option type="QString" value="REG" name="Régional"/>
              </Option>
              <Option type="Map">
                <Option type="QString" value="NAT" name="National"/>
              </Option>
              <Option type="Map">
                <Option type="QString" value="EUR" name="Européen"/>
              </Option>
              <Option type="Map">
                <Option type="QString" value="{2839923C-8B7D-419E-B84B-CA2FE9B80EC7}" name="Non précisé"/>
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
                <Option type="QString" value="T" name="Oui"/>
              </Option>
              <Option type="Map">
                <Option type="QString" value="F" name="Non"/>
              </Option>
              <Option type="Map">
                <Option type="QString" value="N" name="Ne sais pas"/>
              </Option>
              <Option type="Map">
                <Option type="QString" value="{2839923C-8B7D-419E-B84B-CA2FE9B80EC7}" name="Non précisée"/>
              </Option>
            </Option>
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
    <field name="type_pluriannuel">
      <editWidget type="UniqueValues">
        <config>
          <Option type="Map">
            <Option type="bool" value="true" name="Editable"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="etapes">
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
    <alias index="11" name="Montant de la subvention" field="mont_subv"/>
    <alias index="12" name="Année de la subvention" field="annee_subv"/>
    <alias index="13" name="Type pluriannuel" field="type_pluriannuel"/>
    <alias index="14" name="Nombre d'étapes" field="etapes"/>
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
    <default expression="" field="mont_subv" applyOnUpdate="0"/>
    <default expression="" field="annee_subv" applyOnUpdate="0"/>
    <default expression="" field="type_pluriannuel" applyOnUpdate="0"/>
    <default expression="" field="etapes" applyOnUpdate="0"/>
  </defaults>
  <constraints>
    <constraint unique_strength="0" notnull_strength="1" exp_strength="0" field="numero" constraints="1"/>
    <constraint unique_strength="0" notnull_strength="0" exp_strength="0" field="nom_officiel" constraints="0"/>
    <constraint unique_strength="0" notnull_strength="0" exp_strength="0" field="nom_usage" constraints="0"/>
    <constraint unique_strength="0" notnull_strength="0" exp_strength="0" field="depart" constraints="0"/>
    <constraint unique_strength="0" notnull_strength="0" exp_strength="0" field="arrivee" constraints="0"/>
    <constraint unique_strength="2" notnull_strength="2" exp_strength="0" field="id_itineraire" constraints="3"/>
    <constraint unique_strength="0" notnull_strength="0" exp_strength="0" field="annee_inscription" constraints="0"/>
    <constraint unique_strength="0" notnull_strength="0" exp_strength="2" field="site_web" constraints="4"/>
    <constraint unique_strength="0" notnull_strength="0" exp_strength="0" field="annee_ouverture" constraints="0"/>
    <constraint unique_strength="0" notnull_strength="0" exp_strength="0" field="niveau_schema" constraints="0"/>
    <constraint unique_strength="0" notnull_strength="0" exp_strength="0" field="est_inscrit" constraints="0"/>
    <constraint unique_strength="0" notnull_strength="0" exp_strength="0" field="mont_subv" constraints="0"/>
    <constraint unique_strength="0" notnull_strength="0" exp_strength="0" field="annee_subv" constraints="0"/>
    <constraint unique_strength="0" notnull_strength="0" exp_strength="0" field="type_pluriannuel" constraints="0"/>
    <constraint unique_strength="0" notnull_strength="0" exp_strength="0" field="etapes" constraints="0"/>
  </constraints>
  <constraintExpressions>
    <constraint exp="" desc="" field="numero"/>
    <constraint exp="" desc="" field="nom_officiel"/>
    <constraint exp="" desc="" field="nom_usage"/>
    <constraint exp="" desc="" field="depart"/>
    <constraint exp="" desc="" field="arrivee"/>
    <constraint exp="" desc="" field="id_itineraire"/>
    <constraint exp="" desc="" field="annee_inscription"/>
    <constraint exp="CASE WHEN &quot;site_web&quot; IS NOT NULL THEN regexp_match(&quot;site_web&quot;, '^(?:http(s)?:\\/\\/)?[\\w.-]+(?:\\.[\\w\\.-]+)+[\\w\\-\\._~:/?#[\\]@!\\$&amp;''\\(\\)\\*\\+,;=.]+$') ELSE TRUE END" desc="" field="site_web"/>
    <constraint exp="" desc="" field="annee_ouverture"/>
    <constraint exp="" desc="" field="niveau_schema"/>
    <constraint exp="" desc="" field="est_inscrit"/>
    <constraint exp="" desc="" field="mont_subv"/>
    <constraint exp="" desc="" field="annee_subv"/>
    <constraint exp="" desc="" field="type_pluriannuel"/>
    <constraint exp="" desc="" field="etapes"/>
  </constraintExpressions>
  <expressionfields>
    <field subType="0" comment="" type="2" expression=" relation_aggregate( 'etape_itineraire_portion', 'count', &quot;id_portion&quot;)" length="0" precision="0" typeName="integer" name="etapes"/>
  </expressionfields>
  <attributeactions>
    <defaultAction value="{00000000-0000-0000-0000-000000000000}" key="Canvas"/>
    <actionsetting type="1" shortTitle="Suppression d'étape" isEnabledOnlyWhenEditable="0" notificationMessage="" icon="" name="Suppression d'étape sur un itinéraire à partir de portions sélectionnées " capture="0" action="from qgis.utils import plugins&#xa;plugins['veloroutes_voies_vertes'].run_action('update_selected_feature', [%id_itineraire%],[% '\''||@layer_name||'\'' %], 'del')" id="{bba2c2e2-b158-490b-90ca-6ad57945f240}">
      <actionScope id="Feature"/>
      <actionScope id="Canvas"/>
    </actionsetting>
    <actionsetting type="1" shortTitle="Ajouter des étapes" isEnabledOnlyWhenEditable="0" notificationMessage="" icon="" name="Ajouter des étapes à partir de portions sélectionnées" capture="0" action="from qgis.utils import plugins&#xa;plugins['veloroutes_voies_vertes'].run_action('update_selected_feature', [%id_itineraire%], [% '\''||@layer_name||'\'' %] ,'add')" id="{28a365eb-6437-4aa2-890f-b868f9a401ce}">
      <actionScope id="Feature"/>
      <actionScope id="Canvas"/>
    </actionsetting>
  </attributeactions>
  <attributetableconfig sortExpression="&quot;etapes&quot;" actionWidgetStyle="dropDown" sortOrder="0">
    <columns>
      <column type="field" name="id_itineraire" width="-1" hidden="0"/>
      <column type="field" name="numero" width="-1" hidden="0"/>
      <column type="field" name="nom_officiel" width="-1" hidden="0"/>
      <column type="field" name="nom_usage" width="-1" hidden="0"/>
      <column type="field" name="depart" width="-1" hidden="0"/>
      <column type="field" name="arrivee" width="-1" hidden="0"/>
      <column type="field" name="annee_inscription" width="-1" hidden="0"/>
      <column type="field" name="site_web" width="-1" hidden="0"/>
      <column type="field" name="annee_ouverture" width="-1" hidden="0"/>
      <column type="field" name="niveau_schema" width="-1" hidden="0"/>
      <column type="field" name="est_inscrit" width="-1" hidden="0"/>
      <column type="field" name="mont_subv" width="-1" hidden="0"/>
      <column type="field" name="annee_subv" width="-1" hidden="0"/>
      <column type="field" name="etapes" width="84" hidden="0"/>
      <column type="actions" width="-1" hidden="0"/>
      <column type="field" name="type_pluriannuel" width="-1" hidden="0"/>
    </columns>
  </attributetableconfig>
  <conditionalstyles>
    <rowstyles>
      <style background_color_alpha="255" rule="&quot;etapes&quot; = 0" background_color="#fb9a99" name="Itinéraire vide">
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
    <field editable="1" name="annee_inscription"/>
    <field editable="1" name="annee_ouverture"/>
    <field editable="1" name="annee_subv"/>
    <field editable="1" name="arrivee"/>
    <field editable="1" name="depart"/>
    <field editable="1" name="est_inscrit"/>
    <field editable="0" name="etapes"/>
    <field editable="0" name="id_iti"/>
    <field editable="0" name="id_itineraire"/>
    <field editable="1" name="mont_subv"/>
    <field editable="1" name="niveau_schema"/>
    <field editable="1" name="nom_officiel"/>
    <field editable="1" name="nom_usage"/>
    <field editable="1" name="numero"/>
    <field editable="1" name="site_web"/>
    <field editable="1" name="type_pluriannuel"/>
  </editable>
  <labelOnTop>
    <field labelOnTop="0" name="annee_inscription"/>
    <field labelOnTop="0" name="annee_ouverture"/>
    <field labelOnTop="0" name="annee_subv"/>
    <field labelOnTop="0" name="arrivee"/>
    <field labelOnTop="0" name="depart"/>
    <field labelOnTop="0" name="est_inscrit"/>
    <field labelOnTop="0" name="etapes"/>
    <field labelOnTop="0" name="id_iti"/>
    <field labelOnTop="0" name="id_itineraire"/>
    <field labelOnTop="0" name="mont_subv"/>
    <field labelOnTop="0" name="niveau_schema"/>
    <field labelOnTop="0" name="nom_officiel"/>
    <field labelOnTop="0" name="nom_usage"/>
    <field labelOnTop="0" name="numero"/>
    <field labelOnTop="0" name="site_web"/>
    <field labelOnTop="0" name="type_pluriannuel"/>
  </labelOnTop>
  <widgets>
    <widget name="etape_008e0743_3f06_431d_afbb_0c8da7d8e66f_id_itineraire_itineraire_37f151ab_0ac8_4003_b653_f83e948fd3f8_id_itineraire">
      <config type="Map">
        <Option type="QString" value="etape_008e0743_3f06_431d_afbb_0c8da7d8e66f_id_portion_portion_8b4d47a9_fcca_4e53_8b4e_cd6aa677ad13_id_portion" name="nm-rel"/>
      </config>
    </widget>
    <widget name="etape_6a0e5c72_95ba_4012_8a51_77f727a0c755_id_itineraire_itineraire_1bcf6d5d_e7e4_493e_89a3_45ebef699aea_id_iti">
      <config type="Map">
        <Option type="QString" value="" name="nm-rel"/>
      </config>
    </widget>
    <widget name="etape_7d2fa857_5f19_42b8_ae43_c514540041db_id_itineraire_itineraire_c47affa8_3ced_43b5_b85b_cb009c7b432a_id_iti">
      <config type="Map">
        <Option type="QString" value="" name="nm-rel"/>
      </config>
    </widget>
    <widget name="etape_9a378a97_1e9f_455f_972e_02e7bc9efae0_id_itineraire_itineraire_6d73d1d4_22e7_434a_8911_95df835869cd_id_itineraire">
      <config type="Map">
        <Option type="QString" value="" name="nm-rel"/>
      </config>
    </widget>
    <widget name="etape_a1ad917b_770b_4d52_9b2b_68e3840490a0_id_itineraire_itineraire_2d2a1f44_fd42_4393_ae1c_1c3cbff194dd_id_itineraire">
      <config type="Map">
        <Option type="QString" value="" name="nm-rel"/>
      </config>
    </widget>
    <widget name="etape_bfc9de6e_3c03_405b_8ea9_5f7ac7410b40_id_itineraire_itineraire_eb402d9f_d768_4aa8_81e8_c6c899065aad_id_itineraire">
      <config type="Map">
        <Option type="QString" value="" name="nm-rel"/>
      </config>
    </widget>
  </widgets>
  <previewExpression>"numero"</previewExpression>
  <mapTip></mapTip>
  <layerGeometryType>4</layerGeometryType>
</qgis>
