<!DOCTYPE qgis PUBLIC 'http://mrcc.com/qgis.dtd' 'SYSTEM'>
<qgis styleCategories="AllStyleCategories" maxScale="0" readOnly="0" version="3.10.10-A Coruña" minScale="1e+8" hasScaleBasedVisibilityFlag="0">
  <flags>
    <Identifiable>1</Identifiable>
    <Removable>1</Removable>
    <Searchable>1</Searchable>
  </flags>
  <customproperties>
    <property key="dualview/previewExpressions">
      <value>"numero"</value>
      <value>"id_iti"</value>
      <value>numero</value>
    </property>
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
            <Option name="IsMultiline" value="false" type="bool"/>
            <Option name="UseHtml" value="false" type="bool"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="nom_officiel">
      <editWidget type="TextEdit">
        <config>
          <Option type="Map">
            <Option name="IsMultiline" value="false" type="bool"/>
            <Option name="UseHtml" value="false" type="bool"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="nom_usage">
      <editWidget type="TextEdit">
        <config>
          <Option type="Map">
            <Option name="IsMultiline" value="false" type="bool"/>
            <Option name="UseHtml" value="false" type="bool"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="depart">
      <editWidget type="TextEdit">
        <config>
          <Option type="Map">
            <Option name="IsMultiline" value="false" type="bool"/>
            <Option name="UseHtml" value="false" type="bool"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="arrivee">
      <editWidget type="TextEdit">
        <config>
          <Option type="Map">
            <Option name="IsMultiline" value="false" type="bool"/>
            <Option name="UseHtml" value="false" type="bool"/>
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
    <alias name="Numéro" index="0" field="numero"/>
    <alias name="Nom officiel" index="1" field="nom_officiel"/>
    <alias name="Nom d'usage" index="2" field="nom_usage"/>
    <alias name="Départ" index="3" field="depart"/>
    <alias name="Arrivée" index="4" field="arrivee"/>
    <alias name="Identifiant" index="5" field="id_itineraire"/>
    <alias name="Année d'inscription" index="6" field="annee_inscription"/>
    <alias name="Site internet" index="7" field="site_web"/>
    <alias name="Année d'ouverture" index="8" field="annee_ouverture"/>
    <alias name="Niveau administratif" index="9" field="niveau_schema"/>
    <alias name="Est inscrit à un schéma" index="10" field="est_inscrit"/>
    <alias name="Montant de la subvention" index="11" field="mont_subv"/>
    <alias name="Année de la subvention" index="12" field="annee_subv"/>
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
  </defaults>
  <constraints>
    <constraint notnull_strength="1" exp_strength="0" constraints="1" unique_strength="0" field="numero"/>
    <constraint notnull_strength="0" exp_strength="0" constraints="0" unique_strength="0" field="nom_officiel"/>
    <constraint notnull_strength="0" exp_strength="0" constraints="0" unique_strength="0" field="nom_usage"/>
    <constraint notnull_strength="0" exp_strength="0" constraints="0" unique_strength="0" field="depart"/>
    <constraint notnull_strength="0" exp_strength="0" constraints="0" unique_strength="0" field="arrivee"/>
    <constraint notnull_strength="2" exp_strength="0" constraints="3" unique_strength="2" field="id_itineraire"/>
    <constraint notnull_strength="0" exp_strength="0" constraints="0" unique_strength="0" field="annee_inscription"/>
    <constraint notnull_strength="0" exp_strength="2" constraints="4" unique_strength="0" field="site_web"/>
    <constraint notnull_strength="0" exp_strength="0" constraints="0" unique_strength="0" field="annee_ouverture"/>
    <constraint notnull_strength="0" exp_strength="0" constraints="0" unique_strength="0" field="niveau_schema"/>
    <constraint notnull_strength="0" exp_strength="0" constraints="0" unique_strength="0" field="est_inscrit"/>
    <constraint notnull_strength="0" exp_strength="0" constraints="0" unique_strength="0" field="mont_subv"/>
    <constraint notnull_strength="0" exp_strength="0" constraints="0" unique_strength="0" field="annee_subv"/>
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
    <constraint desc="" exp="" field="mont_subv"/>
    <constraint desc="" exp="" field="annee_subv"/>
  </constraintExpressions>
  <expressionfields/>
  <attributeactions>
    <defaultAction key="Canvas" value="{00000000-0000-0000-0000-000000000000}"/>
  </attributeactions>
  <attributetableconfig sortOrder="0" actionWidgetStyle="dropDown" sortExpression="&quot;numero&quot;">
    <columns>
      <column width="-1" name="numero" hidden="0" type="field"/>
      <column width="-1" name="nom_officiel" hidden="0" type="field"/>
      <column width="-1" name="nom_usage" hidden="0" type="field"/>
      <column width="-1" name="depart" hidden="0" type="field"/>
      <column width="-1" name="arrivee" hidden="0" type="field"/>
      <column width="-1" name="annee_inscription" hidden="0" type="field"/>
      <column width="-1" name="site_web" hidden="0" type="field"/>
      <column width="-1" name="annee_ouverture" hidden="0" type="field"/>
      <column width="-1" name="niveau_schema" hidden="0" type="field"/>
      <column width="-1" name="est_inscrit" hidden="0" type="field"/>
      <column width="-1" hidden="1" type="actions"/>
      <column width="-1" name="mont_subv" hidden="0" type="field"/>
      <column width="-1" name="annee_subv" hidden="0" type="field"/>
      <column width="-1" name="id_itineraire" hidden="0" type="field"/>
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
    <field name="annee_inscription" editable="1"/>
    <field name="annee_ouverture" editable="1"/>
    <field name="annee_subv" editable="1"/>
    <field name="arrivee" editable="1"/>
    <field name="depart" editable="1"/>
    <field name="est_inscrit" editable="1"/>
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
    <field name="annee_inscription" labelOnTop="0"/>
    <field name="annee_ouverture" labelOnTop="0"/>
    <field name="annee_subv" labelOnTop="0"/>
    <field name="arrivee" labelOnTop="0"/>
    <field name="depart" labelOnTop="0"/>
    <field name="est_inscrit" labelOnTop="0"/>
    <field name="id_iti" labelOnTop="0"/>
    <field name="id_itineraire" labelOnTop="0"/>
    <field name="mont_subv" labelOnTop="0"/>
    <field name="niveau_schema" labelOnTop="0"/>
    <field name="nom_officiel" labelOnTop="0"/>
    <field name="nom_usage" labelOnTop="0"/>
    <field name="numero" labelOnTop="0"/>
    <field name="site_web" labelOnTop="0"/>
  </labelOnTop>
  <widgets>
    <widget name="etape_008e0743_3f06_431d_afbb_0c8da7d8e66f_id_itineraire_itineraire_37f151ab_0ac8_4003_b653_f83e948fd3f8_id_itineraire">
      <config type="Map">
        <Option name="nm-rel" value="etape_008e0743_3f06_431d_afbb_0c8da7d8e66f_id_portion_portion_8b4d47a9_fcca_4e53_8b4e_cd6aa677ad13_id_portion" type="QString"/>
      </config>
    </widget>
    <widget name="etape_6a0e5c72_95ba_4012_8a51_77f727a0c755_id_itineraire_itineraire_1bcf6d5d_e7e4_493e_89a3_45ebef699aea_id_iti">
      <config type="Map">
        <Option name="nm-rel" value="" type="QString"/>
      </config>
    </widget>
    <widget name="etape_7d2fa857_5f19_42b8_ae43_c514540041db_id_itineraire_itineraire_c47affa8_3ced_43b5_b85b_cb009c7b432a_id_iti">
      <config type="Map">
        <Option name="nm-rel" value="" type="QString"/>
      </config>
    </widget>
    <widget name="etape_9a378a97_1e9f_455f_972e_02e7bc9efae0_id_itineraire_itineraire_6d73d1d4_22e7_434a_8911_95df835869cd_id_itineraire">
      <config type="Map">
        <Option name="nm-rel" value="" type="QString"/>
      </config>
    </widget>
  </widgets>
  <previewExpression>"numero"</previewExpression>
  <mapTip></mapTip>
  <layerGeometryType>4</layerGeometryType>
</qgis>
