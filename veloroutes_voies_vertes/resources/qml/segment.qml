<!DOCTYPE qgis PUBLIC 'http://mrcc.com/qgis.dtd' 'SYSTEM'>
<qgis hasScaleBasedVisibilityFlag="0" readOnly="0" simplifyDrawingTol="1" minScale="1e+08" styleCategories="AllStyleCategories" simplifyAlgorithm="0" simplifyMaxScale="1" simplifyDrawingHints="1" labelsEnabled="0" version="3.10.5-A Coruña" maxScale="0" simplifyLocal="1">
  <flags>
    <Identifiable>1</Identifiable>
    <Removable>1</Removable>
    <Searchable>1</Searchable>
  </flags>
  <renderer-v2 symbollevels="0" enableorderby="0" type="RuleRenderer" forceraster="0">
    <rules key="{9004152c-ebea-4b9c-bad3-cbaa7e4ec10e}">
      <rule checkstate="0" symbol="0" key="{04260390-4615-496a-97bf-4fb78ed1465c}" filter="ELSE"/>
      <rule label="Voie dédiée" symbol="1" key="{c65d6d33-a6ec-4881-b5ba-d3706a340bea}" filter=" &quot;statut&quot; = 'ASP'  or  &quot;statut&quot; = 'PCY'  or  &quot;statut&quot; =  'VV' or &quot;statut&quot; = 'BCY' and  &quot;revetement&quot; = 'LIS' "/>
      <rule label="Voie dédiée" symbol="2" key="{1614c6c8-8b2f-4915-93a4-528dbf54f227}" filter=" &quot;statut&quot; = 'ASP'  or  &quot;statut&quot; = 'PCY'  or  &quot;statut&quot; =  'VV' and  (&quot;revetement&quot; = 'RUG'  or &quot;revetement&quot; = 'MEU')"/>
      <rule label="voie partagée" symbol="3" key="{f760d85d-6a63-4667-af8d-d5d51ce14dcb}" filter=" &quot;statut&quot; = 'RTE' or &quot;statut&quot; = 'ICA' and  &quot;revetement&quot; = 'LIS' "/>
      <rule label="voie partagée" symbol="4" key="{e91167ef-d66e-4aae-b29d-c5140de7abb0}" filter=" &quot;statut&quot; = 'RTE' or &quot;statut&quot; = 'ICA' and  (&quot;revetement&quot; = 'RUG'  or &quot;revetement&quot; = 'MEU')"/>
    </rules>
    <symbols>
      <symbol name="0" alpha="1" force_rhr="0" type="line" clip_to_extent="1">
        <layer enabled="1" pass="0" locked="0" class="SimpleLine">
          <prop k="capstyle" v="square"/>
          <prop k="customdash" v="5;2"/>
          <prop k="customdash_map_unit_scale" v="3x:0,0,0,0,0,0"/>
          <prop k="customdash_unit" v="MM"/>
          <prop k="draw_inside_polygon" v="0"/>
          <prop k="joinstyle" v="bevel"/>
          <prop k="line_color" v="83,27,204,255"/>
          <prop k="line_style" v="solid"/>
          <prop k="line_width" v="0.26"/>
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
      <symbol name="1" alpha="1" force_rhr="0" type="line" clip_to_extent="1">
        <layer enabled="1" pass="0" locked="0" class="SimpleLine">
          <prop k="capstyle" v="square"/>
          <prop k="customdash" v="5;2"/>
          <prop k="customdash_map_unit_scale" v="3x:0,0,0,0,0,0"/>
          <prop k="customdash_unit" v="MM"/>
          <prop k="draw_inside_polygon" v="0"/>
          <prop k="joinstyle" v="bevel"/>
          <prop k="line_color" v="30,194,19,255"/>
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
      <symbol name="2" alpha="1" force_rhr="0" type="line" clip_to_extent="1">
        <layer enabled="1" pass="0" locked="0" class="SimpleLine">
          <prop k="capstyle" v="square"/>
          <prop k="customdash" v="5;2"/>
          <prop k="customdash_map_unit_scale" v="3x:0,0,0,0,0,0"/>
          <prop k="customdash_unit" v="MM"/>
          <prop k="draw_inside_polygon" v="0"/>
          <prop k="joinstyle" v="bevel"/>
          <prop k="line_color" v="30,194,19,255"/>
          <prop k="line_style" v="dash"/>
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
      <symbol name="3" alpha="1" force_rhr="0" type="line" clip_to_extent="1">
        <layer enabled="1" pass="0" locked="0" class="SimpleLine">
          <prop k="capstyle" v="square"/>
          <prop k="customdash" v="5;2"/>
          <prop k="customdash_map_unit_scale" v="3x:0,0,0,0,0,0"/>
          <prop k="customdash_unit" v="MM"/>
          <prop k="draw_inside_polygon" v="0"/>
          <prop k="joinstyle" v="bevel"/>
          <prop k="line_color" v="22,105,14,255"/>
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
      <symbol name="4" alpha="1" force_rhr="0" type="line" clip_to_extent="1">
        <layer enabled="1" pass="0" locked="0" class="SimpleLine">
          <prop k="capstyle" v="square"/>
          <prop k="customdash" v="5;2"/>
          <prop k="customdash_map_unit_scale" v="3x:0,0,0,0,0,0"/>
          <prop k="customdash_unit" v="MM"/>
          <prop k="draw_inside_polygon" v="0"/>
          <prop k="joinstyle" v="bevel"/>
          <prop k="line_color" v="22,105,14,255"/>
          <prop k="line_style" v="dash"/>
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
    <field name="annee_ouverture">
      <editWidget type="DateTime">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="date_saisie">
      <editWidget type="DateTime">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="src_geom">
      <editWidget type="TextEdit">
        <config>
          <Option type="Map">
            <Option name="IsMultiline" value="false" type="bool"/>
            <Option name="UseHtml" value="false" type="bool"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="src_annee">
      <editWidget type="TextEdit">
        <config>
          <Option type="Map">
            <Option name="IsMultiline" value="false" type="bool"/>
            <Option name="UseHtml" value="false" type="bool"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="avancement">
      <editWidget type="ValueMap">
        <config>
          <Option type="Map">
            <Option name="map" type="List">
              <Option type="Map">
                <Option name="Projet" value="01" type="QString"/>
              </Option>
              <Option type="Map">
                <Option name="Tracé arrêté" value="02" type="QString"/>
              </Option>
              <Option type="Map">
                <Option name="Travaux en cours" value="03" type="QString"/>
              </Option>
              <Option type="Map">
                <Option name="Ouvert" value="04" type="QString"/>
              </Option>
            </Option>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="revetement">
      <editWidget type="ValueMap">
        <config>
          <Option type="Map">
            <Option name="map" type="List">
              <Option type="Map">
                <Option name="Lisse" value="LIS" type="QString"/>
              </Option>
              <Option type="Map">
                <Option name="Rugueux" value="RUG" type="QString"/>
              </Option>
              <Option type="Map">
                <Option name="Meuble" value="MEU" type="QString"/>
              </Option>
            </Option>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="statut">
      <editWidget type="ValueMap">
        <config>
          <Option type="Map">
            <Option name="map" type="List">
              <Option type="Map">
                <Option name="Voie verte" value="VV" type="QString"/>
              </Option>
              <Option type="Map">
                <Option name="Piste cyclable" value="PCY" type="QString"/>
              </Option>
              <Option type="Map">
                <Option name="Autre site propre" value="ASP" type="QString"/>
              </Option>
              <Option type="Map">
                <Option name="Route" value="RTE" type="QString"/>
              </Option>
              <Option type="Map">
                <Option name="Bande cyclable" value="BCY" type="QString"/>
              </Option>
              <Option type="Map">
                <Option name="Itinéraire à circulation appaisée" value="ICA" type="QString"/>
              </Option>
            </Option>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="gestionnaire">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="proprietaire">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="precision">
      <editWidget type="TextEdit">
        <config>
          <Option type="Map">
            <Option name="IsMultiline" value="false" type="bool"/>
            <Option name="UseHtml" value="false" type="bool"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="sens_unique">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="geometrie_fictive">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
  </fieldConfiguration>
  <aliases>
    <alias field="id_local" name="" index="0"/>
    <alias field="annee_ouverture" name="" index="1"/>
    <alias field="date_saisie" name="" index="2"/>
    <alias field="src_geom" name="" index="3"/>
    <alias field="src_annee" name="" index="4"/>
    <alias field="avancement" name="" index="5"/>
    <alias field="revetement" name="" index="6"/>
    <alias field="statut" name="" index="7"/>
    <alias field="gestionnaire" name="" index="8"/>
    <alias field="proprietaire" name="" index="9"/>
    <alias field="precision" name="" index="10"/>
    <alias field="sens_unique" name="" index="11"/>
    <alias field="geometrie_fictive" name="" index="12"/>
  </aliases>
  <excludeAttributesWMS/>
  <excludeAttributesWFS/>
  <defaults>
    <default field="id_local" applyOnUpdate="0" expression=""/>
    <default field="annee_ouverture" applyOnUpdate="0" expression=""/>
    <default field="date_saisie" applyOnUpdate="0" expression=""/>
    <default field="src_geom" applyOnUpdate="0" expression=""/>
    <default field="src_annee" applyOnUpdate="0" expression=""/>
    <default field="avancement" applyOnUpdate="0" expression=""/>
    <default field="revetement" applyOnUpdate="0" expression=""/>
    <default field="statut" applyOnUpdate="0" expression=""/>
    <default field="gestionnaire" applyOnUpdate="0" expression=""/>
    <default field="proprietaire" applyOnUpdate="0" expression=""/>
    <default field="precision" applyOnUpdate="0" expression=""/>
    <default field="sens_unique" applyOnUpdate="0" expression=""/>
    <default field="geometrie_fictive" applyOnUpdate="0" expression=""/>
  </defaults>
  <constraints>
    <constraint field="id_local" constraints="3" unique_strength="1" exp_strength="0" notnull_strength="1"/>
    <constraint field="annee_ouverture" constraints="0" unique_strength="0" exp_strength="0" notnull_strength="0"/>
    <constraint field="date_saisie" constraints="0" unique_strength="0" exp_strength="0" notnull_strength="0"/>
    <constraint field="src_geom" constraints="0" unique_strength="0" exp_strength="0" notnull_strength="0"/>
    <constraint field="src_annee" constraints="0" unique_strength="0" exp_strength="0" notnull_strength="0"/>
    <constraint field="avancement" constraints="1" unique_strength="0" exp_strength="0" notnull_strength="1"/>
    <constraint field="revetement" constraints="0" unique_strength="0" exp_strength="0" notnull_strength="0"/>
    <constraint field="statut" constraints="1" unique_strength="0" exp_strength="0" notnull_strength="1"/>
    <constraint field="gestionnaire" constraints="0" unique_strength="0" exp_strength="0" notnull_strength="0"/>
    <constraint field="proprietaire" constraints="0" unique_strength="0" exp_strength="0" notnull_strength="0"/>
    <constraint field="precision" constraints="0" unique_strength="0" exp_strength="0" notnull_strength="0"/>
    <constraint field="sens_unique" constraints="0" unique_strength="0" exp_strength="0" notnull_strength="0"/>
    <constraint field="geometrie_fictive" constraints="0" unique_strength="0" exp_strength="0" notnull_strength="0"/>
  </constraints>
  <constraintExpressions>
    <constraint field="id_local" exp="" desc=""/>
    <constraint field="annee_ouverture" exp="" desc=""/>
    <constraint field="date_saisie" exp="" desc=""/>
    <constraint field="src_geom" exp="" desc=""/>
    <constraint field="src_annee" exp="" desc=""/>
    <constraint field="avancement" exp="" desc=""/>
    <constraint field="revetement" exp="" desc=""/>
    <constraint field="statut" exp="" desc=""/>
    <constraint field="gestionnaire" exp="" desc=""/>
    <constraint field="proprietaire" exp="" desc=""/>
    <constraint field="precision" exp="" desc=""/>
    <constraint field="sens_unique" exp="" desc=""/>
    <constraint field="geometrie_fictive" exp="" desc=""/>
  </constraintExpressions>
  <expressionfields/>
  <attributeactions>
    <defaultAction value="{00000000-0000-0000-0000-000000000000}" key="Canvas"/>
  </attributeactions>
  <attributetableconfig sortExpression="&quot;id_local&quot;" sortOrder="0" actionWidgetStyle="dropDown">
    <columns>
      <column width="-1" name="id_local" hidden="0" type="field"/>
      <column width="-1" name="src_geom" hidden="0" type="field"/>
      <column width="-1" name="src_annee" hidden="0" type="field"/>
      <column width="-1" name="avancement" hidden="0" type="field"/>
      <column width="-1" name="revetement" hidden="0" type="field"/>
      <column width="-1" name="statut" hidden="0" type="field"/>
      <column width="-1" name="precision" hidden="0" type="field"/>
      <column width="-1" hidden="1" type="actions"/>
      <column width="-1" name="annee_ouverture" hidden="0" type="field"/>
      <column width="-1" name="date_saisie" hidden="0" type="field"/>
      <column width="-1" name="gestionnaire" hidden="0" type="field"/>
      <column width="-1" name="proprietaire" hidden="0" type="field"/>
      <column width="-1" name="sens_unique" hidden="0" type="field"/>
      <column width="-1" name="geometrie_fictive" hidden="0" type="field"/>
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
  <attributeEditorForm>
    <attributeEditorField name="id_local" index="0" showLabel="1"/>
    <attributeEditorField name="annee_ouve" index="-1" showLabel="1"/>
    <attributeEditorField name="date_saisi" index="-1" showLabel="1"/>
    <attributeEditorField name="src_geom" index="3" showLabel="1"/>
    <attributeEditorField name="src_annee" index="4" showLabel="1"/>
    <attributeEditorField name="avancement" index="5" showLabel="1"/>
    <attributeEditorField name="revetement" index="6" showLabel="1"/>
    <attributeEditorField name="statut" index="7" showLabel="1"/>
    <attributeEditorField name="gestionnai" index="-1" showLabel="1"/>
    <attributeEditorField name="proprietai" index="-1" showLabel="1"/>
    <attributeEditorField name="precision" index="10" showLabel="1"/>
    <attributeEditorField name="sens_uniqu" index="-1" showLabel="1"/>
    <attributeEditorField name="geometrie_" index="-1" showLabel="1"/>
  </attributeEditorForm>
  <editable>
    <field editable="1" name="annee_ouve"/>
    <field editable="1" name="annee_ouverture"/>
    <field editable="1" name="avancement"/>
    <field editable="1" name="date_saisi"/>
    <field editable="1" name="date_saisie"/>
    <field editable="1" name="geometrie_"/>
    <field editable="1" name="geometrie_fictive"/>
    <field editable="1" name="gestionnai"/>
    <field editable="1" name="gestionnaire"/>
    <field editable="0" name="id_local"/>
    <field editable="1" name="precision"/>
    <field editable="1" name="proprietai"/>
    <field editable="1" name="proprietaire"/>
    <field editable="1" name="revetement"/>
    <field editable="1" name="sens_uniqu"/>
    <field editable="1" name="sens_unique"/>
    <field editable="1" name="src_annee"/>
    <field editable="1" name="src_geom"/>
    <field editable="1" name="statut"/>
  </editable>
  <labelOnTop>
    <field name="annee_ouve" labelOnTop="0"/>
    <field name="annee_ouverture" labelOnTop="0"/>
    <field name="avancement" labelOnTop="0"/>
    <field name="date_saisi" labelOnTop="0"/>
    <field name="date_saisie" labelOnTop="0"/>
    <field name="geometrie_" labelOnTop="0"/>
    <field name="geometrie_fictive" labelOnTop="0"/>
    <field name="gestionnai" labelOnTop="0"/>
    <field name="gestionnaire" labelOnTop="0"/>
    <field name="id_local" labelOnTop="0"/>
    <field name="precision" labelOnTop="0"/>
    <field name="proprietai" labelOnTop="0"/>
    <field name="proprietaire" labelOnTop="0"/>
    <field name="revetement" labelOnTop="0"/>
    <field name="sens_uniqu" labelOnTop="0"/>
    <field name="sens_unique" labelOnTop="0"/>
    <field name="src_annee" labelOnTop="0"/>
    <field name="src_geom" labelOnTop="0"/>
    <field name="statut" labelOnTop="0"/>
  </labelOnTop>
  <widgets>
    <widget name="element_87795107_6a41_4d89_b7a9_27020145c4c2_id_segment_segment_7bda5417_48a9_4c43_b874_6c6b490dfa9e_id_local">
      <config type="Map">
        <Option name="nm-rel" value="" type="QString"/>
      </config>
    </widget>
  </widgets>
  <previewExpression>id_local</previewExpression>
  <mapTip></mapTip>
  <layerGeometryType>1</layerGeometryType>
</qgis>
