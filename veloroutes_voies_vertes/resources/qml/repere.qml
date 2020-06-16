<!DOCTYPE qgis PUBLIC 'http://mrcc.com/qgis.dtd' 'SYSTEM'>
<qgis minScale="1e+08" simplifyMaxScale="1" readOnly="0" maxScale="0" simplifyAlgorithm="0" labelsEnabled="0" simplifyDrawingHints="0" simplifyDrawingTol="1" styleCategories="AllStyleCategories" hasScaleBasedVisibilityFlag="0" version="3.10.5-A Coruña" simplifyLocal="1">
  <flags>
    <Identifiable>1</Identifiable>
    <Removable>1</Removable>
    <Searchable>1</Searchable>
  </flags>
  <renderer-v2 symbollevels="0" enableorderby="0" type="singleSymbol" forceraster="0">
    <symbols>
      <symbol force_rhr="0" name="0" alpha="1" type="marker" clip_to_extent="1">
        <layer class="SimpleMarker" pass="0" locked="0" enabled="1">
          <prop v="0" k="angle"/>
          <prop v="225,89,137,255" k="color"/>
          <prop v="1" k="horizontal_anchor_point"/>
          <prop v="bevel" k="joinstyle"/>
          <prop v="circle" k="name"/>
          <prop v="0,0" k="offset"/>
          <prop v="3x:0,0,0,0,0,0" k="offset_map_unit_scale"/>
          <prop v="MM" k="offset_unit"/>
          <prop v="35,35,35,255" k="outline_color"/>
          <prop v="solid" k="outline_style"/>
          <prop v="0" k="outline_width"/>
          <prop v="3x:0,0,0,0,0,0" k="outline_width_map_unit_scale"/>
          <prop v="MM" k="outline_width_unit"/>
          <prop v="diameter" k="scale_method"/>
          <prop v="2" k="size"/>
          <prop v="3x:0,0,0,0,0,0" k="size_map_unit_scale"/>
          <prop v="MM" k="size_unit"/>
          <prop v="1" k="vertical_anchor_point"/>
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
    <DiagramCategory enabled="0" lineSizeType="MM" backgroundColor="#ffffff" opacity="1" maxScaleDenominator="1e+08" penColor="#000000" width="15" scaleBasedVisibility="0" minimumSize="0" penWidth="0" height="15" sizeScale="3x:0,0,0,0,0,0" penAlpha="255" sizeType="MM" lineSizeScale="3x:0,0,0,0,0,0" minScaleDenominator="0" rotationOffset="270" backgroundAlpha="255" barWidth="5" scaleDependency="Area" labelPlacementMethod="XHeight" diagramOrientation="Up">
      <fontProperties description=".AppleSystemUIFont,13,-1,5,50,0,0,0,0,0" style=""/>
    </DiagramCategory>
  </SingleCategoryDiagramRenderer>
  <DiagramLayerSettings linePlacementFlags="18" placement="0" dist="0" priority="0" zIndex="0" obstacle="0" showAll="1">
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
    <field name="libelle">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="numero_ser">
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
    <field name="type_noeud">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
  </fieldConfiguration>
  <aliases>
    <alias field="libelle" name="" index="0"/>
    <alias field="numero_ser" name="" index="1"/>
    <alias field="id_local" name="" index="2"/>
    <alias field="type_noeud" name="" index="3"/>
  </aliases>
  <excludeAttributesWMS/>
  <excludeAttributesWFS/>
  <defaults>
    <default field="libelle" applyOnUpdate="0" expression=""/>
    <default field="numero_ser" applyOnUpdate="0" expression=""/>
    <default field="id_local" applyOnUpdate="0" expression=""/>
    <default field="type_noeud" applyOnUpdate="0" expression=""/>
  </defaults>
  <constraints>
    <constraint field="libelle" exp_strength="0" unique_strength="0" notnull_strength="0" constraints="0"/>
    <constraint field="numero_ser" exp_strength="0" unique_strength="0" notnull_strength="0" constraints="0"/>
    <constraint field="id_local" exp_strength="0" unique_strength="0" notnull_strength="0" constraints="0"/>
    <constraint field="type_noeud" exp_strength="0" unique_strength="0" notnull_strength="0" constraints="0"/>
  </constraints>
  <constraintExpressions>
    <constraint field="libelle" exp="" desc=""/>
    <constraint field="numero_ser" exp="" desc=""/>
    <constraint field="id_local" exp="" desc=""/>
    <constraint field="type_noeud" exp="" desc=""/>
  </constraintExpressions>
  <expressionfields/>
  <attributeactions>
    <defaultAction value="{00000000-0000-0000-0000-000000000000}" key="Canvas"/>
  </attributeactions>
  <attributetableconfig actionWidgetStyle="dropDown" sortExpression="" sortOrder="0">
    <columns>
      <column width="-1" hidden="0" name="libelle" type="field"/>
      <column width="-1" hidden="0" name="numero_ser" type="field"/>
      <column width="-1" hidden="0" name="id_local" type="field"/>
      <column width="-1" hidden="0" name="type_noeud" type="field"/>
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
    <field name="id_local" editable="1"/>
    <field name="libelle" editable="1"/>
    <field name="numero_ser" editable="1"/>
    <field name="type_noeud" editable="1"/>
  </editable>
  <labelOnTop>
    <field name="id_local" labelOnTop="0"/>
    <field name="libelle" labelOnTop="0"/>
    <field name="numero_ser" labelOnTop="0"/>
    <field name="type_noeud" labelOnTop="0"/>
  </labelOnTop>
  <widgets/>
  <previewExpression>id_local</previewExpression>
  <mapTip></mapTip>
  <layerGeometryType>0</layerGeometryType>
</qgis>
