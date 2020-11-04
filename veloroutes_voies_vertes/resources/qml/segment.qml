<!DOCTYPE qgis PUBLIC 'http://mrcc.com/qgis.dtd' 'SYSTEM'>
<qgis simplifyLocal="1" readOnly="0" version="3.10.10-A Coruña" styleCategories="AllStyleCategories" simplifyAlgorithm="0" maxScale="0" labelsEnabled="0" simplifyMaxScale="1" hasScaleBasedVisibilityFlag="0" simplifyDrawingHints="1" simplifyDrawingTol="1" minScale="1e+8">
  <flags>
    <Identifiable>1</Identifiable>
    <Removable>1</Removable>
    <Searchable>1</Searchable>
  </flags>
  <renderer-v2 enableorderby="0" type="RuleRenderer" forceraster="0" symbollevels="0">
    <rules key="{9004152c-ebea-4b9c-bad3-cbaa7e4ec10e}">
      <rule key="{04260390-4615-496a-97bf-4fb78ed1465c}" filter="ELSE" symbol="0"/>
      <rule key="{c65d6d33-a6ec-4881-b5ba-d3706a340bea}" filter=" &quot;statut&quot; = 'ASP'  or  &quot;statut&quot; = 'PCY'  or  &quot;statut&quot; =  'VV' or &quot;statut&quot; = 'BCY' and  &quot;revetement&quot; = 'LIS' " label="Voie dédiée" symbol="1"/>
      <rule key="{1614c6c8-8b2f-4915-93a4-528dbf54f227}" filter=" &quot;statut&quot; = 'ASP'  or  &quot;statut&quot; = 'PCY'  or  &quot;statut&quot; =  'VV' and  (&quot;revetement&quot; = 'RUG'  or &quot;revetement&quot; = 'MEU')" label="Voie dédiée" symbol="2"/>
      <rule key="{f760d85d-6a63-4667-af8d-d5d51ce14dcb}" filter=" &quot;statut&quot; = 'RTE' or &quot;statut&quot; = 'ICA' and  &quot;revetement&quot; = 'LIS' " label="voie partagée" symbol="3"/>
      <rule key="{e91167ef-d66e-4aae-b29d-c5140de7abb0}" filter=" &quot;statut&quot; = 'RTE' or &quot;statut&quot; = 'ICA' and  (&quot;revetement&quot; = 'RUG'  or &quot;revetement&quot; = 'MEU')" label="voie partagée" symbol="4"/>
    </rules>
    <symbols>
      <symbol alpha="1" type="line" name="0" clip_to_extent="1" force_rhr="0">
        <layer pass="0" class="SimpleLine" enabled="1" locked="0">
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
      <symbol alpha="1" type="line" name="1" clip_to_extent="1" force_rhr="0">
        <layer pass="0" class="SimpleLine" enabled="1" locked="0">
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
      <symbol alpha="1" type="line" name="2" clip_to_extent="1" force_rhr="0">
        <layer pass="0" class="SimpleLine" enabled="1" locked="0">
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
      <symbol alpha="1" type="line" name="3" clip_to_extent="1" force_rhr="0">
        <layer pass="0" class="SimpleLine" enabled="1" locked="0">
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
      <symbol alpha="1" type="line" name="4" clip_to_extent="1" force_rhr="0">
        <layer pass="0" class="SimpleLine" enabled="1" locked="0">
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
    <property key="dualview/previewExpressions" value="&quot;id_segment&quot;"/>
    <property key="embeddedWidgets/count" value="0"/>
    <property key="variableNames"/>
    <property key="variableValues"/>
  </customproperties>
  <blendMode>0</blendMode>
  <featureBlendMode>0</featureBlendMode>
  <layerOpacity>1</layerOpacity>
  <SingleCategoryDiagramRenderer attributeLegend="1" diagramType="Histogram">
    <DiagramCategory backgroundColor="#ffffff" minimumSize="0" diagramOrientation="Up" penAlpha="255" labelPlacementMethod="XHeight" maxScaleDenominator="1e+8" minScaleDenominator="0" width="15" rotationOffset="270" height="15" penColor="#000000" lineSizeScale="3x:0,0,0,0,0,0" opacity="1" backgroundAlpha="255" scaleBasedVisibility="0" barWidth="5" lineSizeType="MM" scaleDependency="Area" sizeType="MM" enabled="0" sizeScale="3x:0,0,0,0,0,0" penWidth="0">
      <fontProperties description=".AppleSystemUIFont,13,-1,5,50,0,0,0,0,0" style=""/>
      <attribute field="" label="" color="#000000"/>
    </DiagramCategory>
  </SingleCategoryDiagramRenderer>
  <DiagramLayerSettings zIndex="0" showAll="1" placement="2" priority="0" linePlacementFlags="18" dist="0" obstacle="0">
    <properties>
      <Option type="Map">
        <Option type="QString" name="name" value=""/>
        <Option name="properties"/>
        <Option type="QString" name="type" value="collection"/>
      </Option>
    </properties>
  </DiagramLayerSettings>
  <geometryOptions geometryPrecision="0" removeDuplicateNodes="0">
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
            <Option type="bool" name="calendar_popup" value="false"/>
            <Option type="QString" name="display_format" value="yyyy"/>
            <Option type="QString" name="field_format" value="yyyy"/>
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
      <editWidget type="UniqueValues">
        <config>
          <Option type="Map">
            <Option type="bool" name="Editable" value="true"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="src_annee">
      <editWidget type="DateTime">
        <config>
          <Option type="Map">
            <Option type="bool" name="allow_null" value="true"/>
            <Option type="bool" name="calendar_popup" value="false"/>
            <Option type="QString" name="display_format" value="yyyy"/>
            <Option type="QString" name="field_format" value="yyyy"/>
            <Option type="bool" name="field_iso_format" value="false"/>
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
              <Option type="Map">
                <Option type="QString" name="Inconnu" value="{2839923C-8B7D-419E-B84B-CA2FE9B80EC7}"/>
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
      <editWidget type="UniqueValues">
        <config>
          <Option type="Map">
            <Option type="bool" name="Editable" value="true"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="proprietaire">
      <editWidget type="UniqueValues">
        <config>
          <Option type="Map">
            <Option type="bool" name="Editable" value="true"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="precision">
      <editWidget type="ValueMap">
        <config>
          <Option type="Map">
            <Option type="List" name="map">
              <Option type="Map">
                <Option type="QString" name="Décimétrique" value="DM"/>
              </Option>
              <Option type="Map">
                <Option type="QString" name="Métrique" value="M"/>
              </Option>
              <Option type="Map">
                <Option type="QString" name="Décamétrique" value="DC"/>
              </Option>
              <Option type="Map">
                <Option type="QString" name="Hectométrique" value="HM"/>
              </Option>
              <Option type="Map">
                <Option type="QString" name="Kilométrique" value="KM"/>
              </Option>
              <Option type="Map">
                <Option type="QString" name="Non estimée" value="NE"/>
              </Option>
              <Option type="Map">
                <Option type="QString" name="Non renseignée" value="{2839923C-8B7D-419E-B84B-CA2FE9B80EC7}"/>
              </Option>
            </Option>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="sens_unique">
      <editWidget type="ValueMap">
        <config>
          <Option type="Map">
            <Option type="List" name="map">
              <Option type="Map">
                <Option type="QString" name="Bidirectionnelle" value="F"/>
              </Option>
              <Option type="Map">
                <Option type="QString" name="Monodirectionnelle" value="T"/>
              </Option>
              <Option type="Map">
                <Option type="QString" name="Ne sais pas" value="N"/>
              </Option>
              <Option type="Map">
                <Option type="QString" name="Non renseigné" value="{2839923C-8B7D-419E-B84B-CA2FE9B80EC7}"/>
              </Option>
            </Option>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="geometrie_fictive">
      <editWidget type="ValueMap">
        <config>
          <Option type="Map">
            <Option type="List" name="map">
              <Option type="Map">
                <Option type="QString" name="Non" value="F"/>
              </Option>
              <Option type="Map">
                <Option type="QString" name="Oui" value="T"/>
              </Option>
              <Option type="Map">
                <Option type="QString" name="Ne sais pas" value="N"/>
              </Option>
              <Option type="Map">
                <Option type="QString" name="Non précisée" value="{2839923C-8B7D-419E-B84B-CA2FE9B80EC7}"/>
              </Option>
            </Option>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="id_on3v">
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
  </fieldConfiguration>
  <aliases>
    <alias name="Identifiant" field="id_segment" index="0"/>
    <alias name="Année d'ouverture" field="annee_ouverture" index="1"/>
    <alias name="Date de saisie" field="date_saisie" index="2"/>
    <alias name="Source de digitalisation" field="src_geom" index="3"/>
    <alias name="Année de la source de digit" field="src_annee" index="4"/>
    <alias name="Avancement" field="avancement" index="5"/>
    <alias name="Revêtement" field="revetement" index="6"/>
    <alias name="Statut" field="statut" index="7"/>
    <alias name="Maître d'oeuvre" field="gestionnaire" index="8"/>
    <alias name="Propriétaire" field="proprietaire" index="9"/>
    <alias name="Précision" field="precision" index="10"/>
    <alias name="Sens unique" field="sens_unique" index="11"/>
    <alias name="Géométrie fictive" field="geometrie_fictive" index="12"/>
    <alias name="Id. ON3V" field="id_on3v" index="13"/>
    <alias name="Id. Local" field="id_local" index="14"/>
  </aliases>
  <excludeAttributesWMS/>
  <excludeAttributesWFS/>
  <defaults>
    <default applyOnUpdate="0" field="id_segment" expression=""/>
    <default applyOnUpdate="0" field="annee_ouverture" expression=""/>
    <default applyOnUpdate="1" field="date_saisie" expression="to_date(NOW())"/>
    <default applyOnUpdate="0" field="src_geom" expression=""/>
    <default applyOnUpdate="0" field="src_annee" expression=""/>
    <default applyOnUpdate="0" field="avancement" expression="'01'"/>
    <default applyOnUpdate="0" field="revetement" expression=""/>
    <default applyOnUpdate="0" field="statut" expression=""/>
    <default applyOnUpdate="0" field="gestionnaire" expression=""/>
    <default applyOnUpdate="0" field="proprietaire" expression=""/>
    <default applyOnUpdate="0" field="precision" expression="NULL"/>
    <default applyOnUpdate="0" field="sens_unique" expression="NULL"/>
    <default applyOnUpdate="0" field="geometrie_fictive" expression="NULL"/>
    <default applyOnUpdate="0" field="id_on3v" expression=""/>
    <default applyOnUpdate="0" field="id_local" expression=""/>
  </defaults>
  <constraints>
    <constraint constraints="3" unique_strength="2" field="id_segment" exp_strength="0" notnull_strength="2"/>
    <constraint constraints="0" unique_strength="0" field="annee_ouverture" exp_strength="0" notnull_strength="0"/>
    <constraint constraints="1" unique_strength="0" field="date_saisie" exp_strength="0" notnull_strength="1"/>
    <constraint constraints="0" unique_strength="0" field="src_geom" exp_strength="0" notnull_strength="0"/>
    <constraint constraints="0" unique_strength="0" field="src_annee" exp_strength="0" notnull_strength="0"/>
    <constraint constraints="1" unique_strength="0" field="avancement" exp_strength="0" notnull_strength="1"/>
    <constraint constraints="0" unique_strength="0" field="revetement" exp_strength="0" notnull_strength="0"/>
    <constraint constraints="1" unique_strength="0" field="statut" exp_strength="0" notnull_strength="1"/>
    <constraint constraints="0" unique_strength="0" field="gestionnaire" exp_strength="0" notnull_strength="0"/>
    <constraint constraints="0" unique_strength="0" field="proprietaire" exp_strength="0" notnull_strength="0"/>
    <constraint constraints="0" unique_strength="0" field="precision" exp_strength="0" notnull_strength="0"/>
    <constraint constraints="0" unique_strength="0" field="sens_unique" exp_strength="0" notnull_strength="0"/>
    <constraint constraints="0" unique_strength="0" field="geometrie_fictive" exp_strength="0" notnull_strength="0"/>
    <constraint constraints="0" unique_strength="0" field="id_on3v" exp_strength="0" notnull_strength="0"/>
    <constraint constraints="0" unique_strength="0" field="id_local" exp_strength="0" notnull_strength="0"/>
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
    <constraint exp="" field="id_on3v" desc=""/>
    <constraint exp="" field="id_local" desc=""/>
  </constraintExpressions>
  <expressionfields/>
  <attributeactions>
    <defaultAction key="Canvas" value="{00000000-0000-0000-0000-000000000000}"/>
    <actionsetting type="1" name="Couper un segment en un point" capture="0" id="{adebc8b8-9bef-44df-b9d7-290193d85bc8}" shortTitle="split" notificationMessage="" isEnabledOnlyWhenEditable="1" action="from qgis.utils import plugins&#xa;plugins['veloroutes_voies_vertes'].run_action('split_segment', [%id_segment%],[% @click_x %],[% @click_y %])&#xa;print([%id_segment%])" icon="">
      <actionScope id="Field"/>
      <actionScope id="Layer"/>
      <actionScope id="Feature"/>
      <actionScope id="Canvas"/>
    </actionsetting>
    <actionsetting type="1" name="Créer une portion à partir de segments sélectionnés" capture="0" id="{2b73aeb0-b6f5-4267-bd1c-2fa8ade641cc}" shortTitle="Créer une portion" notificationMessage="" isEnabledOnlyWhenEditable="0" action="from qgis.utils import plugins&#xa;plugins['veloroutes_voies_vertes'].run_action('create_relation', [% '\''||@layer_name||'\'' %] , 'portion', 'element', 'id_portion', 'id_segment', 'v_portion')" icon="">
      <actionScope id="Field"/>
      <actionScope id="Layer"/>
      <actionScope id="Feature"/>
      <actionScope id="Canvas"/>
    </actionsetting>
  </attributeactions>
  <attributetableconfig sortOrder="0" sortExpression="&quot;date_saisie&quot;" actionWidgetStyle="dropDown">
    <columns>
      <column hidden="0" type="field" name="id_segment" width="-1"/>
      <column hidden="0" type="field" name="src_geom" width="-1"/>
      <column hidden="0" type="field" name="src_annee" width="203"/>
      <column hidden="0" type="field" name="avancement" width="148"/>
      <column hidden="0" type="field" name="revetement" width="-1"/>
      <column hidden="0" type="field" name="statut" width="-1"/>
      <column hidden="0" type="field" name="precision" width="194"/>
      <column hidden="1" type="actions" width="-1"/>
      <column hidden="0" type="field" name="annee_ouverture" width="182"/>
      <column hidden="0" type="field" name="date_saisie" width="-1"/>
      <column hidden="0" type="field" name="gestionnaire" width="-1"/>
      <column hidden="0" type="field" name="proprietaire" width="-1"/>
      <column hidden="0" type="field" name="sens_unique" width="279"/>
      <column hidden="0" type="field" name="geometrie_fictive" width="-1"/>
      <column hidden="0" type="field" name="id_on3v" width="-1"/>
      <column hidden="0" type="field" name="id_local" width="-1"/>
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
    <attributeEditorField name="id_segment" index="0" showLabel="1"/>
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
    <field name="annee_ouve" editable="1"/>
    <field name="annee_ouverture" editable="1"/>
    <field name="avancement" editable="1"/>
    <field name="date_saisi" editable="1"/>
    <field name="date_saisie" editable="0"/>
    <field name="geometrie_" editable="1"/>
    <field name="geometrie_fictive" editable="1"/>
    <field name="gestionnai" editable="1"/>
    <field name="gestionnaire" editable="1"/>
    <field name="id_local" editable="1"/>
    <field name="id_on3v" editable="1"/>
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
        <Option type="QString" name="nm-rel" value=""/>
      </config>
    </widget>
    <widget name="element_597f0835_a433_4dee_8eaf_08a651ae111e_id_segment_segment_7dbbff18_4ee9_4dae_b343_e7fd6fe65998_id_segment">
      <config type="Map">
        <Option type="QString" name="nm-rel" value=""/>
      </config>
    </widget>
    <widget name="element_87795107_6a41_4d89_b7a9_27020145c4c2_id_segment_segment_7bda5417_48a9_4c43_b874_6c6b490dfa9e_id_segment">
      <config type="Map">
        <Option type="QString" name="nm-rel" value=""/>
      </config>
    </widget>
    <widget name="element_9448090b_c4ec_49b1_81c1_c622817d5aac_id_segment_segment_ac1a9aa3_495d_4435_b60a_80059c8c1b81_id_segment">
      <config type="Map">
        <Option type="QString" name="nm-rel" value=""/>
      </config>
    </widget>
  </widgets>
  <previewExpression>"id_segment"</previewExpression>
  <mapTip></mapTip>
  <layerGeometryType>1</layerGeometryType>
</qgis>
