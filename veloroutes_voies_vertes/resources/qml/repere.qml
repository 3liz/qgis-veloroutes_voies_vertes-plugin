<!DOCTYPE qgis PUBLIC 'http://mrcc.com/qgis.dtd' 'SYSTEM'>
<qgis simplifyDrawingHints="0" maxScale="0" simplifyLocal="1" simplifyMaxScale="1" minScale="1e+08" simplifyDrawingTol="1" readOnly="0" hasScaleBasedVisibilityFlag="0" simplifyAlgorithm="0" version="3.10.5-A Coruña" styleCategories="AllStyleCategories" labelsEnabled="0">
  <flags>
    <Identifiable>1</Identifiable>
    <Removable>1</Removable>
    <Searchable>1</Searchable>
  </flags>
  <renderer-v2 type="singleSymbol" symbollevels="0" enableorderby="0" forceraster="0">
    <symbols>
      <symbol type="marker" name="0" alpha="1" force_rhr="0" clip_to_extent="1">
        <layer enabled="1" locked="0" pass="0" class="SimpleMarker">
          <prop k="angle" v="0"/>
          <prop k="color" v="225,89,137,255"/>
          <prop k="horizontal_anchor_point" v="1"/>
          <prop k="joinstyle" v="bevel"/>
          <prop k="name" v="circle"/>
          <prop k="offset" v="0,0"/>
          <prop k="offset_map_unit_scale" v="3x:0,0,0,0,0,0"/>
          <prop k="offset_unit" v="MM"/>
          <prop k="outline_color" v="35,35,35,255"/>
          <prop k="outline_style" v="solid"/>
          <prop k="outline_width" v="0"/>
          <prop k="outline_width_map_unit_scale" v="3x:0,0,0,0,0,0"/>
          <prop k="outline_width_unit" v="MM"/>
          <prop k="scale_method" v="diameter"/>
          <prop k="size" v="2"/>
          <prop k="size_map_unit_scale" v="3x:0,0,0,0,0,0"/>
          <prop k="size_unit" v="MM"/>
          <prop k="vertical_anchor_point" v="1"/>
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
  <DiagramLayerSettings showAll="1" priority="0" zIndex="0" obstacle="0" linePlacementFlags="18" dist="0" placement="0">
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
    <field name="libelle">
      <editWidget type="TextEdit">
        <config>
          <Option type="Map">
            <Option type="bool" name="IsMultiline" value="false"/>
            <Option type="bool" name="UseHtml" value="false"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="numero_ser">
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
    <field name="type_noeud">
      <editWidget type="ValueMap">
        <config>
          <Option type="Map">
            <Option type="List" name="map">
              <Option type="Map">
                <Option type="QString" name="Début/fin d'étape" value="DFE"/>
              </Option>
              <Option type="Map">
                <Option type="QString" name="Intersection d'itinéraire" value="INT"/>
              </Option>
              <Option type="Map">
                <Option type="QString" name="Bifurcation" value="BIF"/>
              </Option>
              <Option type="Map">
                <Option type="QString" name="Accès POI" value="APO"/>
              </Option>
              <Option type="Map">
                <Option type="QString" name="Compteur&#xa;" value="CPT"/>
              </Option>
              <Option type="Map">
                <Option type="QString" name="Passage délicat" value="PDL"/>
              </Option>
              <Option type="Map">
                <Option type="QString" name="Point de connexion transfrontalier" value="PCT"/>
              </Option>
            </Option>
          </Option>
        </config>
      </editWidget>
    </field>
  </fieldConfiguration>
  <aliases>
    <alias name="" field="libelle" index="0"/>
    <alias name="" field="numero_ser" index="1"/>
    <alias name="" field="id_local" index="2"/>
    <alias name="" field="type_noeud" index="3"/>
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
    <constraint unique_strength="0" notnull_strength="0" field="libelle" constraints="0" exp_strength="0"/>
    <constraint unique_strength="0" notnull_strength="0" field="numero_ser" constraints="0" exp_strength="0"/>
    <constraint unique_strength="0" notnull_strength="0" field="id_local" constraints="0" exp_strength="0"/>
    <constraint unique_strength="0" notnull_strength="2" field="type_noeud" constraints="1" exp_strength="0"/>
  </constraints>
  <constraintExpressions>
    <constraint exp="" field="libelle" desc=""/>
    <constraint exp="" field="numero_ser" desc=""/>
    <constraint exp="" field="id_local" desc=""/>
    <constraint exp="" field="type_noeud" desc=""/>
  </constraintExpressions>
  <expressionfields/>
  <attributeactions>
    <defaultAction value="{00000000-0000-0000-0000-000000000000}" key="Canvas"/>
  </attributeactions>
  <attributetableconfig sortExpression="" actionWidgetStyle="dropDown" sortOrder="0">
    <columns>
      <column type="field" name="libelle" width="-1" hidden="0"/>
      <column type="field" name="numero_ser" width="-1" hidden="0"/>
      <column type="field" name="id_local" width="-1" hidden="0"/>
      <column type="field" name="type_noeud" width="-1" hidden="0"/>
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
    <field name="libelle" editable="1"/>
    <field name="numero_ser" editable="1"/>
    <field name="type_noeud" editable="1"/>
  </editable>
  <labelOnTop>
    <field labelOnTop="0" name="id_local"/>
    <field labelOnTop="0" name="libelle"/>
    <field labelOnTop="0" name="numero_ser"/>
    <field labelOnTop="0" name="type_noeud"/>
  </labelOnTop>
  <widgets/>
  <previewExpression>id_local</previewExpression>
  <mapTip></mapTip>
  <layerGeometryType>0</layerGeometryType>
</qgis>
