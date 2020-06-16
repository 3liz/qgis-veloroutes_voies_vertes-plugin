<!DOCTYPE qgis PUBLIC 'http://mrcc.com/qgis.dtd' 'SYSTEM'>
<qgis minScale="1e+08" simplifyMaxScale="1" readOnly="0" maxScale="0" simplifyAlgorithm="0" labelsEnabled="0" simplifyDrawingHints="1" simplifyDrawingTol="1" styleCategories="AllStyleCategories" hasScaleBasedVisibilityFlag="0" version="3.10.5-A Coruña" simplifyLocal="1">
  <flags>
    <Identifiable>1</Identifiable>
    <Removable>1</Removable>
    <Searchable>1</Searchable>
  </flags>
  <renderer-v2 symbollevels="0" enableorderby="0" type="RuleRenderer" forceraster="0">
    <rules key="{9004152c-ebea-4b9c-bad3-cbaa7e4ec10e}">
      <rule filter="ELSE" symbol="0" checkstate="0" key="{04260390-4615-496a-97bf-4fb78ed1465c}"/>
      <rule filter=" &quot;statut&quot; = 'ASP'  or  &quot;statut&quot; = 'PCY'  or  &quot;statut&quot; =  'VV' or &quot;statut&quot; = 'BCY' and  &quot;revetement&quot; = 'LIS' " symbol="1" label="Voie dédiée" key="{c65d6d33-a6ec-4881-b5ba-d3706a340bea}"/>
      <rule filter=" &quot;statut&quot; = 'ASP'  or  &quot;statut&quot; = 'PCY'  or  &quot;statut&quot; =  'VV' and  (&quot;revetement&quot; = 'RUG'  or &quot;revetement&quot; = 'MEU')" symbol="2" label="Voie dédiée" key="{1614c6c8-8b2f-4915-93a4-528dbf54f227}"/>
      <rule filter=" &quot;statut&quot; = 'RTE' or &quot;statut&quot; = 'ICA' and  &quot;revetement&quot; = 'LIS' " symbol="3" label="voie partagée" key="{f760d85d-6a63-4667-af8d-d5d51ce14dcb}"/>
      <rule filter=" &quot;statut&quot; = 'RTE' or &quot;statut&quot; = 'ICA' and  (&quot;revetement&quot; = 'RUG'  or &quot;revetement&quot; = 'MEU')" symbol="4" label="voie partagée" key="{e91167ef-d66e-4aae-b29d-c5140de7abb0}"/>
    </rules>
    <symbols>
      <symbol force_rhr="0" name="0" alpha="1" type="line" clip_to_extent="1">
        <layer class="SimpleLine" pass="0" locked="0" enabled="1">
          <prop v="square" k="capstyle"/>
          <prop v="5;2" k="customdash"/>
          <prop v="3x:0,0,0,0,0,0" k="customdash_map_unit_scale"/>
          <prop v="MM" k="customdash_unit"/>
          <prop v="0" k="draw_inside_polygon"/>
          <prop v="bevel" k="joinstyle"/>
          <prop v="83,27,204,255" k="line_color"/>
          <prop v="solid" k="line_style"/>
          <prop v="0.26" k="line_width"/>
          <prop v="MM" k="line_width_unit"/>
          <prop v="0" k="offset"/>
          <prop v="3x:0,0,0,0,0,0" k="offset_map_unit_scale"/>
          <prop v="MM" k="offset_unit"/>
          <prop v="0" k="ring_filter"/>
          <prop v="0" k="use_custom_dash"/>
          <prop v="3x:0,0,0,0,0,0" k="width_map_unit_scale"/>
          <data_defined_properties>
            <Option type="Map">
              <Option name="name" type="QString" value=""/>
              <Option name="properties"/>
              <Option name="type" type="QString" value="collection"/>
            </Option>
          </data_defined_properties>
        </layer>
      </symbol>
      <symbol force_rhr="0" name="1" alpha="1" type="line" clip_to_extent="1">
        <layer class="SimpleLine" pass="0" locked="0" enabled="1">
          <prop v="square" k="capstyle"/>
          <prop v="5;2" k="customdash"/>
          <prop v="3x:0,0,0,0,0,0" k="customdash_map_unit_scale"/>
          <prop v="MM" k="customdash_unit"/>
          <prop v="0" k="draw_inside_polygon"/>
          <prop v="bevel" k="joinstyle"/>
          <prop v="30,194,19,255" k="line_color"/>
          <prop v="solid" k="line_style"/>
          <prop v="0.46" k="line_width"/>
          <prop v="MM" k="line_width_unit"/>
          <prop v="0" k="offset"/>
          <prop v="3x:0,0,0,0,0,0" k="offset_map_unit_scale"/>
          <prop v="MM" k="offset_unit"/>
          <prop v="0" k="ring_filter"/>
          <prop v="0" k="use_custom_dash"/>
          <prop v="3x:0,0,0,0,0,0" k="width_map_unit_scale"/>
          <data_defined_properties>
            <Option type="Map">
              <Option name="name" type="QString" value=""/>
              <Option name="properties"/>
              <Option name="type" type="QString" value="collection"/>
            </Option>
          </data_defined_properties>
        </layer>
      </symbol>
      <symbol force_rhr="0" name="2" alpha="1" type="line" clip_to_extent="1">
        <layer class="SimpleLine" pass="0" locked="0" enabled="1">
          <prop v="square" k="capstyle"/>
          <prop v="5;2" k="customdash"/>
          <prop v="3x:0,0,0,0,0,0" k="customdash_map_unit_scale"/>
          <prop v="MM" k="customdash_unit"/>
          <prop v="0" k="draw_inside_polygon"/>
          <prop v="bevel" k="joinstyle"/>
          <prop v="30,194,19,255" k="line_color"/>
          <prop v="dash" k="line_style"/>
          <prop v="0.46" k="line_width"/>
          <prop v="MM" k="line_width_unit"/>
          <prop v="0" k="offset"/>
          <prop v="3x:0,0,0,0,0,0" k="offset_map_unit_scale"/>
          <prop v="MM" k="offset_unit"/>
          <prop v="0" k="ring_filter"/>
          <prop v="0" k="use_custom_dash"/>
          <prop v="3x:0,0,0,0,0,0" k="width_map_unit_scale"/>
          <data_defined_properties>
            <Option type="Map">
              <Option name="name" type="QString" value=""/>
              <Option name="properties"/>
              <Option name="type" type="QString" value="collection"/>
            </Option>
          </data_defined_properties>
        </layer>
      </symbol>
      <symbol force_rhr="0" name="3" alpha="1" type="line" clip_to_extent="1">
        <layer class="SimpleLine" pass="0" locked="0" enabled="1">
          <prop v="square" k="capstyle"/>
          <prop v="5;2" k="customdash"/>
          <prop v="3x:0,0,0,0,0,0" k="customdash_map_unit_scale"/>
          <prop v="MM" k="customdash_unit"/>
          <prop v="0" k="draw_inside_polygon"/>
          <prop v="bevel" k="joinstyle"/>
          <prop v="22,105,14,255" k="line_color"/>
          <prop v="solid" k="line_style"/>
          <prop v="0.46" k="line_width"/>
          <prop v="MM" k="line_width_unit"/>
          <prop v="0" k="offset"/>
          <prop v="3x:0,0,0,0,0,0" k="offset_map_unit_scale"/>
          <prop v="MM" k="offset_unit"/>
          <prop v="0" k="ring_filter"/>
          <prop v="0" k="use_custom_dash"/>
          <prop v="3x:0,0,0,0,0,0" k="width_map_unit_scale"/>
          <data_defined_properties>
            <Option type="Map">
              <Option name="name" type="QString" value=""/>
              <Option name="properties"/>
              <Option name="type" type="QString" value="collection"/>
            </Option>
          </data_defined_properties>
        </layer>
      </symbol>
      <symbol force_rhr="0" name="4" alpha="1" type="line" clip_to_extent="1">
        <layer class="SimpleLine" pass="0" locked="0" enabled="1">
          <prop v="square" k="capstyle"/>
          <prop v="5;2" k="customdash"/>
          <prop v="3x:0,0,0,0,0,0" k="customdash_map_unit_scale"/>
          <prop v="MM" k="customdash_unit"/>
          <prop v="0" k="draw_inside_polygon"/>
          <prop v="bevel" k="joinstyle"/>
          <prop v="22,105,14,255" k="line_color"/>
          <prop v="dash" k="line_style"/>
          <prop v="0.46" k="line_width"/>
          <prop v="MM" k="line_width_unit"/>
          <prop v="0" k="offset"/>
          <prop v="3x:0,0,0,0,0,0" k="offset_map_unit_scale"/>
          <prop v="MM" k="offset_unit"/>
          <prop v="0" k="ring_filter"/>
          <prop v="0" k="use_custom_dash"/>
          <prop v="3x:0,0,0,0,0,0" k="width_map_unit_scale"/>
          <data_defined_properties>
            <Option type="Map">
              <Option name="name" type="QString" value=""/>
              <Option name="properties"/>
              <Option name="type" type="QString" value="collection"/>
            </Option>
          </data_defined_properties>
        </layer>
      </symbol>
    </symbols>
  </renderer-v2>
  <customproperties>
    <property key="dualview/previewExpressions">
      <value>id_local</value>
    </property>
    <property value="0" key="embeddedWidgets/count"/>
    <property key="variableNames"/>
    <property key="variableValues"/>
  </customproperties>
  <blendMode>0</blendMode>
  <featureBlendMode>0</featureBlendMode>
  <layerOpacity>1</layerOpacity>
  <SingleCategoryDiagramRenderer diagramType="Histogram" attributeLegend="1">
    <DiagramCategory enabled="0" lineSizeType="MM" backgroundColor="#ffffff" opacity="1" maxScaleDenominator="1e+08" penColor="#000000" width="15" scaleBasedVisibility="0" minimumSize="0" penWidth="0" height="15" sizeScale="3x:0,0,0,0,0,0" penAlpha="255" sizeType="MM" lineSizeScale="3x:0,0,0,0,0,0" minScaleDenominator="0" rotationOffset="270" backgroundAlpha="255" barWidth="5" scaleDependency="Area" labelPlacementMethod="XHeight" diagramOrientation="Up">
      <fontProperties description=".AppleSystemUIFont,13,-1,5,50,0,0,0,0,0" style=""/>
      <attribute field="" label="" color="#000000"/>
    </DiagramCategory>
  </SingleCategoryDiagramRenderer>
  <DiagramLayerSettings linePlacementFlags="18" placement="2" dist="0" priority="0" zIndex="0" obstacle="0" showAll="1">
    <properties>
      <Option type="Map">
        <Option name="name" type="QString" value=""/>
        <Option name="properties"/>
        <Option name="type" type="QString" value="collection"/>
      </Option>
    </properties>
  </DiagramLayerSettings>
  <geometryOptions removeDuplicateNodes="0" geometryPrecision="0">
    <activeChecks/>
    <checkConfiguration/>
  </geometryOptions>
  <fieldConfiguration>
    <field name="id_local">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="annee_ouve">
      <editWidget type="DateTime">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="date_saisi">
      <editWidget type="DateTime">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="src_geom">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="src_annee">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="avancement">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="revetement">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="statut">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="gestionnai">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="proprietai">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="precision">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="sens_uniqu">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="geometrie_">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
  </fieldConfiguration>
  <aliases>
    <alias field="id_local" name="" index="0"/>
    <alias field="annee_ouve" name="" index="1"/>
    <alias field="date_saisi" name="" index="2"/>
    <alias field="src_geom" name="" index="3"/>
    <alias field="src_annee" name="" index="4"/>
    <alias field="avancement" name="" index="5"/>
    <alias field="revetement" name="" index="6"/>
    <alias field="statut" name="" index="7"/>
    <alias field="gestionnai" name="" index="8"/>
    <alias field="proprietai" name="" index="9"/>
    <alias field="precision" name="" index="10"/>
    <alias field="sens_uniqu" name="" index="11"/>
    <alias field="geometrie_" name="" index="12"/>
  </aliases>
  <excludeAttributesWMS/>
  <excludeAttributesWFS/>
  <defaults>
    <default field="id_local" applyOnUpdate="0" expression=""/>
    <default field="annee_ouve" applyOnUpdate="0" expression=""/>
    <default field="date_saisi" applyOnUpdate="0" expression=""/>
    <default field="src_geom" applyOnUpdate="0" expression=""/>
    <default field="src_annee" applyOnUpdate="0" expression=""/>
    <default field="avancement" applyOnUpdate="0" expression=""/>
    <default field="revetement" applyOnUpdate="0" expression=""/>
    <default field="statut" applyOnUpdate="0" expression=""/>
    <default field="gestionnai" applyOnUpdate="0" expression=""/>
    <default field="proprietai" applyOnUpdate="0" expression=""/>
    <default field="precision" applyOnUpdate="0" expression=""/>
    <default field="sens_uniqu" applyOnUpdate="0" expression=""/>
    <default field="geometrie_" applyOnUpdate="0" expression=""/>
  </defaults>
  <constraints>
    <constraint field="id_local" exp_strength="0" unique_strength="0" notnull_strength="0" constraints="0"/>
    <constraint field="annee_ouve" exp_strength="0" unique_strength="0" notnull_strength="0" constraints="0"/>
    <constraint field="date_saisi" exp_strength="0" unique_strength="0" notnull_strength="0" constraints="0"/>
    <constraint field="src_geom" exp_strength="0" unique_strength="0" notnull_strength="0" constraints="0"/>
    <constraint field="src_annee" exp_strength="0" unique_strength="0" notnull_strength="0" constraints="0"/>
    <constraint field="avancement" exp_strength="0" unique_strength="0" notnull_strength="0" constraints="0"/>
    <constraint field="revetement" exp_strength="0" unique_strength="0" notnull_strength="0" constraints="0"/>
    <constraint field="statut" exp_strength="0" unique_strength="0" notnull_strength="0" constraints="0"/>
    <constraint field="gestionnai" exp_strength="0" unique_strength="0" notnull_strength="0" constraints="0"/>
    <constraint field="proprietai" exp_strength="0" unique_strength="0" notnull_strength="0" constraints="0"/>
    <constraint field="precision" exp_strength="0" unique_strength="0" notnull_strength="0" constraints="0"/>
    <constraint field="sens_uniqu" exp_strength="0" unique_strength="0" notnull_strength="0" constraints="0"/>
    <constraint field="geometrie_" exp_strength="0" unique_strength="0" notnull_strength="0" constraints="0"/>
  </constraints>
  <constraintExpressions>
    <constraint field="id_local" exp="" desc=""/>
    <constraint field="annee_ouve" exp="" desc=""/>
    <constraint field="date_saisi" exp="" desc=""/>
    <constraint field="src_geom" exp="" desc=""/>
    <constraint field="src_annee" exp="" desc=""/>
    <constraint field="avancement" exp="" desc=""/>
    <constraint field="revetement" exp="" desc=""/>
    <constraint field="statut" exp="" desc=""/>
    <constraint field="gestionnai" exp="" desc=""/>
    <constraint field="proprietai" exp="" desc=""/>
    <constraint field="precision" exp="" desc=""/>
    <constraint field="sens_uniqu" exp="" desc=""/>
    <constraint field="geometrie_" exp="" desc=""/>
  </constraintExpressions>
  <expressionfields/>
  <attributeactions>
    <defaultAction value="{00000000-0000-0000-0000-000000000000}" key="Canvas"/>
  </attributeactions>
  <attributetableconfig actionWidgetStyle="dropDown" sortExpression="" sortOrder="0">
    <columns>
      <column width="-1" hidden="0" name="id_local" type="field"/>
      <column width="-1" hidden="0" name="annee_ouve" type="field"/>
      <column width="-1" hidden="0" name="date_saisi" type="field"/>
      <column width="-1" hidden="0" name="src_geom" type="field"/>
      <column width="-1" hidden="0" name="src_annee" type="field"/>
      <column width="-1" hidden="0" name="avancement" type="field"/>
      <column width="-1" hidden="0" name="revetement" type="field"/>
      <column width="-1" hidden="0" name="statut" type="field"/>
      <column width="-1" hidden="0" name="gestionnai" type="field"/>
      <column width="-1" hidden="0" name="proprietai" type="field"/>
      <column width="-1" hidden="0" name="precision" type="field"/>
      <column width="-1" hidden="0" name="sens_uniqu" type="field"/>
      <column width="-1" hidden="0" name="geometrie_" type="field"/>
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
    <field name="annee_ouve" editable="1"/>
    <field name="avancement" editable="1"/>
    <field name="date_saisi" editable="1"/>
    <field name="geometrie_" editable="1"/>
    <field name="gestionnai" editable="1"/>
    <field name="id_local" editable="1"/>
    <field name="precision" editable="1"/>
    <field name="proprietai" editable="1"/>
    <field name="revetement" editable="1"/>
    <field name="sens_uniqu" editable="1"/>
    <field name="src_annee" editable="1"/>
    <field name="src_geom" editable="1"/>
    <field name="statut" editable="1"/>
  </editable>
  <labelOnTop>
    <field name="annee_ouve" labelOnTop="0"/>
    <field name="avancement" labelOnTop="0"/>
    <field name="date_saisi" labelOnTop="0"/>
    <field name="geometrie_" labelOnTop="0"/>
    <field name="gestionnai" labelOnTop="0"/>
    <field name="id_local" labelOnTop="0"/>
    <field name="precision" labelOnTop="0"/>
    <field name="proprietai" labelOnTop="0"/>
    <field name="revetement" labelOnTop="0"/>
    <field name="sens_uniqu" labelOnTop="0"/>
    <field name="src_annee" labelOnTop="0"/>
    <field name="src_geom" labelOnTop="0"/>
    <field name="statut" labelOnTop="0"/>
  </labelOnTop>
  <widgets/>
  <previewExpression>id_local</previewExpression>
  <mapTip></mapTip>
  <layerGeometryType>1</layerGeometryType>
</qgis>
