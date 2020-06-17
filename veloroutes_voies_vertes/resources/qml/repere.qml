<!DOCTYPE qgis PUBLIC 'http://mrcc.com/qgis.dtd' 'SYSTEM'>
<qgis hasScaleBasedVisibilityFlag="0" styleCategories="AllStyleCategories" readOnly="0" version="3.10.5-A Coruña" labelsEnabled="0" maxScale="0" simplifyDrawingHints="0" minScale="1e+08" simplifyAlgorithm="0" simplifyLocal="1" simplifyDrawingTol="1" simplifyMaxScale="1">
  <flags>
    <Identifiable>1</Identifiable>
    <Removable>1</Removable>
    <Searchable>1</Searchable>
  </flags>
  <renderer-v2 symbollevels="0" forceraster="0" enableorderby="0" type="singleSymbol">
    <symbols>
      <symbol name="0" clip_to_extent="1" alpha="1" force_rhr="0" type="marker">
        <layer locked="0" class="SimpleMarker" enabled="1" pass="0">
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
    <DiagramCategory enabled="0" lineSizeType="MM" scaleBasedVisibility="0" width="15" diagramOrientation="Up" minimumSize="0" minScaleDenominator="0" sizeScale="3x:0,0,0,0,0,0" backgroundAlpha="255" lineSizeScale="3x:0,0,0,0,0,0" rotationOffset="270" sizeType="MM" scaleDependency="Area" penColor="#000000" opacity="1" backgroundColor="#ffffff" labelPlacementMethod="XHeight" barWidth="5" penAlpha="255" maxScaleDenominator="1e+08" height="15" penWidth="0">
      <fontProperties style="" description=".AppleSystemUIFont,13,-1,5,50,0,0,0,0,0"/>
      <attribute color="#000000" label="" field=""/>
    </DiagramCategory>
  </SingleCategoryDiagramRenderer>
  <DiagramLayerSettings priority="0" zIndex="0" linePlacementFlags="18" obstacle="0" showAll="1" dist="0" placement="0">
    <properties>
      <Option type="Map">
        <Option name="name" value="" type="QString"/>
        <Option name="properties"/>
        <Option name="type" value="collection" type="QString"/>
      </Option>
    </properties>
  </DiagramLayerSettings>
  <geometryOptions geometryPrecision="0" removeDuplicateNodes="0">
    <activeChecks/>
    <checkConfiguration/>
  </geometryOptions>
  <fieldConfiguration>
    <field name="libelle">
      <editWidget type="TextEdit">
        <config>
          <Option type="Map">
            <Option name="IsMultiline" value="false" type="bool"/>
            <Option name="UseHtml" value="false" type="bool"/>
          </Option>
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
      <editWidget type="ValueMap">
        <config>
          <Option type="Map">
            <Option name="map" type="List">
              <Option type="Map">
                <Option name="Début/fin d'étape" value="DFE" type="QString"/>
              </Option>
              <Option type="Map">
                <Option name="Intersection d'itinéraire" value="INT" type="QString"/>
              </Option>
              <Option type="Map">
                <Option name="Bifurcation" value="BIF" type="QString"/>
              </Option>
              <Option type="Map">
                <Option name="Accès POI" value="APO" type="QString"/>
              </Option>
              <Option type="Map">
                <Option name="Compteur&#xa;" value="CPT" type="QString"/>
              </Option>
              <Option type="Map">
                <Option name="Passage délicat" value="PDL" type="QString"/>
              </Option>
              <Option type="Map">
                <Option name="Point de connexion transfrontalier" value="PCT" type="QString"/>
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
    <default applyOnUpdate="0" field="libelle" expression=""/>
    <default applyOnUpdate="0" field="numero_ser" expression=""/>
    <default applyOnUpdate="0" field="id_local" expression=""/>
    <default applyOnUpdate="0" field="type_noeud" expression=""/>
  </defaults>
  <constraints>
    <constraint notnull_strength="0" constraints="0" unique_strength="0" field="libelle" exp_strength="0"/>
    <constraint notnull_strength="0" constraints="0" unique_strength="0" field="numero_ser" exp_strength="0"/>
    <constraint notnull_strength="0" constraints="0" unique_strength="0" field="id_local" exp_strength="0"/>
    <constraint notnull_strength="0" constraints="0" unique_strength="0" field="type_noeud" exp_strength="0"/>
  </constraints>
  <constraintExpressions>
    <constraint desc="" exp="" field="libelle"/>
    <constraint desc="" exp="" field="numero_ser"/>
    <constraint desc="" exp="" field="id_local"/>
    <constraint desc="" exp="" field="type_noeud"/>
  </constraintExpressions>
  <expressionfields/>
  <attributeactions>
    <defaultAction value="{00000000-0000-0000-0000-000000000000}" key="Canvas"/>
  </attributeactions>
  <attributetableconfig sortOrder="0" actionWidgetStyle="dropDown" sortExpression="">
    <columns>
      <column name="libelle" hidden="0" width="-1" type="field"/>
      <column name="numero_ser" hidden="0" width="-1" type="field"/>
      <column name="id_local" hidden="0" width="-1" type="field"/>
      <column name="type_noeud" hidden="0" width="-1" type="field"/>
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
