<!DOCTYPE qgis PUBLIC 'http://mrcc.com/qgis.dtd' 'SYSTEM'>
<qgis readOnly="0" version="3.10.10-A Coruña" styleCategories="AllStyleCategories" maxScale="0" hasScaleBasedVisibilityFlag="0" minScale="1e+8">
  <flags>
    <Identifiable>1</Identifiable>
    <Removable>1</Removable>
    <Searchable>1</Searchable>
  </flags>
  <customproperties>
    <property key="dualview/previewExpressions">
      <value>numero</value>
      <value>"id_iti"</value>
    </property>
    <property key="embeddedWidgets/count" value="0"/>
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
  </aliases>
  <excludeAttributesWMS/>
  <excludeAttributesWFS/>
  <defaults>
    <default applyOnUpdate="0" field="numero" expression=""/>
    <default applyOnUpdate="0" field="nom_officiel" expression=""/>
    <default applyOnUpdate="0" field="nom_usage" expression=""/>
    <default applyOnUpdate="0" field="depart" expression=""/>
    <default applyOnUpdate="0" field="arrivee" expression=""/>
    <default applyOnUpdate="0" field="id_itineraire" expression=""/>
    <default applyOnUpdate="0" field="annee_inscription" expression=""/>
    <default applyOnUpdate="0" field="site_web" expression=""/>
    <default applyOnUpdate="0" field="annee_ouverture" expression=""/>
    <default applyOnUpdate="0" field="niveau_schema" expression="NULL"/>
    <default applyOnUpdate="0" field="est_inscrit" expression=""/>
    <default applyOnUpdate="0" field="mont_subv" expression=""/>
    <default applyOnUpdate="0" field="annee_subv" expression=""/>
  </defaults>
  <constraints>
    <constraint constraints="1" unique_strength="0" field="numero" exp_strength="0" notnull_strength="1"/>
    <constraint constraints="0" unique_strength="0" field="nom_officiel" exp_strength="0" notnull_strength="0"/>
    <constraint constraints="0" unique_strength="0" field="nom_usage" exp_strength="0" notnull_strength="0"/>
    <constraint constraints="0" unique_strength="0" field="depart" exp_strength="0" notnull_strength="0"/>
    <constraint constraints="0" unique_strength="0" field="arrivee" exp_strength="0" notnull_strength="0"/>
    <constraint constraints="3" unique_strength="2" field="id_itineraire" exp_strength="0" notnull_strength="2"/>
    <constraint constraints="0" unique_strength="0" field="annee_inscription" exp_strength="0" notnull_strength="0"/>
    <constraint constraints="4" unique_strength="0" field="site_web" exp_strength="2" notnull_strength="0"/>
    <constraint constraints="0" unique_strength="0" field="annee_ouverture" exp_strength="0" notnull_strength="0"/>
    <constraint constraints="0" unique_strength="0" field="niveau_schema" exp_strength="0" notnull_strength="0"/>
    <constraint constraints="0" unique_strength="0" field="est_inscrit" exp_strength="0" notnull_strength="0"/>
    <constraint constraints="0" unique_strength="0" field="mont_subv" exp_strength="0" notnull_strength="0"/>
    <constraint constraints="0" unique_strength="0" field="annee_subv" exp_strength="0" notnull_strength="0"/>
  </constraints>
  <constraintExpressions>
    <constraint exp="" field="numero" desc=""/>
    <constraint exp="" field="nom_officiel" desc=""/>
    <constraint exp="" field="nom_usage" desc=""/>
    <constraint exp="" field="depart" desc=""/>
    <constraint exp="" field="arrivee" desc=""/>
    <constraint exp="" field="id_itineraire" desc=""/>
    <constraint exp="" field="annee_inscription" desc=""/>
    <constraint exp="CASE WHEN &quot;site_web&quot; IS NOT NULL THEN regexp_match(&quot;site_web&quot;, '^(?:http(s)?:\\/\\/)?[\\w.-]+(?:\\.[\\w\\.-]+)+[\\w\\-\\._~:/?#[\\]@!\\$&amp;''\\(\\)\\*\\+,;=.]+$') ELSE TRUE END" field="site_web" desc=""/>
    <constraint exp="" field="annee_ouverture" desc=""/>
    <constraint exp="" field="niveau_schema" desc=""/>
    <constraint exp="" field="est_inscrit" desc=""/>
    <constraint exp="" field="mont_subv" desc=""/>
    <constraint exp="" field="annee_subv" desc=""/>
  </constraintExpressions>
  <expressionfields/>
  <attributeactions>
    <defaultAction key="Canvas" value="{00000000-0000-0000-0000-000000000000}"/>
  </attributeactions>
  <attributetableconfig sortOrder="0" sortExpression="&quot;numero&quot;" actionWidgetStyle="dropDown">
    <columns>
      <column hidden="0" type="field" name="numero" width="-1"/>
      <column hidden="0" type="field" name="nom_officiel" width="-1"/>
      <column hidden="0" type="field" name="nom_usage" width="-1"/>
      <column hidden="0" type="field" name="depart" width="-1"/>
      <column hidden="0" type="field" name="arrivee" width="-1"/>
      <column hidden="0" type="field" name="annee_inscription" width="-1"/>
      <column hidden="0" type="field" name="site_web" width="-1"/>
      <column hidden="0" type="field" name="annee_ouverture" width="-1"/>
      <column hidden="0" type="field" name="niveau_schema" width="-1"/>
      <column hidden="0" type="field" name="est_inscrit" width="-1"/>
      <column hidden="1" type="actions" width="-1"/>
      <column hidden="0" type="field" name="mont_subv" width="-1"/>
      <column hidden="0" type="field" name="annee_subv" width="-1"/>
      <column hidden="0" type="field" name="id_itineraire" width="-1"/>
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
        <Option type="QString" name="nm-rel" value=""/>
      </config>
    </widget>
    <widget name="etape_6a0e5c72_95ba_4012_8a51_77f727a0c755_id_itineraire_itineraire_1bcf6d5d_e7e4_493e_89a3_45ebef699aea_id_iti">
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
  </widgets>
  <previewExpression>"numero"</previewExpression>
  <mapTip></mapTip>
  <layerGeometryType>4</layerGeometryType>
</qgis>
