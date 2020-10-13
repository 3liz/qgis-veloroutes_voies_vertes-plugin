<!DOCTYPE qgis PUBLIC 'http://mrcc.com/qgis.dtd' 'SYSTEM'>
<qgis simplifyDrawingTol="1" simplifyMaxScale="1" minScale="1e+08" labelsEnabled="0" simplifyDrawingHints="1" version="3.10.10-A Coruña" readOnly="0" simplifyAlgorithm="0" styleCategories="AllStyleCategories" simplifyLocal="1" hasScaleBasedVisibilityFlag="0" maxScale="0">
  <flags>
    <Identifiable>1</Identifiable>
    <Removable>1</Removable>
    <Searchable>1</Searchable>
  </flags>
  <renderer-v2 enableorderby="0" type="RuleRenderer" forceraster="0" symbollevels="0">
    <rules key="{9004152c-ebea-4b9c-bad3-cbaa7e4ec10e}">
      <rule symbol="0" key="{04260390-4615-496a-97bf-4fb78ed1465c}" filter="ELSE" checkstate="0"/>
      <rule symbol="1" key="{c65d6d33-a6ec-4881-b5ba-d3706a340bea}" filter=" &quot;statut&quot; = 'ASP'  or  &quot;statut&quot; = 'PCY'  or  &quot;statut&quot; =  'VV' or &quot;statut&quot; = 'BCY' and  &quot;revetement&quot; = 'LIS' " label="Voie dédiée"/>
      <rule symbol="2" key="{1614c6c8-8b2f-4915-93a4-528dbf54f227}" filter=" &quot;statut&quot; = 'ASP'  or  &quot;statut&quot; = 'PCY'  or  &quot;statut&quot; =  'VV' and  (&quot;revetement&quot; = 'RUG'  or &quot;revetement&quot; = 'MEU')" label="Voie dédiée"/>
      <rule symbol="3" key="{f760d85d-6a63-4667-af8d-d5d51ce14dcb}" filter=" &quot;statut&quot; = 'RTE' or &quot;statut&quot; = 'ICA' and  &quot;revetement&quot; = 'LIS' " label="voie partagée"/>
      <rule symbol="4" key="{e91167ef-d66e-4aae-b29d-c5140de7abb0}" filter=" &quot;statut&quot; = 'RTE' or &quot;statut&quot; = 'ICA' and  (&quot;revetement&quot; = 'RUG'  or &quot;revetement&quot; = 'MEU')" label="voie partagée"/>
    </rules>
    <symbols>
      <symbol alpha="1" clip_to_extent="1" force_rhr="0" name="0" type="line">
        <layer locked="0" pass="0" enabled="1" class="SimpleLine">
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
              <Option value="" name="name" type="QString"/>
              <Option name="properties"/>
              <Option value="collection" name="type" type="QString"/>
            </Option>
          </data_defined_properties>
        </layer>
      </symbol>
      <symbol alpha="1" clip_to_extent="1" force_rhr="0" name="1" type="line">
        <layer locked="0" pass="0" enabled="1" class="SimpleLine">
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
              <Option value="" name="name" type="QString"/>
              <Option name="properties"/>
              <Option value="collection" name="type" type="QString"/>
            </Option>
          </data_defined_properties>
        </layer>
      </symbol>
      <symbol alpha="1" clip_to_extent="1" force_rhr="0" name="2" type="line">
        <layer locked="0" pass="0" enabled="1" class="SimpleLine">
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
              <Option value="" name="name" type="QString"/>
              <Option name="properties"/>
              <Option value="collection" name="type" type="QString"/>
            </Option>
          </data_defined_properties>
        </layer>
      </symbol>
      <symbol alpha="1" clip_to_extent="1" force_rhr="0" name="3" type="line">
        <layer locked="0" pass="0" enabled="1" class="SimpleLine">
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
              <Option value="" name="name" type="QString"/>
              <Option name="properties"/>
              <Option value="collection" name="type" type="QString"/>
            </Option>
          </data_defined_properties>
        </layer>
      </symbol>
      <symbol alpha="1" clip_to_extent="1" force_rhr="0" name="4" type="line">
        <layer locked="0" pass="0" enabled="1" class="SimpleLine">
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
              <Option value="" name="name" type="QString"/>
              <Option name="properties"/>
              <Option value="collection" name="type" type="QString"/>
            </Option>
          </data_defined_properties>
        </layer>
      </symbol>
    </symbols>
  </renderer-v2>
  <customproperties>
    <property key="dualview/previewExpressions" value="id_segment"/>
    <property key="embeddedWidgets/count" value="0"/>
    <property key="variableNames"/>
    <property key="variableValues"/>
  </customproperties>
  <blendMode>0</blendMode>
  <featureBlendMode>0</featureBlendMode>
  <layerOpacity>1</layerOpacity>
  <SingleCategoryDiagramRenderer attributeLegend="1" diagramType="Histogram">
    <DiagramCategory height="15" penColor="#000000" backgroundAlpha="255" lineSizeType="MM" rotationOffset="270" opacity="1" diagramOrientation="Up" minimumSize="0" penWidth="0" sizeType="MM" enabled="0" penAlpha="255" scaleDependency="Area" lineSizeScale="3x:0,0,0,0,0,0" width="15" barWidth="5" minScaleDenominator="0" labelPlacementMethod="XHeight" sizeScale="3x:0,0,0,0,0,0" maxScaleDenominator="1e+08" backgroundColor="#ffffff" scaleBasedVisibility="0">
      <fontProperties style="" description=".AppleSystemUIFont,13,-1,5,50,0,0,0,0,0"/>
      <attribute color="#000000" field="" label=""/>
    </DiagramCategory>
  </SingleCategoryDiagramRenderer>
  <DiagramLayerSettings linePlacementFlags="18" dist="0" zIndex="0" obstacle="0" priority="0" placement="2" showAll="1">
    <properties>
      <Option type="Map">
        <Option value="" name="name" type="QString"/>
        <Option name="properties"/>
        <Option value="collection" name="type" type="QString"/>
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
            <Option value="false" name="IsMultiline" type="bool"/>
            <Option value="false" name="UseHtml" type="bool"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="annee_ouverture">
      <editWidget type="DateTime">
        <config>
          <Option type="Map">
            <Option value="true" name="allow_null" type="bool"/>
            <Option value="true" name="calendar_popup" type="bool"/>
            <Option value="yyyy-MM-dd" name="display_format" type="QString"/>
            <Option value="yyyy-MM-dd" name="field_format" type="QString"/>
            <Option value="false" name="field_iso_format" type="bool"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="date_saisie">
      <editWidget type="DateTime">
        <config>
          <Option type="Map">
            <Option value="true" name="allow_null" type="bool"/>
            <Option value="true" name="calendar_popup" type="bool"/>
            <Option value="yyyy-MM-dd" name="display_format" type="QString"/>
            <Option value="yyyy-MM-dd" name="field_format" type="QString"/>
            <Option value="false" name="field_iso_format" type="bool"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="src_geom">
      <editWidget type="TextEdit">
        <config>
          <Option type="Map">
            <Option value="false" name="IsMultiline" type="bool"/>
            <Option value="false" name="UseHtml" type="bool"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="src_annee">
      <editWidget type="TextEdit">
        <config>
          <Option type="Map">
            <Option value="false" name="IsMultiline" type="bool"/>
            <Option value="false" name="UseHtml" type="bool"/>
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
                <Option value="01" name="Projet" type="QString"/>
              </Option>
              <Option type="Map">
                <Option value="02" name="Tracé arrêté" type="QString"/>
              </Option>
              <Option type="Map">
                <Option value="03" name="Travaux en cours" type="QString"/>
              </Option>
              <Option type="Map">
                <Option value="04" name="Ouvert" type="QString"/>
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
                <Option value="LIS" name="Lisse" type="QString"/>
              </Option>
              <Option type="Map">
                <Option value="RUG" name="Rugueux" type="QString"/>
              </Option>
              <Option type="Map">
                <Option value="MEU" name="Meuble" type="QString"/>
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
                <Option value="VV" name="Voie verte" type="QString"/>
              </Option>
              <Option type="Map">
                <Option value="PCY" name="Piste cyclable" type="QString"/>
              </Option>
              <Option type="Map">
                <Option value="ASP" name="Autre site propre" type="QString"/>
              </Option>
              <Option type="Map">
                <Option value="RTE" name="Route" type="QString"/>
              </Option>
              <Option type="Map">
                <Option value="BCY" name="Bande cyclable" type="QString"/>
              </Option>
              <Option type="Map">
                <Option value="ICA" name="Itinéraire à circulation appaisée" type="QString"/>
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
            <Option value="false" name="IsMultiline" type="bool"/>
            <Option value="false" name="UseHtml" type="bool"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="proprietaire">
      <editWidget type="TextEdit">
        <config>
          <Option type="Map">
            <Option value="false" name="IsMultiline" type="bool"/>
            <Option value="false" name="UseHtml" type="bool"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="precision">
      <editWidget type="TextEdit">
        <config>
          <Option type="Map">
            <Option value="false" name="IsMultiline" type="bool"/>
            <Option value="false" name="UseHtml" type="bool"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="sens_unique">
      <editWidget type="TextEdit">
        <config>
          <Option type="Map">
            <Option value="false" name="IsMultiline" type="bool"/>
            <Option value="false" name="UseHtml" type="bool"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="geometrie_fictive">
      <editWidget type="TextEdit">
        <config>
          <Option type="Map">
            <Option value="false" name="IsMultiline" type="bool"/>
            <Option value="false" name="UseHtml" type="bool"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="id_on3v">
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
    <alias name="" field="id_on3v" index="13"/>
    <alias name="" field="id_local" index="14"/>
  </aliases>
  <excludeAttributesWMS/>
  <excludeAttributesWFS/>
  <defaults>
    <default expression="" applyOnUpdate="0" field="id_segment"/>
    <default expression="" applyOnUpdate="0" field="annee_ouverture"/>
    <default expression="" applyOnUpdate="0" field="date_saisie"/>
    <default expression="" applyOnUpdate="0" field="src_geom"/>
    <default expression="" applyOnUpdate="0" field="src_annee"/>
    <default expression="" applyOnUpdate="0" field="avancement"/>
    <default expression="" applyOnUpdate="0" field="revetement"/>
    <default expression="" applyOnUpdate="0" field="statut"/>
    <default expression="" applyOnUpdate="0" field="gestionnaire"/>
    <default expression="" applyOnUpdate="0" field="proprietaire"/>
    <default expression="" applyOnUpdate="0" field="precision"/>
    <default expression="" applyOnUpdate="0" field="sens_unique"/>
    <default expression="" applyOnUpdate="0" field="geometrie_fictive"/>
    <default expression="" applyOnUpdate="0" field="id_on3v"/>
    <default expression="" applyOnUpdate="0" field="id_local"/>
  </defaults>
  <constraints>
    <constraint constraints="3" exp_strength="0" notnull_strength="1" unique_strength="1" field="id_segment"/>
    <constraint constraints="0" exp_strength="0" notnull_strength="0" unique_strength="0" field="annee_ouverture"/>
    <constraint constraints="0" exp_strength="0" notnull_strength="0" unique_strength="0" field="date_saisie"/>
    <constraint constraints="0" exp_strength="0" notnull_strength="0" unique_strength="0" field="src_geom"/>
    <constraint constraints="0" exp_strength="0" notnull_strength="0" unique_strength="0" field="src_annee"/>
    <constraint constraints="1" exp_strength="0" notnull_strength="1" unique_strength="0" field="avancement"/>
    <constraint constraints="0" exp_strength="0" notnull_strength="0" unique_strength="0" field="revetement"/>
    <constraint constraints="1" exp_strength="0" notnull_strength="1" unique_strength="0" field="statut"/>
    <constraint constraints="0" exp_strength="0" notnull_strength="0" unique_strength="0" field="gestionnaire"/>
    <constraint constraints="0" exp_strength="0" notnull_strength="0" unique_strength="0" field="proprietaire"/>
    <constraint constraints="0" exp_strength="0" notnull_strength="0" unique_strength="0" field="precision"/>
    <constraint constraints="0" exp_strength="0" notnull_strength="0" unique_strength="0" field="sens_unique"/>
    <constraint constraints="0" exp_strength="0" notnull_strength="0" unique_strength="0" field="geometrie_fictive"/>
    <constraint constraints="0" exp_strength="0" notnull_strength="0" unique_strength="0" field="id_on3v"/>
    <constraint constraints="0" exp_strength="0" notnull_strength="0" unique_strength="0" field="id_local"/>
  </constraints>
  <constraintExpressions>
    <constraint desc="" exp="" field="id_segment"/>
    <constraint desc="" exp="" field="annee_ouverture"/>
    <constraint desc="" exp="" field="date_saisie"/>
    <constraint desc="" exp="" field="src_geom"/>
    <constraint desc="" exp="" field="src_annee"/>
    <constraint desc="" exp="" field="avancement"/>
    <constraint desc="" exp="" field="revetement"/>
    <constraint desc="" exp="" field="statut"/>
    <constraint desc="" exp="" field="gestionnaire"/>
    <constraint desc="" exp="" field="proprietaire"/>
    <constraint desc="" exp="" field="precision"/>
    <constraint desc="" exp="" field="sens_unique"/>
    <constraint desc="" exp="" field="geometrie_fictive"/>
    <constraint desc="" exp="" field="id_on3v"/>
    <constraint desc="" exp="" field="id_local"/>
  </constraintExpressions>
  <expressionfields/>
  <attributeactions>
    <defaultAction key="Canvas" value="{00000000-0000-0000-0000-000000000000}"/>
    <actionsetting shortTitle="split" action="from qgis.utils import plugins&#xa;plugins['veloroutes_voies_vertes'].run_action('split_segment', [%id_segment%],[% @click_x %],[% @click_y %])&#xa;print([%id_segment%])" notificationMessage="" isEnabledOnlyWhenEditable="1" name="Couper un segment en un point" type="1" capture="0" icon="" id="{fbc090fb-66c3-448d-ad53-33b198e0ccfa}">
      <actionScope id="Canvas"/>
      <actionScope id="Layer"/>
      <actionScope id="Feature"/>
      <actionScope id="Field"/>
    </actionsetting>
    <actionsetting shortTitle="Créer une portion" action="from qgis.utils import plugins&#xa;plugins['veloroutes_voies_vertes'].run_action('create_relation', [% '\''||@layer_name||'\'' %] , 'portion', 'element', 'id_portion', 'id_segment', 'v_portion')" notificationMessage="" isEnabledOnlyWhenEditable="0" name="Créer une portion à partir de segments sélectionnés" type="1" capture="0" icon="" id="{79a72580-dab9-4934-93ae-cda8665292f1}">
      <actionScope id="Canvas"/>
      <actionScope id="Layer"/>
      <actionScope id="Feature"/>
      <actionScope id="Field"/>
    </actionsetting>
  </attributeactions>
  <attributetableconfig actionWidgetStyle="dropDown" sortExpression="&quot;id_segment&quot;" sortOrder="0">
    <columns>
      <column name="id_segment" type="field" hidden="0" width="-1"/>
      <column name="src_geom" type="field" hidden="0" width="-1"/>
      <column name="src_annee" type="field" hidden="0" width="-1"/>
      <column name="avancement" type="field" hidden="0" width="-1"/>
      <column name="revetement" type="field" hidden="0" width="-1"/>
      <column name="statut" type="field" hidden="0" width="-1"/>
      <column name="precision" type="field" hidden="0" width="-1"/>
      <column type="actions" hidden="1" width="-1"/>
      <column name="annee_ouverture" type="field" hidden="0" width="-1"/>
      <column name="date_saisie" type="field" hidden="0" width="-1"/>
      <column name="gestionnaire" type="field" hidden="0" width="-1"/>
      <column name="proprietaire" type="field" hidden="0" width="-1"/>
      <column name="sens_unique" type="field" hidden="0" width="-1"/>
      <column name="geometrie_fictive" type="field" hidden="0" width="-1"/>
      <column name="id_on3v" type="field" hidden="0" width="-1"/>
      <column name="id_local" type="field" hidden="0" width="-1"/>
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
    <field editable="1" name="annee_ouve"/>
    <field editable="1" name="annee_ouverture"/>
    <field editable="1" name="avancement"/>
    <field editable="1" name="date_saisi"/>
    <field editable="1" name="date_saisie"/>
    <field editable="1" name="geometrie_"/>
    <field editable="1" name="geometrie_fictive"/>
    <field editable="1" name="gestionnai"/>
    <field editable="1" name="gestionnaire"/>
    <field editable="1" name="id_local"/>
    <field editable="1" name="id_on3v"/>
    <field editable="0" name="id_segment"/>
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
    <field name="id_on3v" labelOnTop="0"/>
    <field name="id_segment" labelOnTop="0"/>
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
    <widget name="element_34_id_segment_segment__id_segment">
      <config type="Map">
        <Option value="" name="nm-rel" type="QString"/>
      </config>
    </widget>
    <widget name="element_597f0835_a433_4dee_8eaf_08a651ae111e_id_segment_segment_7dbbff18_4ee9_4dae_b343_e7fd6fe65998_id_segment">
      <config type="Map">
        <Option value="" name="nm-rel" type="QString"/>
      </config>
    </widget>
    <widget name="element_87795107_6a41_4d89_b7a9_27020145c4c2_id_segment_segment_7bda5417_48a9_4c43_b874_6c6b490dfa9e_id_segment">
      <config type="Map">
        <Option value="" name="nm-rel" type="QString"/>
      </config>
    </widget>
  </widgets>
  <previewExpression>"id_segment"</previewExpression>
  <mapTip></mapTip>
  <layerGeometryType>1</layerGeometryType>
</qgis>
