<!DOCTYPE qgis PUBLIC 'http://mrcc.com/qgis.dtd' 'SYSTEM'>
<qgis simplifyDrawingHints="1" maxScale="0" simplifyLocal="1" simplifyMaxScale="1" minScale="1e+08" simplifyDrawingTol="1" readOnly="0" hasScaleBasedVisibilityFlag="0" simplifyAlgorithm="0" version="3.10.5-A Coruña" styleCategories="AllStyleCategories" labelsEnabled="0">
  <flags>
    <Identifiable>1</Identifiable>
    <Removable>1</Removable>
    <Searchable>1</Searchable>
  </flags>
  <renderer-v2 type="RuleRenderer" symbollevels="0" enableorderby="0" forceraster="0">
    <rules key="{9004152c-ebea-4b9c-bad3-cbaa7e4ec10e}">
      <rule symbol="0" checkstate="0" filter="ELSE" key="{04260390-4615-496a-97bf-4fb78ed1465c}"/>
      <rule symbol="1" label="Voie dédiée" filter=" &quot;statut&quot; = 'ASP'  or  &quot;statut&quot; = 'PCY'  or  &quot;statut&quot; =  'VV' or &quot;statut&quot; = 'BCY' and  &quot;revetement&quot; = 'LIS' " key="{c65d6d33-a6ec-4881-b5ba-d3706a340bea}"/>
      <rule symbol="2" label="Voie dédiée" filter=" &quot;statut&quot; = 'ASP'  or  &quot;statut&quot; = 'PCY'  or  &quot;statut&quot; =  'VV' and  (&quot;revetement&quot; = 'RUG'  or &quot;revetement&quot; = 'MEU')" key="{1614c6c8-8b2f-4915-93a4-528dbf54f227}"/>
      <rule symbol="3" label="voie partagée" filter=" &quot;statut&quot; = 'RTE' or &quot;statut&quot; = 'ICA' and  &quot;revetement&quot; = 'LIS' " key="{f760d85d-6a63-4667-af8d-d5d51ce14dcb}"/>
      <rule symbol="4" label="voie partagée" filter=" &quot;statut&quot; = 'RTE' or &quot;statut&quot; = 'ICA' and  (&quot;revetement&quot; = 'RUG'  or &quot;revetement&quot; = 'MEU')" key="{e91167ef-d66e-4aae-b29d-c5140de7abb0}"/>
    </rules>
    <symbols>
      <symbol type="line" name="0" alpha="1" force_rhr="0" clip_to_extent="1">
        <layer enabled="1" locked="0" pass="0" class="SimpleLine">
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
              <Option type="QString" name="name" value=""/>
              <Option name="properties"/>
              <Option type="QString" name="type" value="collection"/>
            </Option>
          </data_defined_properties>
        </layer>
      </symbol>
      <symbol type="line" name="1" alpha="1" force_rhr="0" clip_to_extent="1">
        <layer enabled="1" locked="0" pass="0" class="SimpleLine">
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
              <Option type="QString" name="name" value=""/>
              <Option name="properties"/>
              <Option type="QString" name="type" value="collection"/>
            </Option>
          </data_defined_properties>
        </layer>
      </symbol>
      <symbol type="line" name="2" alpha="1" force_rhr="0" clip_to_extent="1">
        <layer enabled="1" locked="0" pass="0" class="SimpleLine">
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
              <Option type="QString" name="name" value=""/>
              <Option name="properties"/>
              <Option type="QString" name="type" value="collection"/>
            </Option>
          </data_defined_properties>
        </layer>
      </symbol>
      <symbol type="line" name="3" alpha="1" force_rhr="0" clip_to_extent="1">
        <layer enabled="1" locked="0" pass="0" class="SimpleLine">
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
              <Option type="QString" name="name" value=""/>
              <Option name="properties"/>
              <Option type="QString" name="type" value="collection"/>
            </Option>
          </data_defined_properties>
        </layer>
      </symbol>
      <symbol type="line" name="4" alpha="1" force_rhr="0" clip_to_extent="1">
        <layer enabled="1" locked="0" pass="0" class="SimpleLine">
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
              <Option type="QString" name="name" value=""/>
              <Option name="properties"/>
              <Option type="QString" name="type" value="collection"/>
            </Option>
          </data_defined_properties>
        </layer>
      </symbol>
    </symbols>
  </renderer-v2>
  <customproperties>
    <property value="id_segment" key="dualview/previewExpressions"/>
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
    <field name="id_segment">
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
    <field name="date_saisie">
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
    <field name="avancement">
      <editWidget type="ValueMap">
        <config>
          <Option type="Map">
            <Option type="List" name="map">
              <Option type="Map">
                <Option type="QString" name="Projet" value="01"/>
              </Option>
              <Option type="Map">
                <Option type="QString" name="Tracé arrêté" value="02"/>
              </Option>
              <Option type="Map">
                <Option type="QString" name="Travaux en cours" value="03"/>
              </Option>
              <Option type="Map">
                <Option type="QString" name="Ouvert" value="04"/>
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
            <Option type="List" name="map">
              <Option type="Map">
                <Option type="QString" name="Lisse" value="LIS"/>
              </Option>
              <Option type="Map">
                <Option type="QString" name="Rugueux" value="RUG"/>
              </Option>
              <Option type="Map">
                <Option type="QString" name="Meuble" value="MEU"/>
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
            <Option type="List" name="map">
              <Option type="Map">
                <Option type="QString" name="Voie verte" value="VV"/>
              </Option>
              <Option type="Map">
                <Option type="QString" name="Piste cyclable" value="PCY"/>
              </Option>
              <Option type="Map">
                <Option type="QString" name="Autre site propre" value="ASP"/>
              </Option>
              <Option type="Map">
                <Option type="QString" name="Route" value="RTE"/>
              </Option>
              <Option type="Map">
                <Option type="QString" name="Bande cyclable" value="BCY"/>
              </Option>
              <Option type="Map">
                <Option type="QString" name="Itinéraire à circulation appaisée" value="ICA"/>
              </Option>
            </Option>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="gestionnaire">
      <editWidget type="TextEdit">
        <config>
          <Option type="Map">
            <Option type="bool" name="IsMultiline" value="false"/>
            <Option type="bool" name="UseHtml" value="false"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="proprietaire">
      <editWidget type="TextEdit">
        <config>
          <Option type="Map">
            <Option type="bool" name="IsMultiline" value="false"/>
            <Option type="bool" name="UseHtml" value="false"/>
          </Option>
        </config>
      </editWidget>
    </field>
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
    <field name="sens_unique">
      <editWidget type="TextEdit">
        <config>
          <Option type="Map">
            <Option type="bool" name="IsMultiline" value="false"/>
            <Option type="bool" name="UseHtml" value="false"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="geometrie_fictive">
      <editWidget type="TextEdit">
        <config>
          <Option type="Map">
            <Option type="bool" name="IsMultiline" value="false"/>
            <Option type="bool" name="UseHtml" value="false"/>
          </Option>
        </config>
      </editWidget>
    </field>
  </fieldConfiguration>
  <aliases>
    <alias name="" field="id_segment" index="0"/>
    <alias name="" field="annee_ouverture" index="1"/>
    <alias name="" field="date_saisie" index="2"/>
    <alias name="" field="src_geom" index="3"/>
    <alias name="" field="src_annee" index="4"/>
    <alias name="" field="avancement" index="5"/>
    <alias name="" field="revetement" index="6"/>
    <alias name="" field="statut" index="7"/>
    <alias name="" field="gestionnaire" index="8"/>
    <alias name="" field="proprietaire" index="9"/>
    <alias name="" field="precision" index="10"/>
    <alias name="" field="sens_unique" index="11"/>
    <alias name="" field="geometrie_fictive" index="12"/>
  </aliases>
  <excludeAttributesWMS/>
  <excludeAttributesWFS/>
  <defaults>
    <default field="id_segment" applyOnUpdate="0" expression=""/>
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
    <constraint unique_strength="1" notnull_strength="1" field="id_segment" constraints="3" exp_strength="0"/>
    <constraint unique_strength="0" notnull_strength="0" field="annee_ouverture" constraints="0" exp_strength="0"/>
    <constraint unique_strength="0" notnull_strength="0" field="date_saisie" constraints="0" exp_strength="0"/>
    <constraint unique_strength="0" notnull_strength="0" field="src_geom" constraints="0" exp_strength="0"/>
    <constraint unique_strength="0" notnull_strength="0" field="src_annee" constraints="0" exp_strength="0"/>
    <constraint unique_strength="0" notnull_strength="1" field="avancement" constraints="1" exp_strength="0"/>
    <constraint unique_strength="0" notnull_strength="0" field="revetement" constraints="0" exp_strength="0"/>
    <constraint unique_strength="0" notnull_strength="1" field="statut" constraints="1" exp_strength="0"/>
    <constraint unique_strength="0" notnull_strength="0" field="gestionnaire" constraints="0" exp_strength="0"/>
    <constraint unique_strength="0" notnull_strength="0" field="proprietaire" constraints="0" exp_strength="0"/>
    <constraint unique_strength="0" notnull_strength="0" field="precision" constraints="0" exp_strength="0"/>
    <constraint unique_strength="0" notnull_strength="0" field="sens_unique" constraints="0" exp_strength="0"/>
    <constraint unique_strength="0" notnull_strength="0" field="geometrie_fictive" constraints="0" exp_strength="0"/>
  </constraints>
  <constraintExpressions>
    <constraint exp="" field="id_segment" desc=""/>
    <constraint exp="" field="annee_ouverture" desc=""/>
    <constraint exp="" field="date_saisie" desc=""/>
    <constraint exp="" field="src_geom" desc=""/>
    <constraint exp="" field="src_annee" desc=""/>
    <constraint exp="" field="avancement" desc=""/>
    <constraint exp="" field="revetement" desc=""/>
    <constraint exp="" field="statut" desc=""/>
    <constraint exp="" field="gestionnaire" desc=""/>
    <constraint exp="" field="proprietaire" desc=""/>
    <constraint exp="" field="precision" desc=""/>
    <constraint exp="" field="sens_unique" desc=""/>
    <constraint exp="" field="geometrie_fictive" desc=""/>
  </constraintExpressions>
  <expressionfields/>
  <attributeactions>
    <defaultAction value="{f2b3586e-a4e0-4997-9edc-c84cd2d96230}" key="Canvas"/>
    <actionsetting capture="0" name="coupe un segment en un point" shortTitle="split" notificationMessage="" isEnabledOnlyWhenEditable="1" id="{f2b3586e-a4e0-4997-9edc-c84cd2d96230}" icon="" type="1" action="from qgis.utils import plugins&#xa;plugins['veloroutes_voies_vertes'].run_action('split_segment', [%id_segment%],[% @click_x %],[% @click_y %])&#xa;print([%id_segment%])">
      <actionScope id="Canvas"/>
      <actionScope id="Feature"/>
      <actionScope id="Field"/>
      <actionScope id="Layer"/>
    </actionsetting>
  </attributeactions>
  <attributetableconfig sortExpression="&quot;id_segment&quot;" actionWidgetStyle="dropDown" sortOrder="0">
    <columns>
      <column type="field" name="id_segment" width="-1" hidden="0"/>
      <column type="field" name="src_geom" width="-1" hidden="0"/>
      <column type="field" name="src_annee" width="-1" hidden="0"/>
      <column type="field" name="avancement" width="-1" hidden="0"/>
      <column type="field" name="revetement" width="-1" hidden="0"/>
      <column type="field" name="statut" width="-1" hidden="0"/>
      <column type="field" name="precision" width="-1" hidden="0"/>
      <column type="actions" width="-1" hidden="1"/>
      <column type="field" name="annee_ouverture" width="-1" hidden="0"/>
      <column type="field" name="date_saisie" width="-1" hidden="0"/>
      <column type="field" name="gestionnaire" width="-1" hidden="0"/>
      <column type="field" name="proprietaire" width="-1" hidden="0"/>
      <column type="field" name="sens_unique" width="-1" hidden="0"/>
      <column type="field" name="geometrie_fictive" width="-1" hidden="0"/>
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
    <attributeEditorField name="id_segment" showLabel="1" index="0"/>
    <attributeEditorField name="annee_ouve" showLabel="1" index="-1"/>
    <attributeEditorField name="date_saisi" showLabel="1" index="-1"/>
    <attributeEditorField name="src_geom" showLabel="1" index="3"/>
    <attributeEditorField name="src_annee" showLabel="1" index="4"/>
    <attributeEditorField name="avancement" showLabel="1" index="5"/>
    <attributeEditorField name="revetement" showLabel="1" index="6"/>
    <attributeEditorField name="statut" showLabel="1" index="7"/>
    <attributeEditorField name="gestionnai" showLabel="1" index="-1"/>
    <attributeEditorField name="proprietai" showLabel="1" index="-1"/>
    <attributeEditorField name="precision" showLabel="1" index="10"/>
    <attributeEditorField name="sens_uniqu" showLabel="1" index="-1"/>
    <attributeEditorField name="geometrie_" showLabel="1" index="-1"/>
  </attributeEditorForm>
  <editable>
    <field name="annee_ouve" editable="1"/>
    <field name="annee_ouverture" editable="1"/>
    <field name="avancement" editable="1"/>
    <field name="date_saisi" editable="1"/>
    <field name="date_saisie" editable="1"/>
    <field name="geometrie_" editable="1"/>
    <field name="geometrie_fictive" editable="1"/>
    <field name="gestionnai" editable="1"/>
    <field name="gestionnaire" editable="1"/>
    <field name="id_segment" editable="0"/>
    <field name="precision" editable="1"/>
    <field name="proprietai" editable="1"/>
    <field name="proprietaire" editable="1"/>
    <field name="revetement" editable="1"/>
    <field name="sens_uniqu" editable="1"/>
    <field name="sens_unique" editable="1"/>
    <field name="src_annee" editable="1"/>
    <field name="src_geom" editable="1"/>
    <field name="statut" editable="1"/>
  </editable>
  <labelOnTop>
    <field labelOnTop="0" name="annee_ouve"/>
    <field labelOnTop="0" name="annee_ouverture"/>
    <field labelOnTop="0" name="avancement"/>
    <field labelOnTop="0" name="date_saisi"/>
    <field labelOnTop="0" name="date_saisie"/>
    <field labelOnTop="0" name="geometrie_"/>
    <field labelOnTop="0" name="geometrie_fictive"/>
    <field labelOnTop="0" name="gestionnai"/>
    <field labelOnTop="0" name="gestionnaire"/>
    <field labelOnTop="0" name="id_segment"/>
    <field labelOnTop="0" name="precision"/>
    <field labelOnTop="0" name="proprietai"/>
    <field labelOnTop="0" name="proprietaire"/>
    <field labelOnTop="0" name="revetement"/>
    <field labelOnTop="0" name="sens_uniqu"/>
    <field labelOnTop="0" name="sens_unique"/>
    <field labelOnTop="0" name="src_annee"/>
    <field labelOnTop="0" name="src_geom"/>
    <field labelOnTop="0" name="statut"/>
  </labelOnTop>
  <widgets>
    <widget name="element_87795107_6a41_4d89_b7a9_27020145c4c2_id_segment_segment_7bda5417_48a9_4c43_b874_6c6b490dfa9e_id_segment">
      <config type="Map">
        <Option type="QString" name="nm-rel" value=""/>
      </config>
    </widget>
  </widgets>
  <previewExpression>id_segment</previewExpression>
  <mapTip></mapTip>
  <layerGeometryType>1</layerGeometryType>
</qgis>
