<!DOCTYPE qgis PUBLIC 'http://mrcc.com/qgis.dtd' 'SYSTEM'>
<qgis simplifyDrawingHints="1" maxScale="0" simplifyLocal="1" simplifyMaxScale="1" minScale="1e+08" simplifyDrawingTol="1" readOnly="0" hasScaleBasedVisibilityFlag="0" simplifyAlgorithm="0" version="3.10.5-A Coruña" styleCategories="AllStyleCategories" labelsEnabled="0">
  <flags>
    <Identifiable>1</Identifiable>
    <Removable>1</Removable>
    <Searchable>1</Searchable>
  </flags>
  <renderer-v2 type="singleSymbol" symbollevels="0" enableorderby="0" forceraster="0">
    <symbols>
      <symbol type="line" name="0" alpha="1" force_rhr="0" clip_to_extent="1">
        <layer enabled="1" locked="0" pass="0" class="SimpleLine">
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
              <Option type="QString" name="name" value=""/>
              <Option name="properties"/>
              <Option type="QString" name="type" value="collection"/>
            </Option>
          </data_defined_properties>
        </layer>
      </symbol>
    </symbols>
    <rotation/>
    <sizescale/>
  </renderer-v2>
  <customproperties>
    <property value="id_local" key="dualview/previewExpressions"/>
    <property value="0" key="embeddedWidgets/count"/>
    <property key="variableNames"/>
    <property key="variableValues"/>
  </customproperties>
  <blendMode>0</blendMode>
  <featureBlendMode>0</featureBlendMode>
  <layerOpacity>1</layerOpacity>
  <SingleCategoryDiagramRenderer diagramType="Histogram" attributeLegend="1">
    <DiagramCategory diagramOrientation="Up" scaleDependency="Area" minimumSize="0" rotationOffset="270" labelPlacementMethod="XHeight" sizeScale="3x:0,0,0,0,0,0" backgroundAlpha="255" enabled="0" maxScaleDenominator="1e+08" sizeType="MM" scaleBasedVisibility="0" minScaleDenominator="0" width="15" penWidth="0" penColor="#000000" lineSizeScale="3x:0,0,0,0,0,0" backgroundColor="#ffffff" opacity="1" height="15" penAlpha="255" barWidth="5" lineSizeType="MM">
      <fontProperties style="" description=".AppleSystemUIFont,13,-1,5,50,0,0,0,0,0"/>
      <attribute label="" field="" color="#000000"/>
    </DiagramCategory>
  </SingleCategoryDiagramRenderer>
  <DiagramLayerSettings showAll="1" priority="0" zIndex="0" obstacle="0" linePlacementFlags="18" dist="0" placement="2">
    <properties>
      <Option type="Map">
        <Option type="QString" name="name" value=""/>
        <Option name="properties"/>
        <Option type="QString" name="type" value="collection"/>
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
          <Option type="Map">
            <Option type="bool" name="IsMultiline" value="false"/>
            <Option type="bool" name="UseHtml" value="false"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="src_geom">
      <editWidget type="TextEdit">
        <config>
          <Option type="Map">
            <Option type="bool" name="IsMultiline" value="false"/>
            <Option type="bool" name="UseHtml" value="false"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="src_annee">
      <editWidget type="TextEdit">
        <config>
          <Option type="Map">
            <Option type="bool" name="IsMultiline" value="false"/>
            <Option type="bool" name="UseHtml" value="false"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="id_local">
      <editWidget type="TextEdit">
        <config>
          <Option type="Map">
            <Option type="bool" name="IsMultiline" value="false"/>
            <Option type="bool" name="UseHtml" value="false"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="id_repere">
      <editWidget type="ValueRelation">
        <config>
          <Option type="Map">
            <Option type="bool" name="AllowMulti" value="false"/>
            <Option type="bool" name="AllowNull" value="false"/>
            <Option type="QString" name="FilterExpression" value=""/>
            <Option type="QString" name="Key" value="id_local"/>
            <Option type="QString" name="Layer" value="repere_67fc0049_d1de_4716_aa7e_52966e9bd114"/>
            <Option type="QString" name="LayerName" value="repere"/>
            <Option type="QString" name="LayerProviderName" value="ogr"/>
            <Option type="QString" name="LayerSource" value="/Users/enolasengeissen/Documents/Stage_3Liz/projet-Qgis/repere.shp"/>
            <Option type="int" name="NofColumns" value="1"/>
            <Option type="bool" name="OrderByValue" value="false"/>
            <Option type="bool" name="UseCompleter" value="false"/>
            <Option type="QString" name="Value" value="id_local"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="id_poi">
      <editWidget type="ValueRelation">
        <config>
          <Option type="Map">
            <Option type="bool" name="AllowMulti" value="false"/>
            <Option type="bool" name="AllowNull" value="false"/>
            <Option type="QString" name="FilterExpression" value=""/>
            <Option type="QString" name="Key" value="id_local"/>
            <Option type="QString" name="Layer" value="poi_af4b6ab0_eee7_44ee_a882_f3e0a83b1e8f"/>
            <Option type="QString" name="LayerName" value="poi"/>
            <Option type="QString" name="LayerProviderName" value="postgres"/>
            <Option type="QString" name="LayerSource" value="service='vvv' key='id_local' type=Point checkPrimaryKeyUnicity='1' table=&quot;veloroutes&quot;.&quot;poi&quot; (geom) sql="/>
            <Option type="int" name="NofColumns" value="1"/>
            <Option type="bool" name="OrderByValue" value="false"/>
            <Option type="bool" name="UseCompleter" value="false"/>
            <Option type="QString" name="Value" value="id_local"/>
          </Option>
        </config>
      </editWidget>
    </field>
  </fieldConfiguration>
  <aliases>
    <alias name="" field="precision" index="0"/>
    <alias name="" field="src_geom" index="1"/>
    <alias name="" field="src_annee" index="2"/>
    <alias name="" field="id_local" index="3"/>
    <alias name="" field="id_repere" index="4"/>
    <alias name="" field="id_poi" index="5"/>
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
    <constraint unique_strength="0" notnull_strength="0" field="precision" constraints="0" exp_strength="0"/>
    <constraint unique_strength="0" notnull_strength="0" field="src_geom" constraints="0" exp_strength="0"/>
    <constraint unique_strength="0" notnull_strength="0" field="src_annee" constraints="0" exp_strength="0"/>
    <constraint unique_strength="1" notnull_strength="1" field="id_local" constraints="3" exp_strength="0"/>
    <constraint unique_strength="0" notnull_strength="0" field="id_repere" constraints="0" exp_strength="0"/>
    <constraint unique_strength="0" notnull_strength="0" field="id_poi" constraints="0" exp_strength="0"/>
  </constraints>
  <constraintExpressions>
    <constraint exp="" field="precision" desc=""/>
    <constraint exp="" field="src_geom" desc=""/>
    <constraint exp="" field="src_annee" desc=""/>
    <constraint exp="" field="id_local" desc=""/>
    <constraint exp="" field="id_repere" desc=""/>
    <constraint exp="" field="id_poi" desc=""/>
  </constraintExpressions>
  <expressionfields/>
  <attributeactions>
    <defaultAction value="{00000000-0000-0000-0000-000000000000}" key="Canvas"/>
  </attributeactions>
  <attributetableconfig sortExpression="" actionWidgetStyle="dropDown" sortOrder="0">
    <columns>
      <column type="field" name="precision" width="-1" hidden="0"/>
      <column type="field" name="src_geom" width="-1" hidden="0"/>
      <column type="field" name="src_annee" width="-1" hidden="0"/>
      <column type="field" name="id_local" width="-1" hidden="0"/>
      <column type="field" name="id_repere" width="-1" hidden="0"/>
      <column type="field" name="id_poi" width="-1" hidden="0"/>
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
    <field name="id_local" editable="0"/>
    <field name="id_poi" editable="1"/>
    <field name="id_repere" editable="1"/>
    <field name="precision" editable="1"/>
    <field name="src_annee" editable="1"/>
    <field name="src_geom" editable="1"/>
  </editable>
  <labelOnTop>
    <field labelOnTop="0" name="id_local"/>
    <field labelOnTop="0" name="id_poi"/>
    <field labelOnTop="0" name="id_repere"/>
    <field labelOnTop="0" name="precision"/>
    <field labelOnTop="0" name="src_annee"/>
    <field labelOnTop="0" name="src_geom"/>
  </labelOnTop>
  <widgets/>
  <previewExpression>id_local</previewExpression>
  <mapTip></mapTip>
  <layerGeometryType>1</layerGeometryType>
</qgis>
