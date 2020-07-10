<!DOCTYPE qgis PUBLIC 'http://mrcc.com/qgis.dtd' 'SYSTEM'>
<qgis maxScale="0" minScale="1e+08" readOnly="0" hasScaleBasedVisibilityFlag="0" version="3.10.5-A Coruña" styleCategories="AllStyleCategories">
  <flags>
    <Identifiable>1</Identifiable>
    <Removable>1</Removable>
    <Searchable>1</Searchable>
  </flags>
  <customproperties>
    <property value="id_iti" key="dualview/previewExpressions"/>
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
    <field name="id_iti">
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
  </aliases>
  <excludeAttributesWMS/>
  <excludeAttributesWFS/>
  <defaults>
    <default field="numero" applyOnUpdate="0" expression=""/>
    <default field="nom_officiel" applyOnUpdate="0" expression=""/>
    <default field="nom_usage" applyOnUpdate="0" expression=""/>
    <default field="depart" applyOnUpdate="0" expression=""/>
    <default field="arrivee" applyOnUpdate="0" expression=""/>
    <default field="id_iti" applyOnUpdate="0" expression=""/>
    <default field="annee_inscription" applyOnUpdate="0" expression=""/>
    <default field="site_web" applyOnUpdate="0" expression=""/>
    <default field="annee_ouverture" applyOnUpdate="0" expression=""/>
    <default field="niveau_schema" applyOnUpdate="0" expression=""/>
    <default field="est_inscrit" applyOnUpdate="0" expression=""/>
  </defaults>
  <constraints>
    <constraint unique_strength="0" notnull_strength="1" field="numero" constraints="1" exp_strength="0"/>
    <constraint unique_strength="0" notnull_strength="0" field="nom_officiel" constraints="0" exp_strength="0"/>
    <constraint unique_strength="0" notnull_strength="0" field="nom_usage" constraints="0" exp_strength="0"/>
    <constraint unique_strength="0" notnull_strength="0" field="depart" constraints="0" exp_strength="0"/>
    <constraint unique_strength="0" notnull_strength="0" field="arrivee" constraints="0" exp_strength="0"/>
    <constraint unique_strength="1" notnull_strength="1" field="id_iti" constraints="3" exp_strength="0"/>
    <constraint unique_strength="0" notnull_strength="0" field="annee_inscription" constraints="0" exp_strength="0"/>
    <constraint unique_strength="0" notnull_strength="0" field="site_web" constraints="0" exp_strength="0"/>
    <constraint unique_strength="0" notnull_strength="0" field="annee_ouverture" constraints="0" exp_strength="0"/>
    <constraint unique_strength="0" notnull_strength="0" field="niveau_schema" constraints="0" exp_strength="0"/>
    <constraint unique_strength="0" notnull_strength="0" field="est_inscrit" constraints="0" exp_strength="0"/>
  </constraints>
  <constraintExpressions>
    <constraint exp="" field="numero" desc=""/>
    <constraint exp="" field="nom_officiel" desc=""/>
    <constraint exp="" field="nom_usage" desc=""/>
    <constraint exp="" field="depart" desc=""/>
    <constraint exp="" field="arrivee" desc=""/>
    <constraint exp="" field="id_iti" desc=""/>
    <constraint exp="" field="annee_inscription" desc=""/>
    <constraint exp="" field="site_web" desc=""/>
    <constraint exp="" field="annee_ouverture" desc=""/>
    <constraint exp="" field="niveau_schema" desc=""/>
    <constraint exp="" field="est_inscrit" desc=""/>
  </constraintExpressions>
  <expressionfields/>
  <attributeactions>
    <defaultAction value="{00000000-0000-0000-0000-000000000000}" key="Canvas"/>
  </attributeactions>
  <attributetableconfig sortExpression="" actionWidgetStyle="dropDown" sortOrder="0">
    <columns>
      <column type="field" name="numero" width="-1" hidden="0"/>
      <column type="field" name="nom_officiel" width="-1" hidden="0"/>
      <column type="field" name="nom_usage" width="-1" hidden="0"/>
      <column type="field" name="depart" width="-1" hidden="0"/>
      <column type="field" name="arrivee" width="-1" hidden="0"/>
      <column type="field" name="id_iti" width="127" hidden="0"/>
      <column type="field" name="annee_inscription" width="-1" hidden="0"/>
      <column type="field" name="site_web" width="-1" hidden="0"/>
      <column type="field" name="annee_ouverture" width="-1" hidden="0"/>
      <column type="field" name="niveau_schema" width="-1" hidden="0"/>
      <column type="field" name="est_inscrit" width="-1" hidden="0"/>
      <column type="actions" width="-1" hidden="1"/>
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
    <field name="id_iti" editable="0"/>
    <field name="niveau_schema" editable="1"/>
    <field name="nom_officiel" editable="1"/>
    <field name="nom_usage" editable="1"/>
    <field name="numero" editable="1"/>
    <field name="site_web" editable="1"/>
  </editable>
  <labelOnTop>
    <field labelOnTop="0" name="annee_inscription"/>
    <field labelOnTop="0" name="annee_ouverture"/>
    <field labelOnTop="0" name="arrivee"/>
    <field labelOnTop="0" name="depart"/>
    <field labelOnTop="0" name="est_inscrit"/>
    <field labelOnTop="0" name="id_iti"/>
    <field labelOnTop="0" name="niveau_schema"/>
    <field labelOnTop="0" name="nom_officiel"/>
    <field labelOnTop="0" name="nom_usage"/>
    <field labelOnTop="0" name="numero"/>
    <field labelOnTop="0" name="site_web"/>
  </labelOnTop>
  <widgets>
    <widget name="etape_7d2fa857_5f19_42b8_ae43_c514540041db_id_itineraire_itineraire_c47affa8_3ced_43b5_b85b_cb009c7b432a_id_iti">
      <config type="Map">
        <Option type="QString" name="nm-rel" value=""/>
      </config>
    </widget>
  </widgets>
  <previewExpression>id_iti</previewExpression>
  <mapTip></mapTip>
  <layerGeometryType>4</layerGeometryType>
</qgis>
