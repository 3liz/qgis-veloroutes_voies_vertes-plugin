<!DOCTYPE qgis PUBLIC 'http://mrcc.com/qgis.dtd' 'SYSTEM'>
<qgis styleCategories="AllStyleCategories" readOnly="0" maxScale="0" version="3.10.10-A Coruña" minScale="1e+8" hasScaleBasedVisibilityFlag="0">
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
            <Option value="false" name="IsMultiline" type="bool"/>
            <Option value="false" name="UseHtml" type="bool"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="nom_officiel">
      <editWidget type="TextEdit">
        <config>
          <Option type="Map">
            <Option value="false" name="IsMultiline" type="bool"/>
            <Option value="false" name="UseHtml" type="bool"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="nom_usage">
      <editWidget type="TextEdit">
        <config>
          <Option type="Map">
            <Option value="false" name="IsMultiline" type="bool"/>
            <Option value="false" name="UseHtml" type="bool"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="depart">
      <editWidget type="TextEdit">
        <config>
          <Option type="Map">
            <Option value="false" name="IsMultiline" type="bool"/>
            <Option value="false" name="UseHtml" type="bool"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="arrivee">
      <editWidget type="TextEdit">
        <config>
          <Option type="Map">
            <Option value="false" name="IsMultiline" type="bool"/>
            <Option value="false" name="UseHtml" type="bool"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="id_itineraire">
      <editWidget type="TextEdit">
        <config>
          <Option type="Map">
            <Option value="false" name="IsMultiline" type="bool"/>
            <Option value="false" name="UseHtml" type="bool"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="annee_inscription">
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
    <field name="site_web">
      <editWidget type="TextEdit">
        <config>
          <Option type="Map">
            <Option value="false" name="IsMultiline" type="bool"/>
            <Option value="false" name="UseHtml" type="bool"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="annee_ouverture">
      <editWidget type="DateTime">
        <config>
          <Option type="Map">
            <Option value="false" name="allow_null" type="bool"/>
            <Option value="true" name="calendar_popup" type="bool"/>
            <Option value="yyyy" name="display_format" type="QString"/>
            <Option value="yyyy" name="field_format" type="QString"/>
            <Option value="false" name="field_iso_format" type="bool"/>
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
                <Option value="DEP" name="Départemental" type="QString"/>
              </Option>
              <Option type="Map">
                <Option value="REG" name="Régional" type="QString"/>
              </Option>
              <Option type="Map">
                <Option value="NAT" name="National" type="QString"/>
              </Option>
              <Option type="Map">
                <Option value="EUR" name="Européen" type="QString"/>
              </Option>
              <Option type="Map">
                <Option value="{2839923C-8B7D-419E-B84B-CA2FE9B80EC7}" name="Non précisé" type="QString"/>
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
                <Option value="T" name="Oui" type="QString"/>
              </Option>
              <Option type="Map">
                <Option value="F" name="Non" type="QString"/>
              </Option>
              <Option type="Map">
                <Option value="N" name="Ne sais pas" type="QString"/>
              </Option>
              <Option type="Map">
                <Option value="{2839923C-8B7D-419E-B84B-CA2FE9B80EC7}" name="Non précisée" type="QString"/>
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
    <field name="etapes">
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
    <alias name="Numéro" field="numero" index="0"/>
    <alias name="Nom officiel" field="nom_officiel" index="1"/>
    <alias name="Nom d'usage" field="nom_usage" index="2"/>
    <alias name="Départ" field="depart" index="3"/>
    <alias name="Arrivée" field="arrivee" index="4"/>
    <alias name="Identifiant" field="id_itineraire" index="5"/>
    <alias name="Année d'inscription" field="annee_inscription" index="6"/>
    <alias name="Site internet" field="site_web" index="7"/>
    <alias name="Année d'ouverture" field="annee_ouverture" index="8"/>
    <alias name="Niveau administratif" field="niveau_schema" index="9"/>
    <alias name="Est inscrit à un schéma" field="est_inscrit" index="10"/>
    <alias name="Montant de la subvention" field="mont_subv" index="11"/>
    <alias name="Année de la subvention" field="annee_subv" index="12"/>
    <alias name="Nombre d'étapes" field="etapes" index="13"/>
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
    <default expression="" field="etapes" applyOnUpdate="0"/>
  </defaults>
  <constraints>
    <constraint unique_strength="0" notnull_strength="1" field="numero" constraints="1" exp_strength="0"/>
    <constraint unique_strength="0" notnull_strength="0" field="nom_officiel" constraints="0" exp_strength="0"/>
    <constraint unique_strength="0" notnull_strength="0" field="nom_usage" constraints="0" exp_strength="0"/>
    <constraint unique_strength="0" notnull_strength="0" field="depart" constraints="0" exp_strength="0"/>
    <constraint unique_strength="0" notnull_strength="0" field="arrivee" constraints="0" exp_strength="0"/>
    <constraint unique_strength="2" notnull_strength="2" field="id_itineraire" constraints="3" exp_strength="0"/>
    <constraint unique_strength="0" notnull_strength="0" field="annee_inscription" constraints="0" exp_strength="0"/>
    <constraint unique_strength="0" notnull_strength="0" field="site_web" constraints="4" exp_strength="2"/>
    <constraint unique_strength="0" notnull_strength="0" field="annee_ouverture" constraints="0" exp_strength="0"/>
    <constraint unique_strength="0" notnull_strength="0" field="niveau_schema" constraints="0" exp_strength="0"/>
    <constraint unique_strength="0" notnull_strength="0" field="est_inscrit" constraints="0" exp_strength="0"/>
    <constraint unique_strength="0" notnull_strength="0" field="mont_subv" constraints="0" exp_strength="0"/>
    <constraint unique_strength="0" notnull_strength="0" field="annee_subv" constraints="0" exp_strength="0"/>
    <constraint unique_strength="0" notnull_strength="0" field="etapes" constraints="0" exp_strength="0"/>
  </constraints>
  <constraintExpressions>
    <constraint desc="" field="numero" exp=""/>
    <constraint desc="" field="nom_officiel" exp=""/>
    <constraint desc="" field="nom_usage" exp=""/>
    <constraint desc="" field="depart" exp=""/>
    <constraint desc="" field="arrivee" exp=""/>
    <constraint desc="" field="id_itineraire" exp=""/>
    <constraint desc="" field="annee_inscription" exp=""/>
    <constraint desc="" field="site_web" exp="CASE WHEN &quot;site_web&quot; IS NOT NULL THEN regexp_match(&quot;site_web&quot;, '^(?:http(s)?:\\/\\/)?[\\w.-]+(?:\\.[\\w\\.-]+)+[\\w\\-\\._~:/?#[\\]@!\\$&amp;''\\(\\)\\*\\+,;=.]+$') ELSE TRUE END"/>
    <constraint desc="" field="annee_ouverture" exp=""/>
    <constraint desc="" field="niveau_schema" exp=""/>
    <constraint desc="" field="est_inscrit" exp=""/>
    <constraint desc="" field="mont_subv" exp=""/>
    <constraint desc="" field="annee_subv" exp=""/>
    <constraint desc="" field="etapes" exp=""/>
  </constraintExpressions>
  <expressionfields>
    <field length="0" name="etapes" subType="0" expression=" relation_aggregate( 'etape_itineraire_portion', 'count', &quot;id_portion&quot;)" type="2" typeName="integer" precision="0" comment=""/>
  </expressionfields>
  <attributeactions>
    <defaultAction value="{00000000-0000-0000-0000-000000000000}" key="Canvas"/>
    <actionsetting capture="0" name="Suppression d'étape sur un itinéraire à partir de portions sélectionnées " shortTitle="Suppression d'étape" type="1" action="from qgis.utils import plugins&#xa;plugins['veloroutes_voies_vertes'].run_action('update_selected_feature', [%id_itineraire%],[% '\''||@layer_name||'\'' %], 'del')" notificationMessage="" isEnabledOnlyWhenEditable="0" id="{a2163b4f-4fe0-4fe4-aecc-0869e89683b9}" icon="">
      <actionScope id="Feature"/>
      <actionScope id="Canvas"/>
    </actionsetting>
    <actionsetting capture="0" name="Ajouter des étapes à partir de portions sélectionnées" shortTitle="Ajouter des étapes" type="1" action="from qgis.utils import plugins&#xa;plugins['veloroutes_voies_vertes'].run_action('update_selected_feature', [%id_itineraire%], [% '\''||@layer_name||'\'' %] ,'add')" notificationMessage="" isEnabledOnlyWhenEditable="0" id="{4c82da3e-284f-41d6-97b2-53f4df1a8bf4}" icon="">
      <actionScope id="Feature"/>
      <actionScope id="Canvas"/>
    </actionsetting>
  </attributeactions>
  <attributetableconfig sortExpression="&quot;etapes&quot;" sortOrder="0" actionWidgetStyle="dropDown">
    <columns>
      <column name="id_itineraire" hidden="0" type="field" width="-1"/>
      <column name="numero" hidden="0" type="field" width="-1"/>
      <column name="nom_officiel" hidden="0" type="field" width="-1"/>
      <column name="nom_usage" hidden="0" type="field" width="-1"/>
      <column name="depart" hidden="0" type="field" width="-1"/>
      <column name="arrivee" hidden="0" type="field" width="-1"/>
      <column name="annee_inscription" hidden="0" type="field" width="-1"/>
      <column name="site_web" hidden="0" type="field" width="-1"/>
      <column name="annee_ouverture" hidden="0" type="field" width="-1"/>
      <column name="niveau_schema" hidden="0" type="field" width="-1"/>
      <column name="est_inscrit" hidden="0" type="field" width="-1"/>
      <column name="mont_subv" hidden="0" type="field" width="-1"/>
      <column name="annee_subv" hidden="0" type="field" width="-1"/>
      <column name="etapes" hidden="0" type="field" width="84"/>
      <column hidden="0" type="actions" width="-1"/>
    </columns>
  </attributetableconfig>
  <conditionalstyles>
    <rowstyles>
      <style name="Itinéraire vide" rule="&quot;etapes&quot; = 0" background_color="#fb9a99" background_color_alpha="255">
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
    <field name="annee_inscription" editable="1"/>
    <field name="annee_ouverture" editable="1"/>
    <field name="annee_subv" editable="1"/>
    <field name="arrivee" editable="1"/>
    <field name="depart" editable="1"/>
    <field name="est_inscrit" editable="1"/>
    <field name="etapes" editable="0"/>
    <field name="id_iti" editable="0"/>
    <field name="id_itineraire" editable="0"/>
    <field name="mont_subv" editable="1"/>
    <field name="niveau_schema" editable="1"/>
    <field name="nom_officiel" editable="1"/>
    <field name="nom_usage" editable="1"/>
    <field name="numero" editable="1"/>
    <field name="site_web" editable="1"/>
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
  </labelOnTop>
  <widgets>
    <widget name="etape_008e0743_3f06_431d_afbb_0c8da7d8e66f_id_itineraire_itineraire_37f151ab_0ac8_4003_b653_f83e948fd3f8_id_itineraire">
      <config type="Map">
        <Option value="etape_008e0743_3f06_431d_afbb_0c8da7d8e66f_id_portion_portion_8b4d47a9_fcca_4e53_8b4e_cd6aa677ad13_id_portion" name="nm-rel" type="QString"/>
      </config>
    </widget>
    <widget name="etape_6a0e5c72_95ba_4012_8a51_77f727a0c755_id_itineraire_itineraire_1bcf6d5d_e7e4_493e_89a3_45ebef699aea_id_iti">
      <config type="Map">
        <Option value="" name="nm-rel" type="QString"/>
      </config>
    </widget>
    <widget name="etape_7d2fa857_5f19_42b8_ae43_c514540041db_id_itineraire_itineraire_c47affa8_3ced_43b5_b85b_cb009c7b432a_id_iti">
      <config type="Map">
        <Option value="" name="nm-rel" type="QString"/>
      </config>
    </widget>
    <widget name="etape_9a378a97_1e9f_455f_972e_02e7bc9efae0_id_itineraire_itineraire_6d73d1d4_22e7_434a_8911_95df835869cd_id_itineraire">
      <config type="Map">
        <Option value="" name="nm-rel" type="QString"/>
      </config>
    </widget>
    <widget name="etape_bfc9de6e_3c03_405b_8ea9_5f7ac7410b40_id_itineraire_itineraire_eb402d9f_d768_4aa8_81e8_c6c899065aad_id_itineraire">
      <config type="Map">
        <Option value="" name="nm-rel" type="QString"/>
      </config>
    </widget>
  </widgets>
  <previewExpression>"numero"</previewExpression>
  <mapTip></mapTip>
  <layerGeometryType>4</layerGeometryType>
</qgis>
