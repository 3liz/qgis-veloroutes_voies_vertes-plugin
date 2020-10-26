<!DOCTYPE qgis PUBLIC 'http://mrcc.com/qgis.dtd' 'SYSTEM'>
<qgis version="3.10.10-A Coruña" hasScaleBasedVisibilityFlag="0" maxScale="0" styleCategories="AllStyleCategories" readOnly="0" minScale="1e+08">
  <flags>
    <Identifiable>1</Identifiable>
    <Removable>1</Removable>
    <Searchable>1</Searchable>
  </flags>
  <customproperties>
    <property key="dualview/previewExpressions" value="&quot;id_iti&quot;"/>
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
      <editWidget type="Hidden">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="annee_inscription">
      <editWidget type="DateTime">
        <config>
          <Option type="Map">
            <Option type="bool" name="allow_null" value="true"/>
            <Option type="bool" name="calendar_popup" value="true"/>
            <Option type="QString" name="display_format" value="yyyy-MM-dd"/>
            <Option type="QString" name="field_format" value="yyyy-MM-dd"/>
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
          <Option/>
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
                <Option type="QString" name="Vrai" value="T"/>
              </Option>
              <Option type="Map">
                <Option type="QString" name="False" value="F"/>
              </Option>
              <Option type="Map">
                <Option type="QString" name="Ne sais pas" value="N"/>
              </Option>
              <Option type="Map">
                <Option type="QString" name="&lt;NULL>" value="{2839923C-8B7D-419E-B84B-CA2FE9B80EC7}"/>
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
            <Option type="int" name="Max" value="2147483647"/>
            <Option type="int" name="Min" value="-2147483648"/>
            <Option type="int" name="Precision" value="0"/>
            <Option type="int" name="Step" value="1"/>
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
    <alias field="numero" index="0" name=""/>
    <alias field="nom_officiel" index="1" name=""/>
    <alias field="nom_usage" index="2" name=""/>
    <alias field="depart" index="3" name=""/>
    <alias field="arrivee" index="4" name=""/>
    <alias field="id_itineraire" index="5" name=""/>
    <alias field="annee_inscription" index="6" name=""/>
    <alias field="site_web" index="7" name=""/>
    <alias field="annee_ouverture" index="8" name=""/>
    <alias field="niveau_schema" index="9" name=""/>
    <alias field="est_inscrit" index="10" name=""/>
    <alias field="mont_subv" index="11" name=""/>
    <alias field="annee_subv" index="12" name=""/>
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
    <default expression="" field="niveau_schema" applyOnUpdate="0"/>
    <default expression="" field="est_inscrit" applyOnUpdate="0"/>
    <default expression="" field="mont_subv" applyOnUpdate="0"/>
    <default expression="" field="annee_subv" applyOnUpdate="0"/>
  </defaults>
  <constraints>
    <constraint field="numero" notnull_strength="1" constraints="1" exp_strength="0" unique_strength="0"/>
    <constraint field="nom_officiel" notnull_strength="0" constraints="0" exp_strength="0" unique_strength="0"/>
    <constraint field="nom_usage" notnull_strength="0" constraints="0" exp_strength="0" unique_strength="0"/>
    <constraint field="depart" notnull_strength="0" constraints="0" exp_strength="0" unique_strength="0"/>
    <constraint field="arrivee" notnull_strength="0" constraints="0" exp_strength="0" unique_strength="0"/>
    <constraint field="id_itineraire" notnull_strength="2" constraints="3" exp_strength="0" unique_strength="2"/>
    <constraint field="annee_inscription" notnull_strength="0" constraints="0" exp_strength="0" unique_strength="0"/>
    <constraint field="site_web" notnull_strength="0" constraints="0" exp_strength="0" unique_strength="0"/>
    <constraint field="annee_ouverture" notnull_strength="0" constraints="0" exp_strength="0" unique_strength="0"/>
    <constraint field="niveau_schema" notnull_strength="0" constraints="0" exp_strength="0" unique_strength="0"/>
    <constraint field="est_inscrit" notnull_strength="0" constraints="0" exp_strength="0" unique_strength="0"/>
    <constraint field="mont_subv" notnull_strength="0" constraints="0" exp_strength="0" unique_strength="0"/>
    <constraint field="annee_subv" notnull_strength="0" constraints="0" exp_strength="0" unique_strength="0"/>
  </constraints>
  <constraintExpressions>
    <constraint field="numero" exp="" desc=""/>
    <constraint field="nom_officiel" exp="" desc=""/>
    <constraint field="nom_usage" exp="" desc=""/>
    <constraint field="depart" exp="" desc=""/>
    <constraint field="arrivee" exp="" desc=""/>
    <constraint field="id_itineraire" exp="" desc=""/>
    <constraint field="annee_inscription" exp="" desc=""/>
    <constraint field="site_web" exp="" desc=""/>
    <constraint field="annee_ouverture" exp="" desc=""/>
    <constraint field="niveau_schema" exp="" desc=""/>
    <constraint field="est_inscrit" exp="" desc=""/>
    <constraint field="mont_subv" exp="" desc=""/>
    <constraint field="annee_subv" exp="" desc=""/>
  </constraintExpressions>
  <expressionfields/>
  <attributeactions>
    <defaultAction key="Canvas" value="{00000000-0000-0000-0000-000000000000}"/>
  </attributeactions>
  <attributetableconfig sortOrder="0" sortExpression="&quot;numero&quot;" actionWidgetStyle="dropDown">
    <columns>
      <column type="field" name="numero" hidden="0" width="-1"/>
      <column type="field" name="nom_officiel" hidden="0" width="-1"/>
      <column type="field" name="nom_usage" hidden="0" width="-1"/>
      <column type="field" name="depart" hidden="0" width="-1"/>
      <column type="field" name="arrivee" hidden="0" width="-1"/>
      <column type="field" name="annee_inscription" hidden="0" width="-1"/>
      <column type="field" name="site_web" hidden="0" width="-1"/>
      <column type="field" name="annee_ouverture" hidden="0" width="-1"/>
      <column type="field" name="niveau_schema" hidden="0" width="-1"/>
      <column type="field" name="est_inscrit" hidden="0" width="-1"/>
      <column type="actions" hidden="1" width="-1"/>
      <column type="field" name="mont_subv" hidden="0" width="-1"/>
      <column type="field" name="annee_subv" hidden="0" width="-1"/>
      <column type="field" name="id_itineraire" hidden="0" width="-1"/>
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
  <previewExpression>"id_iti"</previewExpression>
  <mapTip></mapTip>
  <layerGeometryType>4</layerGeometryType>
</qgis>
