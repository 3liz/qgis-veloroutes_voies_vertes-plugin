<!DOCTYPE qgis PUBLIC 'http://mrcc.com/qgis.dtd' 'SYSTEM'>
<qgis hasScaleBasedVisibilityFlag="0" maxScale="0" minScale="1e+08" styleCategories="AllStyleCategories" version="3.10.10-A Coruña" readOnly="0">
  <flags>
    <Identifiable>1</Identifiable>
    <Removable>1</Removable>
    <Searchable>1</Searchable>
  </flags>
  <customproperties>
    <property value="&quot;id_iti&quot;" key="dualview/previewExpressions"/>
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
    <field name="id_iti">
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
            <Option value="true" name="calendar_popup" type="bool"/>
            <Option value="yyyy-MM-dd" name="display_format" type="QString"/>
            <Option value="yyyy-MM-dd" name="field_format" type="QString"/>
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
                <Option value="T" name="Vrai" type="QString"/>
              </Option>
              <Option type="Map">
                <Option value="F" name="False" type="QString"/>
              </Option>
              <Option type="Map">
                <Option value="N" name="Ne sais pas" type="QString"/>
              </Option>
              <Option type="Map">
                <Option value="{2839923C-8B7D-419E-B84B-CA2FE9B80EC7}" name="&lt;NULL>" type="QString"/>
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
            <Option value="2147483647" name="Max" type="int"/>
            <Option value="-2147483648" name="Min" type="int"/>
            <Option value="0" name="Precision" type="int"/>
            <Option value="1" name="Step" type="int"/>
            <Option value="SpinBox" name="Style" type="QString"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="annee_subv">
      <editWidget type="Range">
        <config>
          <Option type="Map">
            <Option value="true" name="AllowNull" type="bool"/>
            <Option value="2147483647" name="Max" type="int"/>
            <Option value="2000" name="Min" type="int"/>
            <Option value="0" name="Precision" type="int"/>
            <Option value="1" name="Step" type="int"/>
            <Option value="SpinBox" name="Style" type="QString"/>
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
    <alias name="" field="id_iti" index="5"/>
    <alias name="" field="annee_inscription" index="6"/>
    <alias name="" field="site_web" index="7"/>
    <alias name="" field="annee_ouverture" index="8"/>
    <alias name="" field="niveau_schema" index="9"/>
    <alias name="" field="est_inscrit" index="10"/>
    <alias name="" field="mont_subv" index="11"/>
    <alias name="" field="annee_subv" index="12"/>
  </aliases>
  <excludeAttributesWMS/>
  <excludeAttributesWFS/>
  <defaults>
    <default applyOnUpdate="0" field="numero" expression=""/>
    <default applyOnUpdate="0" field="nom_officiel" expression=""/>
    <default applyOnUpdate="0" field="nom_usage" expression=""/>
    <default applyOnUpdate="0" field="depart" expression=""/>
    <default applyOnUpdate="0" field="arrivee" expression=""/>
    <default applyOnUpdate="0" field="id_iti" expression=""/>
    <default applyOnUpdate="0" field="annee_inscription" expression=""/>
    <default applyOnUpdate="0" field="site_web" expression=""/>
    <default applyOnUpdate="0" field="annee_ouverture" expression=""/>
    <default applyOnUpdate="0" field="niveau_schema" expression=""/>
    <default applyOnUpdate="0" field="est_inscrit" expression=""/>
    <default applyOnUpdate="0" field="mont_subv" expression=""/>
    <default applyOnUpdate="0" field="annee_subv" expression=""/>
  </defaults>
  <constraints>
    <constraint unique_strength="0" notnull_strength="1" constraints="1" field="numero" exp_strength="0"/>
    <constraint unique_strength="0" notnull_strength="0" constraints="0" field="nom_officiel" exp_strength="0"/>
    <constraint unique_strength="0" notnull_strength="0" constraints="0" field="nom_usage" exp_strength="0"/>
    <constraint unique_strength="0" notnull_strength="0" constraints="0" field="depart" exp_strength="0"/>
    <constraint unique_strength="0" notnull_strength="0" constraints="0" field="arrivee" exp_strength="0"/>
    <constraint unique_strength="2" notnull_strength="2" constraints="3" field="id_iti" exp_strength="0"/>
    <constraint unique_strength="0" notnull_strength="0" constraints="0" field="annee_inscription" exp_strength="0"/>
    <constraint unique_strength="0" notnull_strength="0" constraints="0" field="site_web" exp_strength="0"/>
    <constraint unique_strength="0" notnull_strength="0" constraints="0" field="annee_ouverture" exp_strength="0"/>
    <constraint unique_strength="0" notnull_strength="0" constraints="0" field="niveau_schema" exp_strength="0"/>
    <constraint unique_strength="0" notnull_strength="0" constraints="0" field="est_inscrit" exp_strength="0"/>
    <constraint unique_strength="0" notnull_strength="0" constraints="0" field="mont_subv" exp_strength="0"/>
    <constraint unique_strength="0" notnull_strength="0" constraints="0" field="annee_subv" exp_strength="0"/>
  </constraints>
  <constraintExpressions>
    <constraint exp="" desc="" field="numero"/>
    <constraint exp="" desc="" field="nom_officiel"/>
    <constraint exp="" desc="" field="nom_usage"/>
    <constraint exp="" desc="" field="depart"/>
    <constraint exp="" desc="" field="arrivee"/>
    <constraint exp="" desc="" field="id_iti"/>
    <constraint exp="" desc="" field="annee_inscription"/>
    <constraint exp="" desc="" field="site_web"/>
    <constraint exp="" desc="" field="annee_ouverture"/>
    <constraint exp="" desc="" field="niveau_schema"/>
    <constraint exp="" desc="" field="est_inscrit"/>
    <constraint exp="" desc="" field="mont_subv"/>
    <constraint exp="" desc="" field="annee_subv"/>
  </constraintExpressions>
  <expressionfields/>
  <attributeactions>
    <defaultAction value="{00000000-0000-0000-0000-000000000000}" key="Canvas"/>
  </attributeactions>
  <attributetableconfig sortOrder="0" actionWidgetStyle="dropDown" sortExpression="&quot;numero&quot;">
    <columns>
      <column width="-1" name="numero" hidden="0" type="field"/>
      <column width="-1" name="nom_officiel" hidden="0" type="field"/>
      <column width="-1" name="nom_usage" hidden="0" type="field"/>
      <column width="-1" name="depart" hidden="0" type="field"/>
      <column width="-1" name="arrivee" hidden="0" type="field"/>
      <column width="127" name="id_iti" hidden="0" type="field"/>
      <column width="-1" name="annee_inscription" hidden="0" type="field"/>
      <column width="-1" name="site_web" hidden="0" type="field"/>
      <column width="-1" name="annee_ouverture" hidden="0" type="field"/>
      <column width="-1" name="niveau_schema" hidden="0" type="field"/>
      <column width="-1" name="est_inscrit" hidden="0" type="field"/>
      <column width="-1" hidden="1" type="actions"/>
      <column width="-1" name="mont_subv" hidden="0" type="field"/>
      <column width="-1" name="annee_subv" hidden="0" type="field"/>
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
    <field editable="1" name="annee_subv"/>
    <field editable="1" name="arrivee"/>
    <field editable="1" name="depart"/>
    <field editable="1" name="est_inscrit"/>
    <field editable="0" name="id_iti"/>
    <field editable="1" name="mont_subv"/>
    <field editable="1" name="niveau_schema"/>
    <field editable="1" name="nom_officiel"/>
    <field editable="1" name="nom_usage"/>
    <field editable="1" name="numero"/>
    <field editable="1" name="site_web"/>
  </editable>
  <labelOnTop>
    <field labelOnTop="0" name="annee_inscription"/>
    <field labelOnTop="0" name="annee_ouverture"/>
    <field labelOnTop="0" name="annee_subv"/>
    <field labelOnTop="0" name="arrivee"/>
    <field labelOnTop="0" name="depart"/>
    <field labelOnTop="0" name="est_inscrit"/>
    <field labelOnTop="0" name="id_iti"/>
    <field labelOnTop="0" name="mont_subv"/>
    <field labelOnTop="0" name="niveau_schema"/>
    <field labelOnTop="0" name="nom_officiel"/>
    <field labelOnTop="0" name="nom_usage"/>
    <field labelOnTop="0" name="numero"/>
    <field labelOnTop="0" name="site_web"/>
  </labelOnTop>
  <widgets>
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
  </widgets>
  <previewExpression>"id_iti"</previewExpression>
  <mapTip></mapTip>
  <layerGeometryType>4</layerGeometryType>
</qgis>
