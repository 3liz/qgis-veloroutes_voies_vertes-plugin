<!DOCTYPE qgis PUBLIC 'http://mrcc.com/qgis.dtd' 'SYSTEM'>
<qgis hasScaleBasedVisibilityFlag="0" readOnly="0" minScale="1e+08" styleCategories="AllStyleCategories" version="3.10.5-A Coruña" maxScale="0">
  <flags>
    <Identifiable>1</Identifiable>
    <Removable>1</Removable>
    <Searchable>1</Searchable>
  </flags>
  <customproperties>
    <property value="id_local" key="dualview/previewExpressions"/>
    <property value="0" key="embeddedWidgets/count"/>
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
    <field name="annee_inscription">
      <editWidget type="DateTime">
        <config>
          <Option type="Map">
            <Option name="allow_null" value="true" type="bool"/>
            <Option name="calendar_popup" value="true" type="bool"/>
            <Option name="display_format" value="yyyy-MM-dd" type="QString"/>
            <Option name="field_format" value="yyyy-MM-dd" type="QString"/>
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
          <Option/>
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
                <Option name="Vrai" value="T" type="QString"/>
              </Option>
              <Option type="Map">
                <Option name="False" value="F" type="QString"/>
              </Option>
              <Option type="Map">
                <Option name="Ne sais pas" value="N" type="QString"/>
              </Option>
              <Option type="Map">
                <Option name="&lt;NULL>" value="{2839923C-8B7D-419E-B84B-CA2FE9B80EC7}" type="QString"/>
              </Option>
            </Option>
          </Option>
        </config>
      </editWidget>
    </field>
  </fieldConfiguration>
  <aliases>
    <alias field="numero" name="" index="0"/>
    <alias field="nom_officiel" name="" index="1"/>
    <alias field="nom_usage" name="" index="2"/>
    <alias field="depart" name="" index="3"/>
    <alias field="arrivee" name="" index="4"/>
    <alias field="id_local" name="" index="5"/>
    <alias field="annee_inscription" name="" index="6"/>
    <alias field="site_web" name="" index="7"/>
    <alias field="annee_ouverture" name="" index="8"/>
    <alias field="niveau_schema" name="" index="9"/>
    <alias field="est_inscrit" name="" index="10"/>
  </aliases>
  <excludeAttributesWMS/>
  <excludeAttributesWFS/>
  <defaults>
    <default field="numero" applyOnUpdate="0" expression=""/>
    <default field="nom_officiel" applyOnUpdate="0" expression=""/>
    <default field="nom_usage" applyOnUpdate="0" expression=""/>
    <default field="depart" applyOnUpdate="0" expression=""/>
    <default field="arrivee" applyOnUpdate="0" expression=""/>
    <default field="id_local" applyOnUpdate="0" expression=""/>
    <default field="annee_inscription" applyOnUpdate="0" expression=""/>
    <default field="site_web" applyOnUpdate="0" expression=""/>
    <default field="annee_ouverture" applyOnUpdate="0" expression=""/>
    <default field="niveau_schema" applyOnUpdate="0" expression=""/>
    <default field="est_inscrit" applyOnUpdate="0" expression=""/>
  </defaults>
  <constraints>
    <constraint field="numero" constraints="1" unique_strength="0" exp_strength="0" notnull_strength="1"/>
    <constraint field="nom_officiel" constraints="0" unique_strength="0" exp_strength="0" notnull_strength="0"/>
    <constraint field="nom_usage" constraints="0" unique_strength="0" exp_strength="0" notnull_strength="0"/>
    <constraint field="depart" constraints="0" unique_strength="0" exp_strength="0" notnull_strength="0"/>
    <constraint field="arrivee" constraints="0" unique_strength="0" exp_strength="0" notnull_strength="0"/>
    <constraint field="id_local" constraints="3" unique_strength="1" exp_strength="0" notnull_strength="1"/>
    <constraint field="annee_inscription" constraints="0" unique_strength="0" exp_strength="0" notnull_strength="0"/>
    <constraint field="site_web" constraints="0" unique_strength="0" exp_strength="0" notnull_strength="0"/>
    <constraint field="annee_ouverture" constraints="0" unique_strength="0" exp_strength="0" notnull_strength="0"/>
    <constraint field="niveau_schema" constraints="0" unique_strength="0" exp_strength="0" notnull_strength="0"/>
    <constraint field="est_inscrit" constraints="0" unique_strength="0" exp_strength="0" notnull_strength="0"/>
  </constraints>
  <constraintExpressions>
    <constraint field="numero" exp="" desc=""/>
    <constraint field="nom_officiel" exp="" desc=""/>
    <constraint field="nom_usage" exp="" desc=""/>
    <constraint field="depart" exp="" desc=""/>
    <constraint field="arrivee" exp="" desc=""/>
    <constraint field="id_local" exp="" desc=""/>
    <constraint field="annee_inscription" exp="" desc=""/>
    <constraint field="site_web" exp="" desc=""/>
    <constraint field="annee_ouverture" exp="" desc=""/>
    <constraint field="niveau_schema" exp="" desc=""/>
    <constraint field="est_inscrit" exp="" desc=""/>
  </constraintExpressions>
  <expressionfields/>
  <attributeactions>
    <defaultAction value="{00000000-0000-0000-0000-000000000000}" key="Canvas"/>
  </attributeactions>
  <attributetableconfig sortExpression="" sortOrder="0" actionWidgetStyle="dropDown">
    <columns>
      <column width="-1" name="numero" hidden="0" type="field"/>
      <column width="-1" name="nom_officiel" hidden="0" type="field"/>
      <column width="-1" name="nom_usage" hidden="0" type="field"/>
      <column width="-1" name="depart" hidden="0" type="field"/>
      <column width="-1" name="arrivee" hidden="0" type="field"/>
      <column width="127" name="id_local" hidden="0" type="field"/>
      <column width="-1" name="annee_inscription" hidden="0" type="field"/>
      <column width="-1" name="site_web" hidden="0" type="field"/>
      <column width="-1" name="annee_ouverture" hidden="0" type="field"/>
      <column width="-1" name="niveau_schema" hidden="0" type="field"/>
      <column width="-1" name="est_inscrit" hidden="0" type="field"/>
      <column width="-1" hidden="1" type="actions"/>
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
    <field editable="1" name="annee_inscription"/>
    <field editable="1" name="annee_ouverture"/>
    <field editable="1" name="arrivee"/>
    <field editable="1" name="depart"/>
    <field editable="1" name="est_inscrit"/>
    <field editable="1" name="id_local"/>
    <field editable="1" name="niveau_schema"/>
    <field editable="1" name="nom_officiel"/>
    <field editable="1" name="nom_usage"/>
    <field editable="1" name="numero"/>
    <field editable="1" name="site_web"/>
  </editable>
  <labelOnTop>
    <field name="annee_inscription" labelOnTop="0"/>
    <field name="annee_ouverture" labelOnTop="0"/>
    <field name="arrivee" labelOnTop="0"/>
    <field name="depart" labelOnTop="0"/>
    <field name="est_inscrit" labelOnTop="0"/>
    <field name="id_local" labelOnTop="0"/>
    <field name="niveau_schema" labelOnTop="0"/>
    <field name="nom_officiel" labelOnTop="0"/>
    <field name="nom_usage" labelOnTop="0"/>
    <field name="numero" labelOnTop="0"/>
    <field name="site_web" labelOnTop="0"/>
  </labelOnTop>
  <widgets>
    <widget name="etape_7d2fa857_5f19_42b8_ae43_c514540041db_id_itineraire_itineraire_c47affa8_3ced_43b5_b85b_cb009c7b432a_id_local">
      <config type="Map">
        <Option name="nm-rel" value="" type="QString"/>
      </config>
    </widget>
  </widgets>
  <previewExpression>id_local</previewExpression>
  <mapTip></mapTip>
  <layerGeometryType>4</layerGeometryType>
</qgis>
