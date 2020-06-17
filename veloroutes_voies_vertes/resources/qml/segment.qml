<!DOCTYPE qgis PUBLIC 'http://mrcc.com/qgis.dtd' 'SYSTEM'>
<qgis hasScaleBasedVisibilityFlag="0" styleCategories="AllStyleCategories" readOnly="0" version="3.10.5-A Coruña" labelsEnabled="0" maxScale="0" simplifyDrawingHints="1" minScale="1e+08" simplifyAlgorithm="0" simplifyLocal="1" simplifyDrawingTol="1" simplifyMaxScale="1">
  <flags>
    <Identifiable>1</Identifiable>
    <Removable>1</Removable>
    <Searchable>1</Searchable>
  </flags>
  <renderer-v2 symbollevels="0" forceraster="0" enableorderby="0" type="RuleRenderer">
    <rules key="{9004152c-ebea-4b9c-bad3-cbaa7e4ec10e}">
      <rule checkstate="0" symbol="0" filter="ELSE" key="{04260390-4615-496a-97bf-4fb78ed1465c}"/>
      <rule label="Voie dédiée" symbol="1" filter=" &quot;statut&quot; = 'ASP'  or  &quot;statut&quot; = 'PCY'  or  &quot;statut&quot; =  'VV' or &quot;statut&quot; = 'BCY' and  &quot;revetement&quot; = 'LIS' " key="{c65d6d33-a6ec-4881-b5ba-d3706a340bea}"/>
      <rule label="Voie dédiée" symbol="2" filter=" &quot;statut&quot; = 'ASP'  or  &quot;statut&quot; = 'PCY'  or  &quot;statut&quot; =  'VV' and  (&quot;revetement&quot; = 'RUG'  or &quot;revetement&quot; = 'MEU')" key="{1614c6c8-8b2f-4915-93a4-528dbf54f227}"/>
      <rule label="voie partagée" symbol="3" filter=" &quot;statut&quot; = 'RTE' or &quot;statut&quot; = 'ICA' and  &quot;revetement&quot; = 'LIS' " key="{f760d85d-6a63-4667-af8d-d5d51ce14dcb}"/>
      <rule label="voie partagée" symbol="4" filter=" &quot;statut&quot; = 'RTE' or &quot;statut&quot; = 'ICA' and  (&quot;revetement&quot; = 'RUG'  or &quot;revetement&quot; = 'MEU')" key="{e91167ef-d66e-4aae-b29d-c5140de7abb0}"/>
    </rules>
    <symbols>
      <symbol name="0" clip_to_extent="1" alpha="1" force_rhr="0" type="line">
        <layer locked="0" class="SimpleLine" enabled="1" pass="0">
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
      <symbol name="1" clip_to_extent="1" alpha="1" force_rhr="0" type="line">
        <layer locked="0" class="SimpleLine" enabled="1" pass="0">
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
      <symbol name="2" clip_to_extent="1" alpha="1" force_rhr="0" type="line">
        <layer locked="0" class="SimpleLine" enabled="1" pass="0">
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
      <symbol name="3" clip_to_extent="1" alpha="1" force_rhr="0" type="line">
        <layer locked="0" class="SimpleLine" enabled="1" pass="0">
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
      <symbol name="4" clip_to_extent="1" alpha="1" force_rhr="0" type="line">
        <layer locked="0" class="SimpleLine" enabled="1" pass="0">
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
    <DiagramCategory enabled="0" lineSizeType="MM" scaleBasedVisibility="0" width="15" diagramOrientation="Up" minimumSize="0" minScaleDenominator="0" sizeScale="3x:0,0,0,0,0,0" backgroundAlpha="255" lineSizeScale="3x:0,0,0,0,0,0" rotationOffset="270" sizeType="MM" scaleDependency="Area" penColor="#000000" opacity="1" backgroundColor="#ffffff" labelPlacementMethod="XHeight" barWidth="5" penAlpha="255" maxScaleDenominator="1e+08" height="15" penWidth="0">
      <fontProperties style="" description=".AppleSystemUIFont,13,-1,5,50,0,0,0,0,0"/>
      <attribute color="#000000" label="" field=""/>
    </DiagramCategory>
  </SingleCategoryDiagramRenderer>
  <DiagramLayerSettings priority="0" zIndex="0" linePlacementFlags="18" obstacle="0" showAll="1" dist="0" placement="2">
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
    <field name="annee_ouve">
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
    <field name="date_saisi">
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
    <field name="gestionnai">
      <editWidget type="TextEdit">
        <config>
          <Option type="Map">
            <Option name="IsMultiline" value="false" type="bool"/>
            <Option name="UseHtml" value="false" type="bool"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="proprietai">
      <editWidget type="TextEdit">
        <config>
          <Option type="Map">
            <Option name="IsMultiline" value="false" type="bool"/>
            <Option name="UseHtml" value="false" type="bool"/>
          </Option>
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
    <field name="sens_uniqu">
      <editWidget type="ValueMap">
        <config>
          <Option type="Map">
            <Option name="map" type="List">
              <Option type="Map">
                <Option name="Vrai" value="T" type="QString"/>
              </Option>
              <Option type="Map">
                <Option name="Faux" value="F" type="QString"/>
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
    <field name="geometrie_">
      <editWidget type="ValueMap">
        <config>
          <Option type="Map">
            <Option name="map" type="List">
              <Option type="Map">
                <Option name="Vrai" value="T" type="QString"/>
              </Option>
              <Option type="Map">
                <Option name="Faux" value="F" type="QString"/>
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
    <alias name="" field="id_local" index="0"/>
    <alias name="" field="annee_ouve" index="1"/>
    <alias name="" field="date_saisi" index="2"/>
    <alias name="" field="src_geom" index="3"/>
    <alias name="" field="src_annee" index="4"/>
    <alias name="" field="avancement" index="5"/>
    <alias name="" field="revetement" index="6"/>
    <alias name="" field="statut" index="7"/>
    <alias name="" field="gestionnai" index="8"/>
    <alias name="" field="proprietai" index="9"/>
    <alias name="" field="precision" index="10"/>
    <alias name="" field="sens_uniqu" index="11"/>
    <alias name="" field="geometrie_" index="12"/>
  </aliases>
  <excludeAttributesWMS/>
  <excludeAttributesWFS/>
  <defaults>
    <default applyOnUpdate="0" field="id_local" expression=""/>
    <default applyOnUpdate="0" field="annee_ouve" expression=""/>
    <default applyOnUpdate="0" field="date_saisi" expression=""/>
    <default applyOnUpdate="0" field="src_geom" expression=""/>
    <default applyOnUpdate="0" field="src_annee" expression=""/>
    <default applyOnUpdate="0" field="avancement" expression=""/>
    <default applyOnUpdate="0" field="revetement" expression=""/>
    <default applyOnUpdate="0" field="statut" expression=""/>
    <default applyOnUpdate="0" field="gestionnai" expression=""/>
    <default applyOnUpdate="0" field="proprietai" expression=""/>
    <default applyOnUpdate="0" field="precision" expression=""/>
    <default applyOnUpdate="0" field="sens_uniqu" expression=""/>
    <default applyOnUpdate="0" field="geometrie_" expression=""/>
  </defaults>
  <constraints>
    <constraint notnull_strength="0" constraints="0" unique_strength="0" field="id_local" exp_strength="0"/>
    <constraint notnull_strength="0" constraints="0" unique_strength="0" field="annee_ouve" exp_strength="0"/>
    <constraint notnull_strength="0" constraints="0" unique_strength="0" field="date_saisi" exp_strength="0"/>
    <constraint notnull_strength="0" constraints="0" unique_strength="0" field="src_geom" exp_strength="0"/>
    <constraint notnull_strength="0" constraints="0" unique_strength="0" field="src_annee" exp_strength="0"/>
    <constraint notnull_strength="0" constraints="0" unique_strength="0" field="avancement" exp_strength="0"/>
    <constraint notnull_strength="0" constraints="0" unique_strength="0" field="revetement" exp_strength="0"/>
    <constraint notnull_strength="0" constraints="0" unique_strength="0" field="statut" exp_strength="0"/>
    <constraint notnull_strength="0" constraints="0" unique_strength="0" field="gestionnai" exp_strength="0"/>
    <constraint notnull_strength="0" constraints="0" unique_strength="0" field="proprietai" exp_strength="0"/>
    <constraint notnull_strength="0" constraints="0" unique_strength="0" field="precision" exp_strength="0"/>
    <constraint notnull_strength="0" constraints="0" unique_strength="0" field="sens_uniqu" exp_strength="0"/>
    <constraint notnull_strength="0" constraints="0" unique_strength="0" field="geometrie_" exp_strength="0"/>
  </constraints>
  <constraintExpressions>
    <constraint desc="" exp="" field="id_local"/>
    <constraint desc="" exp="" field="annee_ouve"/>
    <constraint desc="" exp="" field="date_saisi"/>
    <constraint desc="" exp="" field="src_geom"/>
    <constraint desc="" exp="" field="src_annee"/>
    <constraint desc="" exp="" field="avancement"/>
    <constraint desc="" exp="" field="revetement"/>
    <constraint desc="" exp="" field="statut"/>
    <constraint desc="" exp="" field="gestionnai"/>
    <constraint desc="" exp="" field="proprietai"/>
    <constraint desc="" exp="" field="precision"/>
    <constraint desc="" exp="" field="sens_uniqu"/>
    <constraint desc="" exp="" field="geometrie_"/>
  </constraintExpressions>
  <expressionfields/>
  <attributeactions>
    <defaultAction value="{00000000-0000-0000-0000-000000000000}" key="Canvas"/>
  </attributeactions>
  <attributetableconfig sortOrder="0" actionWidgetStyle="dropDown" sortExpression="&quot;id_local&quot;">
    <columns>
      <column name="id_local" hidden="0" width="-1" type="field"/>
      <column name="annee_ouve" hidden="0" width="-1" type="field"/>
      <column name="date_saisi" hidden="0" width="-1" type="field"/>
      <column name="src_geom" hidden="0" width="-1" type="field"/>
      <column name="src_annee" hidden="0" width="-1" type="field"/>
      <column name="avancement" hidden="0" width="-1" type="field"/>
      <column name="revetement" hidden="0" width="-1" type="field"/>
      <column name="statut" hidden="0" width="-1" type="field"/>
      <column name="gestionnai" hidden="0" width="-1" type="field"/>
      <column name="proprietai" hidden="0" width="-1" type="field"/>
      <column name="precision" hidden="0" width="-1" type="field"/>
      <column name="sens_uniqu" hidden="0" width="-1" type="field"/>
      <column name="geometrie_" hidden="0" width="-1" type="field"/>
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
  <editorlayout>tablayout</editorlayout>
  <attributeEditorForm>
    <attributeEditorField name="id_local" index="0" showLabel="1"/>
    <attributeEditorField name="annee_ouve" index="1" showLabel="1"/>
    <attributeEditorField name="date_saisi" index="2" showLabel="1"/>
    <attributeEditorField name="src_geom" index="3" showLabel="1"/>
    <attributeEditorField name="src_annee" index="4" showLabel="1"/>
    <attributeEditorField name="avancement" index="5" showLabel="1"/>
    <attributeEditorField name="revetement" index="6" showLabel="1"/>
    <attributeEditorField name="statut" index="7" showLabel="1"/>
    <attributeEditorField name="gestionnai" index="8" showLabel="1"/>
    <attributeEditorField name="proprietai" index="9" showLabel="1"/>
    <attributeEditorField name="precision" index="10" showLabel="1"/>
    <attributeEditorField name="sens_uniqu" index="11" showLabel="1"/>
    <attributeEditorField name="geometrie_" index="12" showLabel="1"/>
  </attributeEditorForm>
  <editable>
    <field name="annee_ouve" editable="1"/>
    <field name="avancement" editable="1"/>
    <field name="date_saisi" editable="1"/>
    <field name="geometrie_" editable="1"/>
    <field name="gestionnai" editable="1"/>
    <field name="id_local" editable="0"/>
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
