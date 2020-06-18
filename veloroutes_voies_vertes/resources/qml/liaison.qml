<!DOCTYPE qgis PUBLIC 'http://mrcc.com/qgis.dtd' 'SYSTEM'>
<qgis hasScaleBasedVisibilityFlag="0" readOnly="0" simplifyDrawingTol="1" minScale="1e+08" styleCategories="AllStyleCategories" simplifyAlgorithm="0" simplifyMaxScale="1" simplifyDrawingHints="1" labelsEnabled="0" version="3.10.5-A Coruña" maxScale="0" simplifyLocal="1">
  <flags>
    <Identifiable>1</Identifiable>
    <Removable>1</Removable>
    <Searchable>1</Searchable>
  </flags>
  <renderer-v2 symbollevels="0" enableorderby="0" type="singleSymbol" forceraster="0">
    <symbols>
      <symbol name="0" alpha="1" force_rhr="0" type="line" clip_to_extent="1">
        <layer enabled="1" pass="0" locked="0" class="SimpleLine">
          <prop k="capstyle" v="square"/>
          <prop k="customdash" v="5;2"/>
          <prop k="customdash_map_unit_scale" v="3x:0,0,0,0,0,0"/>
          <prop k="customdash_unit" v="MM"/>
          <prop k="draw_inside_polygon" v="0"/>
          <prop k="joinstyle" v="bevel"/>
          <prop k="line_color" v="145,145,145,255"/>
          <prop k="line_style" v="solid"/>
          <prop k="line_width" v="0.46"/>
          <prop k="line_width_unit" v="MM"/>
          <prop k="offset" v="0"/>
          <prop k="offset_map_unit_scale" v="3x:0,0,0,0,0,0"/>
          <prop k="offset_unit" v="MM"/>
          <prop k="ring_filter" v="0"/>
          <prop k="use_custom_dash" v="0"/>
          <prop k="width_map_unit_scale" v="3x:0,0,0,0,0,0"/>
          <data_defined_properties>
            <Option type="Map">
              <Option name="name" value="" type="QString"/>
              <Option name="properties"/>
              <Option name="type" value="collection" type="QString"/>
            </Option>
          </data_defined_properties>
        </layer>
      </symbol>
    </symbols>
    <rotation/>
    <sizescale/>
  </renderer-v2>
  <customproperties>
    <property value="0" key="embeddedWidgets/count"/>
    <property key="variableNames"/>
    <property key="variableValues"/>
  </customproperties>
  <blendMode>0</blendMode>
  <featureBlendMode>0</featureBlendMode>
  <layerOpacity>1</layerOpacity>
  <SingleCategoryDiagramRenderer diagramType="Histogram" attributeLegend="1">
    <DiagramCategory labelPlacementMethod="XHeight" opacity="1" minScaleDenominator="0" penWidth="0" diagramOrientation="Up" penColor="#000000" width="15" backgroundAlpha="255" maxScaleDenominator="1e+08" backgroundColor="#ffffff" lineSizeType="MM" barWidth="5" sizeScale="3x:0,0,0,0,0,0" scaleDependency="Area" scaleBasedVisibility="0" rotationOffset="270" lineSizeScale="3x:0,0,0,0,0,0" minimumSize="0" enabled="0" penAlpha="255" height="15" sizeType="MM">
      <fontProperties style="" description=".AppleSystemUIFont,13,-1,5,50,0,0,0,0,0"/>
      <attribute field="" label="" color="#000000"/>
    </DiagramCategory>
  </SingleCategoryDiagramRenderer>
  <DiagramLayerSettings showAll="1" zIndex="0" linePlacementFlags="18" placement="2" priority="0" obstacle="0" dist="0">
    <properties>
      <Option type="Map">
        <Option name="name" value="" type="QString"/>
        <Option name="properties"/>
        <Option name="type" value="collection" type="QString"/>
      </Option>
    </properties>
  </DiagramLayerSettings>
  <geometryOptions removeDuplicateNodes="0" geometryPrecision="0">
    <activeChecks/>
    <checkConfiguration/>
  </geometryOptions>
  <fieldConfiguration>
    <field name="precision">
      <editWidget type="TextEdit">
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
    <field name="id_local">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="id_repere">
      <editWidget type="Range">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="id_poi">
      <editWidget type="Range">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
  </fieldConfiguration>
  <aliases>
    <alias field="precision" name="" index="0"/>
    <alias field="src_geom" name="" index="1"/>
    <alias field="src_annee" name="" index="2"/>
    <alias field="id_local" name="" index="3"/>
    <alias field="id_repere" name="" index="4"/>
    <alias field="id_poi" name="" index="5"/>
  </aliases>
  <excludeAttributesWMS/>
  <excludeAttributesWFS/>
  <defaults>
    <default field="precision" applyOnUpdate="0" expression=""/>
    <default field="src_geom" applyOnUpdate="0" expression=""/>
    <default field="src_annee" applyOnUpdate="0" expression=""/>
    <default field="id_local" applyOnUpdate="0" expression=""/>
    <default field="id_repere" applyOnUpdate="0" expression=""/>
    <default field="id_poi" applyOnUpdate="0" expression=""/>
  </defaults>
  <constraints>
    <constraint field="precision" constraints="0" unique_strength="0" exp_strength="0" notnull_strength="0"/>
    <constraint field="src_geom" constraints="0" unique_strength="0" exp_strength="0" notnull_strength="0"/>
    <constraint field="src_annee" constraints="0" unique_strength="0" exp_strength="0" notnull_strength="0"/>
    <constraint field="id_local" constraints="3" unique_strength="1" exp_strength="0" notnull_strength="1"/>
    <constraint field="id_repere" constraints="0" unique_strength="0" exp_strength="0" notnull_strength="0"/>
    <constraint field="id_poi" constraints="0" unique_strength="0" exp_strength="0" notnull_strength="0"/>
  </constraints>
  <constraintExpressions>
    <constraint field="precision" exp="" desc=""/>
    <constraint field="src_geom" exp="" desc=""/>
    <constraint field="src_annee" exp="" desc=""/>
    <constraint field="id_local" exp="" desc=""/>
    <constraint field="id_repere" exp="" desc=""/>
    <constraint field="id_poi" exp="" desc=""/>
  </constraintExpressions>
  <expressionfields/>
  <attributeactions>
    <defaultAction value="{00000000-0000-0000-0000-000000000000}" key="Canvas"/>
  </attributeactions>
  <attributetableconfig sortExpression="" sortOrder="0" actionWidgetStyle="dropDown">
    <columns>
      <column width="-1" name="precision" hidden="0" type="field"/>
      <column width="-1" name="src_geom" hidden="0" type="field"/>
      <column width="-1" name="src_annee" hidden="0" type="field"/>
      <column width="-1" name="id_local" hidden="0" type="field"/>
      <column width="-1" name="id_repere" hidden="0" type="field"/>
      <column width="-1" name="id_poi" hidden="0" type="field"/>
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
    <field editable="1" name="id_local"/>
    <field editable="1" name="id_poi"/>
    <field editable="1" name="id_repere"/>
    <field editable="1" name="precision"/>
    <field editable="1" name="src_annee"/>
    <field editable="1" name="src_geom"/>
  </editable>
  <labelOnTop>
    <field name="id_local" labelOnTop="0"/>
    <field name="id_poi" labelOnTop="0"/>
    <field name="id_repere" labelOnTop="0"/>
    <field name="precision" labelOnTop="0"/>
    <field name="src_annee" labelOnTop="0"/>
    <field name="src_geom" labelOnTop="0"/>
  </labelOnTop>
  <widgets/>
  <previewExpression>id_local</previewExpression>
  <mapTip></mapTip>
  <layerGeometryType>1</layerGeometryType>
</qgis>
