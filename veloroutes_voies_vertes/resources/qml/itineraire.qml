<!DOCTYPE qgis PUBLIC 'http://mrcc.com/qgis.dtd' 'SYSTEM'>
<qgis hasScaleBasedVisibilityFlag="0" styleCategories="AllStyleCategories" readOnly="0" version="3.10.5-A Coruña" maxScale="0" minScale="1e+08">
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
  <geometryOptions geometryPrecision="0" removeDuplicateNodes="0">
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
    <alias name="" field="numero" index="0"/>
    <alias name="" field="nom_officiel" index="1"/>
    <alias name="" field="nom_usage" index="2"/>
    <alias name="" field="depart" index="3"/>
    <alias name="" field="arrivee" index="4"/>
    <alias name="" field="id_local" index="5"/>
    <alias name="" field="annee_inscription" index="6"/>
    <alias name="" field="site_web" index="7"/>
    <alias name="" field="annee_ouverture" index="8"/>
    <alias name="" field="niveau_schema" index="9"/>
    <alias name="" field="est_inscrit" index="10"/>
  </aliases>
  <excludeAttributesWMS/>
  <excludeAttributesWFS/>
  <defaults>
    <default applyOnUpdate="0" field="numero" expression=""/>
    <default applyOnUpdate="0" field="nom_officiel" expression=""/>
    <default applyOnUpdate="0" field="nom_usage" expression=""/>
    <default applyOnUpdate="0" field="depart" expression=""/>
    <default applyOnUpdate="0" field="arrivee" expression=""/>
    <default applyOnUpdate="0" field="id_local" expression=""/>
    <default applyOnUpdate="0" field="annee_inscription" expression=""/>
    <default applyOnUpdate="0" field="site_web" expression=""/>
    <default applyOnUpdate="0" field="annee_ouverture" expression=""/>
    <default applyOnUpdate="0" field="niveau_schema" expression=""/>
    <default applyOnUpdate="0" field="est_inscrit" expression=""/>
  </defaults>
  <constraints>
    <constraint notnull_strength="1" constraints="1" unique_strength="0" field="numero" exp_strength="0"/>
    <constraint notnull_strength="0" constraints="0" unique_strength="0" field="nom_officiel" exp_strength="0"/>
    <constraint notnull_strength="0" constraints="0" unique_strength="0" field="nom_usage" exp_strength="0"/>
    <constraint notnull_strength="0" constraints="0" unique_strength="0" field="depart" exp_strength="0"/>
    <constraint notnull_strength="0" constraints="0" unique_strength="0" field="arrivee" exp_strength="0"/>
    <constraint notnull_strength="1" constraints="3" unique_strength="1" field="id_local" exp_strength="0"/>
    <constraint notnull_strength="0" constraints="0" unique_strength="0" field="annee_inscription" exp_strength="0"/>
    <constraint notnull_strength="0" constraints="0" unique_strength="0" field="site_web" exp_strength="0"/>
    <constraint notnull_strength="0" constraints="0" unique_strength="0" field="annee_ouverture" exp_strength="0"/>
    <constraint notnull_strength="0" constraints="0" unique_strength="0" field="niveau_schema" exp_strength="0"/>
    <constraint notnull_strength="0" constraints="0" unique_strength="0" field="est_inscrit" exp_strength="0"/>
  </constraints>
  <constraintExpressions>
    <constraint desc="" exp="" field="numero"/>
    <constraint desc="" exp="" field="nom_officiel"/>
    <constraint desc="" exp="" field="nom_usage"/>
    <constraint desc="" exp="" field="depart"/>
    <constraint desc="" exp="" field="arrivee"/>
    <constraint desc="" exp="" field="id_local"/>
    <constraint desc="" exp="" field="annee_inscription"/>
    <constraint desc="" exp="" field="site_web"/>
    <constraint desc="" exp="" field="annee_ouverture"/>
    <constraint desc="" exp="" field="niveau_schema"/>
    <constraint desc="" exp="" field="est_inscrit"/>
  </constraintExpressions>
  <expressionfields/>
  <attributeactions>
    <defaultAction value="{00000000-0000-0000-0000-000000000000}" key="Canvas"/>
  </attributeactions>
  <attributetableconfig sortOrder="0" actionWidgetStyle="dropDown" sortExpression="">
    <columns>
      <column name="numero" hidden="0" width="-1" type="field"/>
      <column name="nom_officiel" hidden="0" width="-1" type="field"/>
      <column name="nom_usage" hidden="0" width="-1" type="field"/>
      <column name="depart" hidden="0" width="-1" type="field"/>
      <column name="arrivee" hidden="0" width="-1" type="field"/>
      <column name="id_local" hidden="0" width="127" type="field"/>
      <column name="annee_inscription" hidden="0" width="-1" type="field"/>
      <column name="site_web" hidden="0" width="-1" type="field"/>
      <column name="annee_ouverture" hidden="0" width="-1" type="field"/>
      <column name="niveau_schema" hidden="0" width="-1" type="field"/>
      <column name="est_inscrit" hidden="0" width="-1" type="field"/>
      <column hidden="1" width="-1" type="actions"/>
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
    <field name="arrivee" editable="1"/>
    <field name="depart" editable="1"/>
    <field name="est_inscrit" editable="1"/>
    <field name="id_local" editable="1"/>
    <field name="niveau_schema" editable="1"/>
    <field name="nom_officiel" editable="1"/>
    <field name="nom_usage" editable="1"/>
    <field name="numero" editable="1"/>
    <field name="site_web" editable="1"/>
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
        <Option name="nm-rel" value="etape_7d2fa857_5f19_42b8_ae43_c514540041db_id_portion_portion_43c846b8_2e8c_4dbc_a286_7779b2dc6274_id_local" type="QString"/>
      </config>
    </widget>
  </widgets>
  <previewExpression>id_local</previewExpression>
  <mapTip></mapTip>
  <layerGeometryType>4</layerGeometryType>
</qgis>
