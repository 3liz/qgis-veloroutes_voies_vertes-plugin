<!DOCTYPE qgis PUBLIC 'http://mrcc.com/qgis.dtd' 'SYSTEM'>
<qgis simplifyDrawingTol="1" hasScaleBasedVisibilityFlag="0" simplifyAlgorithm="0" styleCategories="AllStyleCategories" minScale="1e+8" simplifyDrawingHints="1" simplifyMaxScale="1" simplifyLocal="1" version="3.10.14-A Coruña" maxScale="0" labelsEnabled="0" readOnly="0">
  <flags>
    <Identifiable>1</Identifiable>
    <Removable>1</Removable>
    <Searchable>1</Searchable>
  </flags>
  <renderer-v2 symbollevels="0" type="RuleRenderer" forceraster="0" enableorderby="0">
    <rules key="{9004152c-ebea-4b9c-bad3-cbaa7e4ec10e}">
      <rule symbol="0" key="{04260390-4615-496a-97bf-4fb78ed1465c}" filter="ELSE"/>
      <rule symbol="1" key="{c65d6d33-a6ec-4881-b5ba-d3706a340bea}" label="Voie dédiée" filter=" &quot;statut&quot; = 'ASP'  or  &quot;statut&quot; = 'PCY'  or  &quot;statut&quot; =  'VV' or &quot;statut&quot; = 'BCY' and  &quot;revetement&quot; = 'LIS' "/>
      <rule symbol="2" key="{1614c6c8-8b2f-4915-93a4-528dbf54f227}" label="Voie dédiée" filter=" &quot;statut&quot; = 'ASP'  or  &quot;statut&quot; = 'PCY'  or  &quot;statut&quot; =  'VV' and  (&quot;revetement&quot; = 'RUG'  or &quot;revetement&quot; = 'MEU')"/>
      <rule symbol="3" key="{f760d85d-6a63-4667-af8d-d5d51ce14dcb}" label="voie partagée" filter=" &quot;statut&quot; = 'RTE' or &quot;statut&quot; = 'ICA' and  &quot;revetement&quot; = 'LIS' "/>
      <rule symbol="4" key="{e91167ef-d66e-4aae-b29d-c5140de7abb0}" label="voie partagée" filter=" &quot;statut&quot; = 'RTE' or &quot;statut&quot; = 'ICA' and  (&quot;revetement&quot; = 'RUG'  or &quot;revetement&quot; = 'MEU')"/>
    </rules>
    <symbols>
      <symbol clip_to_extent="1" alpha="1" name="0" force_rhr="0" type="line">
        <layer class="SimpleLine" pass="0" locked="0" enabled="1">
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
      <symbol clip_to_extent="1" alpha="1" name="1" force_rhr="0" type="line">
        <layer class="SimpleLine" pass="0" locked="0" enabled="1">
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
      <symbol clip_to_extent="1" alpha="1" name="2" force_rhr="0" type="line">
        <layer class="SimpleLine" pass="0" locked="0" enabled="1">
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
      <symbol clip_to_extent="1" alpha="1" name="3" force_rhr="0" type="line">
        <layer class="SimpleLine" pass="0" locked="0" enabled="1">
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
      <symbol clip_to_extent="1" alpha="1" name="4" force_rhr="0" type="line">
        <layer class="SimpleLine" pass="0" locked="0" enabled="1">
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
    <property value="&quot;id_segment&quot;" key="dualview/previewExpressions"/>
    <property value="0" key="embeddedWidgets/count"/>
    <property key="variableNames"/>
    <property key="variableValues"/>
  </customproperties>
  <blendMode>0</blendMode>
  <featureBlendMode>0</featureBlendMode>
  <layerOpacity>1</layerOpacity>
  <SingleCategoryDiagramRenderer diagramType="Histogram" attributeLegend="1">
    <DiagramCategory scaleBasedVisibility="0" maxScaleDenominator="1e+8" enabled="0" scaleDependency="Area" penWidth="0" sizeType="MM" minScaleDenominator="0" rotationOffset="270" height="15" labelPlacementMethod="XHeight" sizeScale="3x:0,0,0,0,0,0" barWidth="5" lineSizeType="MM" diagramOrientation="Up" penAlpha="255" opacity="1" backgroundColor="#ffffff" penColor="#000000" width="15" minimumSize="0" backgroundAlpha="255" lineSizeScale="3x:0,0,0,0,0,0">
      <fontProperties description=".AppleSystemUIFont,13,-1,5,50,0,0,0,0,0" style=""/>
      <attribute field="" color="#000000" label=""/>
    </DiagramCategory>
  </SingleCategoryDiagramRenderer>
  <DiagramLayerSettings linePlacementFlags="18" obstacle="0" zIndex="0" priority="0" dist="0" placement="2" showAll="1">
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
    <field name="id_segment">
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
          <Option type="Map">
            <Option name="allow_null" value="true" type="bool"/>
            <Option name="calendar_popup" value="false" type="bool"/>
            <Option name="display_format" value="yyyy" type="QString"/>
            <Option name="field_format" value="yyyy" type="QString"/>
            <Option name="field_iso_format" value="false" type="bool"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="date_saisie">
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
      <editWidget type="UniqueValues">
        <config>
          <Option type="Map">
            <Option name="Editable" value="true" type="bool"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="src_annee">
      <editWidget type="DateTime">
        <config>
          <Option type="Map">
            <Option name="allow_null" value="true" type="bool"/>
            <Option name="calendar_popup" value="false" type="bool"/>
            <Option name="display_format" value="yyyy" type="QString"/>
            <Option name="field_format" value="yyyy" type="QString"/>
            <Option name="field_iso_format" value="false" type="bool"/>
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
              <Option type="Map">
                <Option name="Inconnu" value="{2839923C-8B7D-419E-B84B-CA2FE9B80EC7}" type="QString"/>
              </Option>
            </Option>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="statut">
      <editWidget type="ValueRelation">
        <config>
          <Option type="Map">
            <Option name="AllowMulti" value="false" type="bool"/>
            <Option name="AllowNull" value="false" type="bool"/>
            <Option name="FilterExpression" value=" CASE WHEN current_value('amenagement_type') = 'BSP' THEN &quot;code&quot; = 'ASP'&#xa;      WHEN current_value('amenagement_type') = 'BCR' THEN &quot;code&quot; = 'RTE'&#xa;&#x9;  ELSE current_value('amenagement_type') = &quot;code&quot; END" type="QString"/>
            <Option name="Key" value="code" type="QString"/>
            <Option name="Layer" value="statut_segment_val_2af9f0c3_78d9_464c_89fc_f0db344c1a57" type="QString"/>
            <Option name="LayerName" value="statut_segment_val" type="QString"/>
            <Option name="LayerProviderName" value="postgres" type="QString"/>
            <Option name="LayerSource" value="dbname='sig' host=localhost port=5432 user='dhont' sslmode=disable key='id' estimatedmetadata=true checkPrimaryKeyUnicity='1' table=&quot;veloroutes&quot;.&quot;statut_segment_val&quot; sql=" type="QString"/>
            <Option name="NofColumns" value="1" type="int"/>
            <Option name="OrderByValue" value="false" type="bool"/>
            <Option name="UseCompleter" value="false" type="bool"/>
            <Option name="Value" value="libelle" type="QString"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="gestionnaire">
      <editWidget type="UniqueValues">
        <config>
          <Option type="Map">
            <Option name="Editable" value="true" type="bool"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="proprietaire">
      <editWidget type="UniqueValues">
        <config>
          <Option type="Map">
            <Option name="Editable" value="true" type="bool"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="precision">
      <editWidget type="ValueMap">
        <config>
          <Option type="Map">
            <Option name="map" type="List">
              <Option type="Map">
                <Option name="Décimétrique" value="DM" type="QString"/>
              </Option>
              <Option type="Map">
                <Option name="Métrique" value="M" type="QString"/>
              </Option>
              <Option type="Map">
                <Option name="Kilométrique" value="KM" type="QString"/>
              </Option>
              <Option type="Map">
                <Option name="Non estimée" value="NE" type="QString"/>
              </Option>
              <Option type="Map">
                <Option name="Non renseignée" value="{2839923C-8B7D-419E-B84B-CA2FE9B80EC7}" type="QString"/>
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
            <Option name="map" type="List">
              <Option type="Map">
                <Option name="Bidirectionnelle" value="F" type="QString"/>
              </Option>
              <Option type="Map">
                <Option name="Monodirectionnelle" value="T" type="QString"/>
              </Option>
              <Option type="Map">
                <Option name="Ne sais pas" value="N" type="QString"/>
              </Option>
              <Option type="Map">
                <Option name="Non renseigné" value="{2839923C-8B7D-419E-B84B-CA2FE9B80EC7}" type="QString"/>
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
            <Option name="map" type="List">
              <Option type="Map">
                <Option name="Non" value="F" type="QString"/>
              </Option>
              <Option type="Map">
                <Option name="Oui" value="T" type="QString"/>
              </Option>
              <Option type="Map">
                <Option name="Ne sais pas" value="N" type="QString"/>
              </Option>
              <Option type="Map">
                <Option name="Non précisée" value="{2839923C-8B7D-419E-B84B-CA2FE9B80EC7}" type="QString"/>
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
            <Option name="IsMultiline" value="false" type="bool"/>
            <Option name="UseHtml" value="false" type="bool"/>
          </Option>
        </config>
      </editWidget>
    </field>
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
    <field name="desserte_college">
      <editWidget type="ValueMap">
        <config>
          <Option type="Map">
            <Option name="map" type="List">
              <Option type="Map">
                <Option name="Non" value="F" type="QString"/>
              </Option>
              <Option type="Map">
                <Option name="Oui" value="T" type="QString"/>
              </Option>
              <Option type="Map">
                <Option name="Ne sais pas" value="N" type="QString"/>
              </Option>
              <Option type="Map">
                <Option name="Non renseignée" value="{2839923C-8B7D-419E-B84B-CA2FE9B80EC7}" type="QString"/>
              </Option>
            </Option>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="amenagement">
      <editWidget type="ValueRelation">
        <config>
          <Option type="Map">
            <Option name="AllowMulti" value="false" type="bool"/>
            <Option name="AllowNull" value="true" type="bool"/>
            <Option name="FilterExpression" value="" type="QString"/>
            <Option name="Key" value="code" type="QString"/>
            <Option name="Layer" value="amenagement_segment_val_2bfce3bc_f4d1_4f92_b3d0_bd85e84fad54" type="QString"/>
            <Option name="LayerName" value="amenagement_segment_val" type="QString"/>
            <Option name="LayerProviderName" value="postgres" type="QString"/>
            <Option name="LayerSource" value="dbname='sig' host=localhost port=5432 user='dhont' sslmode=disable key='id' estimatedmetadata=true checkPrimaryKeyUnicity='1' table=&quot;veloroutes&quot;.&quot;amenagement_segment_val&quot; sql=" type="QString"/>
            <Option name="NofColumns" value="1" type="int"/>
            <Option name="OrderByValue" value="false" type="bool"/>
            <Option name="UseCompleter" value="false" type="bool"/>
            <Option name="Value" value="libelle" type="QString"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="amenagement_type">
      <editWidget type="ValueRelation">
        <config>
          <Option type="Map">
            <Option name="AllowMulti" value="false" type="bool"/>
            <Option name="AllowNull" value="true" type="bool"/>
            <Option name="FilterExpression" value=" current_value( 'amenagement' ) = &quot;amenagement&quot;" type="QString"/>
            <Option name="Key" value="code" type="QString"/>
            <Option name="Layer" value="amenagement_type_segment_val_5c243c59_778f_430d_a818_e39c981a9ac4" type="QString"/>
            <Option name="LayerName" value="amenagement_type_segment_val" type="QString"/>
            <Option name="LayerProviderName" value="postgres" type="QString"/>
            <Option name="LayerSource" value="dbname='sig' host=localhost port=5432 user='dhont' sslmode=disable key='id' estimatedmetadata=true checkPrimaryKeyUnicity='1' table=&quot;veloroutes&quot;.&quot;amenagement_type_segment_val&quot; sql=" type="QString"/>
            <Option name="NofColumns" value="1" type="int"/>
            <Option name="OrderByValue" value="false" type="bool"/>
            <Option name="UseCompleter" value="false" type="bool"/>
            <Option name="Value" value="libelle" type="QString"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="longueur">
      <editWidget type="Range">
        <config>
          <Option type="Map">
            <Option name="AllowNull" value="true" type="bool"/>
            <Option name="Max" value="2147483647" type="int"/>
            <Option name="Min" value="0" type="int"/>
            <Option name="Precision" value="0" type="int"/>
            <Option name="Step" value="1" type="int"/>
            <Option name="Style" value="SpinBox" type="QString"/>
          </Option>
        </config>
      </editWidget>
    </field>
  </fieldConfiguration>
  <aliases>
    <alias field="id_segment" name="Identifiant" index="0"/>
    <alias field="annee_ouverture" name="Année d'ouverture" index="1"/>
    <alias field="date_saisie" name="Date de saisie" index="2"/>
    <alias field="src_geom" name="Source de digitalisation" index="3"/>
    <alias field="src_annee" name="Année de la source de digit" index="4"/>
    <alias field="avancement" name="Avancement" index="5"/>
    <alias field="revetement" name="Revêtement" index="6"/>
    <alias field="statut" name="Statut" index="7"/>
    <alias field="gestionnaire" name="Gestionnaire" index="8"/>
    <alias field="proprietaire" name="Maître d'ouvrage" index="9"/>
    <alias field="precision" name="Précision" index="10"/>
    <alias field="sens_unique" name="Sens unique" index="11"/>
    <alias field="geometrie_fictive" name="Géométrie fictive" index="12"/>
    <alias field="id_on3v" name="Id. ON3V" index="13"/>
    <alias field="id_local" name="Id. Local" index="14"/>
    <alias field="desserte_college" name="Désserte de collège" index="15"/>
    <alias field="amenagement" name="Aménagement" index="16"/>
    <alias field="amenagement_type" name="Type d'aménagement" index="17"/>
    <alias field="longueur" name="Longueur du segment" index="18"/>
  </aliases>
  <excludeAttributesWMS/>
  <excludeAttributesWFS/>
  <defaults>
    <default expression="" field="id_segment" applyOnUpdate="0"/>
    <default expression="" field="annee_ouverture" applyOnUpdate="0"/>
    <default expression="to_date(NOW())" field="date_saisie" applyOnUpdate="1"/>
    <default expression="" field="src_geom" applyOnUpdate="0"/>
    <default expression="" field="src_annee" applyOnUpdate="0"/>
    <default expression="'01'" field="avancement" applyOnUpdate="0"/>
    <default expression="" field="revetement" applyOnUpdate="0"/>
    <default expression="NULL" field="statut" applyOnUpdate="0"/>
    <default expression="" field="gestionnaire" applyOnUpdate="0"/>
    <default expression="" field="proprietaire" applyOnUpdate="0"/>
    <default expression="NULL" field="precision" applyOnUpdate="0"/>
    <default expression="NULL" field="sens_unique" applyOnUpdate="0"/>
    <default expression="NULL" field="geometrie_fictive" applyOnUpdate="0"/>
    <default expression="" field="id_on3v" applyOnUpdate="0"/>
    <default expression="" field="id_local" applyOnUpdate="0"/>
    <default expression="NULL" field="desserte_college" applyOnUpdate="0"/>
    <default expression="NULL" field="amenagement" applyOnUpdate="0"/>
    <default expression="NULL" field="amenagement_type" applyOnUpdate="0"/>
    <default expression="" field="longueur" applyOnUpdate="0"/>
  </defaults>
  <constraints>
    <constraint field="id_segment" notnull_strength="2" exp_strength="0" unique_strength="2" constraints="3"/>
    <constraint field="annee_ouverture" notnull_strength="0" exp_strength="0" unique_strength="0" constraints="0"/>
    <constraint field="date_saisie" notnull_strength="1" exp_strength="0" unique_strength="0" constraints="1"/>
    <constraint field="src_geom" notnull_strength="0" exp_strength="0" unique_strength="0" constraints="0"/>
    <constraint field="src_annee" notnull_strength="0" exp_strength="0" unique_strength="0" constraints="0"/>
    <constraint field="avancement" notnull_strength="1" exp_strength="0" unique_strength="0" constraints="1"/>
    <constraint field="revetement" notnull_strength="0" exp_strength="0" unique_strength="0" constraints="0"/>
    <constraint field="statut" notnull_strength="1" exp_strength="0" unique_strength="0" constraints="1"/>
    <constraint field="gestionnaire" notnull_strength="0" exp_strength="0" unique_strength="0" constraints="0"/>
    <constraint field="proprietaire" notnull_strength="0" exp_strength="0" unique_strength="0" constraints="0"/>
    <constraint field="precision" notnull_strength="0" exp_strength="0" unique_strength="0" constraints="0"/>
    <constraint field="sens_unique" notnull_strength="0" exp_strength="0" unique_strength="0" constraints="0"/>
    <constraint field="geometrie_fictive" notnull_strength="0" exp_strength="0" unique_strength="0" constraints="0"/>
    <constraint field="id_on3v" notnull_strength="0" exp_strength="0" unique_strength="0" constraints="0"/>
    <constraint field="id_local" notnull_strength="0" exp_strength="0" unique_strength="0" constraints="0"/>
    <constraint field="desserte_college" notnull_strength="0" exp_strength="0" unique_strength="0" constraints="0"/>
    <constraint field="amenagement" notnull_strength="1" exp_strength="0" unique_strength="0" constraints="1"/>
    <constraint field="amenagement_type" notnull_strength="1" exp_strength="0" unique_strength="0" constraints="1"/>
    <constraint field="longueur" notnull_strength="0" exp_strength="0" unique_strength="0" constraints="0"/>
  </constraints>
  <constraintExpressions>
    <constraint field="id_segment" desc="" exp=""/>
    <constraint field="annee_ouverture" desc="" exp=""/>
    <constraint field="date_saisie" desc="" exp=""/>
    <constraint field="src_geom" desc="" exp=""/>
    <constraint field="src_annee" desc="" exp=""/>
    <constraint field="avancement" desc="" exp=""/>
    <constraint field="revetement" desc="" exp=""/>
    <constraint field="statut" desc="" exp=""/>
    <constraint field="gestionnaire" desc="" exp=""/>
    <constraint field="proprietaire" desc="" exp=""/>
    <constraint field="precision" desc="" exp=""/>
    <constraint field="sens_unique" desc="" exp=""/>
    <constraint field="geometrie_fictive" desc="" exp=""/>
    <constraint field="id_on3v" desc="" exp=""/>
    <constraint field="id_local" desc="" exp=""/>
    <constraint field="desserte_college" desc="" exp=""/>
    <constraint field="amenagement" desc="" exp=""/>
    <constraint field="amenagement_type" desc="" exp=""/>
    <constraint field="longueur" desc="" exp=""/>
  </constraintExpressions>
  <expressionfields>
    <field typeName="integer" expression="$length" comment="" name="longueur" type="2" length="0" subType="0" precision="0"/>
  </expressionfields>
  <attributeactions>
    <defaultAction value="{00000000-0000-0000-0000-000000000000}" key="Canvas"/>
    <actionsetting capture="0" icon="" id="{5c4dd79f-5a39-4ffa-a133-f74bd4c5b8a1}" name="Couper un segment en un point" action="from qgis.utils import plugins&#xa;plugins['veloroutes_voies_vertes'].run_action('split_segment', [%id_segment%],[% @click_x %],[% @click_y %])" shortTitle="Couper un segment" type="1" notificationMessage="" isEnabledOnlyWhenEditable="1">
      <actionScope id="Layer"/>
      <actionScope id="Feature"/>
      <actionScope id="Field"/>
      <actionScope id="Canvas"/>
    </actionsetting>
    <actionsetting capture="0" icon="" id="{fd620c85-6c14-459a-ab7f-fec2beeb5077}" name="Créer une portion à partir de segments sélectionnés" action="from qgis.utils import plugins&#xa;plugins['veloroutes_voies_vertes'].run_action('create_relation', [% '\''||@layer_name||'\'' %] , 'portion', 'element', 'id_portion', 'id_segment', 'v_portion')" shortTitle="Créer une portion" type="1" notificationMessage="" isEnabledOnlyWhenEditable="0">
      <actionScope id="Layer"/>
      <actionScope id="Feature"/>
      <actionScope id="Field"/>
      <actionScope id="Canvas"/>
    </actionsetting>
  </attributeactions>
  <attributetableconfig actionWidgetStyle="dropDown" sortOrder="0" sortExpression="&quot;date_saisie&quot;">
    <columns>
      <column hidden="0" name="id_segment" type="field" width="-1"/>
      <column hidden="0" name="src_geom" type="field" width="-1"/>
      <column hidden="0" name="src_annee" type="field" width="203"/>
      <column hidden="0" name="avancement" type="field" width="148"/>
      <column hidden="0" name="revetement" type="field" width="-1"/>
      <column hidden="0" name="statut" type="field" width="-1"/>
      <column hidden="0" name="precision" type="field" width="194"/>
      <column hidden="1" type="actions" width="-1"/>
      <column hidden="0" name="annee_ouverture" type="field" width="182"/>
      <column hidden="0" name="date_saisie" type="field" width="-1"/>
      <column hidden="0" name="gestionnaire" type="field" width="-1"/>
      <column hidden="0" name="proprietaire" type="field" width="-1"/>
      <column hidden="0" name="sens_unique" type="field" width="279"/>
      <column hidden="0" name="geometrie_fictive" type="field" width="-1"/>
      <column hidden="0" name="id_on3v" type="field" width="-1"/>
      <column hidden="0" name="id_local" type="field" width="-1"/>
      <column hidden="0" name="desserte_college" type="field" width="-1"/>
      <column hidden="0" name="amenagement" type="field" width="-1"/>
      <column hidden="0" name="amenagement_type" type="field" width="-1"/>
      <column hidden="0" name="longueur" type="field" width="-1"/>
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
    <attributeEditorField showLabel="1" name="id_segment" index="0"/>
    <attributeEditorField showLabel="1" name="longueur" index="18"/>
    <attributeEditorContainer showLabel="1" name="Informations" visibilityExpression="" groupBox="0" visibilityExpressionEnabled="0" columnCount="1">
      <attributeEditorContainer showLabel="1" name="Identifiants" visibilityExpression="" groupBox="1" visibilityExpressionEnabled="0" columnCount="1">
        <attributeEditorField showLabel="1" name="id_local" index="14"/>
        <attributeEditorField showLabel="1" name="id_on3v" index="13"/>
      </attributeEditorContainer>
      <attributeEditorField showLabel="1" name="avancement" index="5"/>
      <attributeEditorContainer showLabel="1" name="Typologie" visibilityExpression="" groupBox="1" visibilityExpressionEnabled="0" columnCount="1">
        <attributeEditorField showLabel="1" name="amenagement" index="16"/>
        <attributeEditorField showLabel="1" name="amenagement_type" index="17"/>
        <attributeEditorField showLabel="1" name="statut" index="7"/>
      </attributeEditorContainer>
      <attributeEditorField showLabel="1" name="revetement" index="6"/>
      <attributeEditorField showLabel="1" name="gestionnaire" index="8"/>
      <attributeEditorField showLabel="1" name="proprietaire" index="9"/>
      <attributeEditorField showLabel="1" name="sens_unique" index="11"/>
      <attributeEditorField showLabel="1" name="annee_ouverture" index="1"/>
      <attributeEditorField showLabel="1" name="desserte_college" index="15"/>
      <attributeEditorContainer showLabel="1" name="Metadonnées" visibilityExpression="" groupBox="1" visibilityExpressionEnabled="0" columnCount="1">
        <attributeEditorField showLabel="1" name="geometrie_fictive" index="12"/>
        <attributeEditorField showLabel="1" name="precision" index="10"/>
        <attributeEditorField showLabel="1" name="src_geom" index="3"/>
        <attributeEditorField showLabel="1" name="src_annee" index="4"/>
        <attributeEditorField showLabel="1" name="date_saisie" index="2"/>
      </attributeEditorContainer>
    </attributeEditorContainer>
    <attributeEditorContainer showLabel="1" name="Portions" visibilityExpression="" groupBox="0" visibilityExpressionEnabled="0" columnCount="1">
      <attributeEditorRelation showLabel="1" showUnlinkButton="1" name="element_34_id_segment_segment__id_segment" showLinkButton="1" relation="element_34_id_segment_segment__id_segment"/>
    </attributeEditorContainer>
  </attributeEditorForm>
  <editable>
    <field name="amenagement" editable="1"/>
    <field name="amenagement_type" editable="1"/>
    <field name="annee_ouve" editable="1"/>
    <field name="annee_ouverture" editable="1"/>
    <field name="avancement" editable="1"/>
    <field name="date_saisi" editable="1"/>
    <field name="date_saisie" editable="0"/>
    <field name="desserte_college" editable="1"/>
    <field name="geometrie_" editable="1"/>
    <field name="geometrie_fictive" editable="1"/>
    <field name="gestionnai" editable="1"/>
    <field name="gestionnaire" editable="1"/>
    <field name="id_local" editable="1"/>
    <field name="id_on3v" editable="1"/>
    <field name="id_segment" editable="0"/>
    <field name="longueur" editable="0"/>
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
    <field name="amenagement" labelOnTop="0"/>
    <field name="amenagement_type" labelOnTop="0"/>
    <field name="annee_ouve" labelOnTop="0"/>
    <field name="annee_ouverture" labelOnTop="0"/>
    <field name="avancement" labelOnTop="0"/>
    <field name="date_saisi" labelOnTop="0"/>
    <field name="date_saisie" labelOnTop="0"/>
    <field name="desserte_college" labelOnTop="0"/>
    <field name="geometrie_" labelOnTop="0"/>
    <field name="geometrie_fictive" labelOnTop="0"/>
    <field name="gestionnai" labelOnTop="0"/>
    <field name="gestionnaire" labelOnTop="0"/>
    <field name="id_local" labelOnTop="0"/>
    <field name="id_on3v" labelOnTop="0"/>
    <field name="id_segment" labelOnTop="0"/>
    <field name="longueur" labelOnTop="0"/>
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
    <widget name="element_07b5236e_5071_4ba4_9c61_f67aace22eda_id_segment_segment_63f2b39d_9d93_40fe_9bb5_7927be7edb74_id_segment">
      <config type="Map">
        <Option name="nm-rel" value="" type="QString"/>
      </config>
    </widget>
    <widget name="element_187bfb9d_67f5_4058_8133_4c3aab650a47_id_segment_segment_556a523a_2f8f_46a9_99cf_500d166a158a_id_segment">
      <config type="Map">
        <Option name="nm-rel" value="" type="QString"/>
      </config>
    </widget>
    <widget name="element_34_id_segment_segment__id_segment">
      <config type="Map">
        <Option name="nm-rel" value="element_87_id_portion_v_portion__id_portion" type="QString"/>
      </config>
    </widget>
    <widget name="element_597f0835_a433_4dee_8eaf_08a651ae111e_id_segment_segment_7dbbff18_4ee9_4dae_b343_e7fd6fe65998_id_segment">
      <config type="Map">
        <Option name="nm-rel" value="" type="QString"/>
      </config>
    </widget>
    <widget name="element_6d5dfa64_f66b_43b8_a321_0fdbb1ff6fc5_id_segment_segment_c5fd215a_acfa_4e60_a032_c5a1281807f4_id_segment">
      <config type="Map">
        <Option name="nm-rel" value="" type="QString"/>
      </config>
    </widget>
    <widget name="element_87795107_6a41_4d89_b7a9_27020145c4c2_id_segment_segment_7bda5417_48a9_4c43_b874_6c6b490dfa9e_id_segment">
      <config type="Map">
        <Option name="nm-rel" value="" type="QString"/>
      </config>
    </widget>
    <widget name="element_9448090b_c4ec_49b1_81c1_c622817d5aac_id_segment_segment_ac1a9aa3_495d_4435_b60a_80059c8c1b81_id_segment">
      <config type="Map">
        <Option name="nm-rel" value="" type="QString"/>
      </config>
    </widget>
    <widget name="element_a0235a8d_5bb7_4b28_8f57_865448ff4da2_id_segment_segment_8165ad8d_3b5a_4f29_be08_b4c38e260593_id_segment">
      <config type="Map">
        <Option name="nm-rel" value="" type="QString"/>
      </config>
    </widget>
  </widgets>
  <previewExpression>"id_segment"</previewExpression>
  <mapTip></mapTip>
  <layerGeometryType>1</layerGeometryType>
</qgis>
