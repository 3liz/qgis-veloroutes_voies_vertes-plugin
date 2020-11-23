<!DOCTYPE qgis PUBLIC 'http://mrcc.com/qgis.dtd' 'SYSTEM'>
<qgis simplifyMaxScale="1" maxScale="0" version="3.10.10-A Coruña" hasScaleBasedVisibilityFlag="0" readOnly="0" minScale="1e+8" simplifyDrawingTol="1" labelsEnabled="0" simplifyLocal="1" simplifyDrawingHints="1" styleCategories="AllStyleCategories" simplifyAlgorithm="0">
  <flags>
    <Identifiable>1</Identifiable>
    <Removable>1</Removable>
    <Searchable>1</Searchable>
  </flags>
  <renderer-v2 type="RuleRenderer" symbollevels="0" enableorderby="0" forceraster="0">
    <rules key="{9004152c-ebea-4b9c-bad3-cbaa7e4ec10e}">
      <rule filter="ELSE" symbol="0" key="{04260390-4615-496a-97bf-4fb78ed1465c}"/>
      <rule filter=" &quot;statut&quot; = 'ASP'  or  &quot;statut&quot; = 'PCY'  or  &quot;statut&quot; =  'VV' or &quot;statut&quot; = 'BCY' and  &quot;revetement&quot; = 'LIS' " symbol="1" key="{c65d6d33-a6ec-4881-b5ba-d3706a340bea}" label="Voie dédiée"/>
      <rule filter=" &quot;statut&quot; = 'ASP'  or  &quot;statut&quot; = 'PCY'  or  &quot;statut&quot; =  'VV' and  (&quot;revetement&quot; = 'RUG'  or &quot;revetement&quot; = 'MEU')" symbol="2" key="{1614c6c8-8b2f-4915-93a4-528dbf54f227}" label="Voie dédiée"/>
      <rule filter=" &quot;statut&quot; = 'RTE' or &quot;statut&quot; = 'ICA' and  &quot;revetement&quot; = 'LIS' " symbol="3" key="{f760d85d-6a63-4667-af8d-d5d51ce14dcb}" label="voie partagée"/>
      <rule filter=" &quot;statut&quot; = 'RTE' or &quot;statut&quot; = 'ICA' and  (&quot;revetement&quot; = 'RUG'  or &quot;revetement&quot; = 'MEU')" symbol="4" key="{e91167ef-d66e-4aae-b29d-c5140de7abb0}" label="voie partagée"/>
    </rules>
    <symbols>
      <symbol clip_to_extent="1" type="line" alpha="1" name="0" force_rhr="0">
        <layer pass="0" locked="0" class="SimpleLine" enabled="1">
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
              <Option type="QString" value="" name="name"/>
              <Option name="properties"/>
              <Option type="QString" value="collection" name="type"/>
            </Option>
          </data_defined_properties>
        </layer>
      </symbol>
      <symbol clip_to_extent="1" type="line" alpha="1" name="1" force_rhr="0">
        <layer pass="0" locked="0" class="SimpleLine" enabled="1">
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
              <Option type="QString" value="" name="name"/>
              <Option name="properties"/>
              <Option type="QString" value="collection" name="type"/>
            </Option>
          </data_defined_properties>
        </layer>
      </symbol>
      <symbol clip_to_extent="1" type="line" alpha="1" name="2" force_rhr="0">
        <layer pass="0" locked="0" class="SimpleLine" enabled="1">
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
              <Option type="QString" value="" name="name"/>
              <Option name="properties"/>
              <Option type="QString" value="collection" name="type"/>
            </Option>
          </data_defined_properties>
        </layer>
      </symbol>
      <symbol clip_to_extent="1" type="line" alpha="1" name="3" force_rhr="0">
        <layer pass="0" locked="0" class="SimpleLine" enabled="1">
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
              <Option type="QString" value="" name="name"/>
              <Option name="properties"/>
              <Option type="QString" value="collection" name="type"/>
            </Option>
          </data_defined_properties>
        </layer>
      </symbol>
      <symbol clip_to_extent="1" type="line" alpha="1" name="4" force_rhr="0">
        <layer pass="0" locked="0" class="SimpleLine" enabled="1">
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
              <Option type="QString" value="" name="name"/>
              <Option name="properties"/>
              <Option type="QString" value="collection" name="type"/>
            </Option>
          </data_defined_properties>
        </layer>
      </symbol>
    </symbols>
  </renderer-v2>
  <customproperties>
    <property key="dualview/previewExpressions">
      <value>"id_segment"</value>
    </property>
    <property value="0" key="embeddedWidgets/count"/>
    <property key="variableNames"/>
    <property key="variableValues"/>
  </customproperties>
  <blendMode>0</blendMode>
  <featureBlendMode>0</featureBlendMode>
  <layerOpacity>1</layerOpacity>
  <SingleCategoryDiagramRenderer diagramType="Histogram" attributeLegend="1">
    <DiagramCategory backgroundColor="#ffffff" backgroundAlpha="255" lineSizeScale="3x:0,0,0,0,0,0" scaleDependency="Area" maxScaleDenominator="1e+8" labelPlacementMethod="XHeight" minimumSize="0" lineSizeType="MM" sizeScale="3x:0,0,0,0,0,0" sizeType="MM" rotationOffset="270" scaleBasedVisibility="0" width="15" penWidth="0" enabled="0" penAlpha="255" diagramOrientation="Up" barWidth="5" height="15" minScaleDenominator="0" penColor="#000000" opacity="1">
      <fontProperties description=".AppleSystemUIFont,13,-1,5,50,0,0,0,0,0" style=""/>
      <attribute color="#000000" label="" field=""/>
    </DiagramCategory>
  </SingleCategoryDiagramRenderer>
  <DiagramLayerSettings priority="0" showAll="1" obstacle="0" dist="0" placement="2" linePlacementFlags="18" zIndex="0">
    <properties>
      <Option type="Map">
        <Option type="QString" value="" name="name"/>
        <Option name="properties"/>
        <Option type="QString" value="collection" name="type"/>
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
            <Option type="bool" value="false" name="IsMultiline"/>
            <Option type="bool" value="false" name="UseHtml"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="annee_ouverture">
      <editWidget type="DateTime">
        <config>
          <Option type="Map">
            <Option type="bool" value="true" name="allow_null"/>
            <Option type="bool" value="false" name="calendar_popup"/>
            <Option type="QString" value="yyyy" name="display_format"/>
            <Option type="QString" value="yyyy" name="field_format"/>
            <Option type="bool" value="false" name="field_iso_format"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="date_saisie">
      <editWidget type="DateTime">
        <config>
          <Option type="Map">
            <Option type="bool" value="true" name="allow_null"/>
            <Option type="bool" value="true" name="calendar_popup"/>
            <Option type="QString" value="yyyy-MM-dd" name="display_format"/>
            <Option type="QString" value="yyyy-MM-dd" name="field_format"/>
            <Option type="bool" value="false" name="field_iso_format"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="src_geom">
      <editWidget type="UniqueValues">
        <config>
          <Option type="Map">
            <Option type="bool" value="true" name="Editable"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="src_annee">
      <editWidget type="DateTime">
        <config>
          <Option type="Map">
            <Option type="bool" value="true" name="allow_null"/>
            <Option type="bool" value="false" name="calendar_popup"/>
            <Option type="QString" value="yyyy" name="display_format"/>
            <Option type="QString" value="yyyy" name="field_format"/>
            <Option type="bool" value="false" name="field_iso_format"/>
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
                <Option type="QString" value="01" name="Projet"/>
              </Option>
              <Option type="Map">
                <Option type="QString" value="02" name="Tracé arrêté"/>
              </Option>
              <Option type="Map">
                <Option type="QString" value="03" name="Travaux en cours"/>
              </Option>
              <Option type="Map">
                <Option type="QString" value="04" name="Ouvert"/>
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
                <Option type="QString" value="LIS" name="Lisse"/>
              </Option>
              <Option type="Map">
                <Option type="QString" value="RUG" name="Rugueux"/>
              </Option>
              <Option type="Map">
                <Option type="QString" value="MEU" name="Meuble"/>
              </Option>
              <Option type="Map">
                <Option type="QString" value="{2839923C-8B7D-419E-B84B-CA2FE9B80EC7}" name="Inconnu"/>
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
            <Option type="bool" value="false" name="AllowMulti"/>
            <Option type="bool" value="false" name="AllowNull"/>
            <Option type="QString" value=" CASE WHEN current_value('amenagement_type') = 'BSP' THEN &quot;code&quot; = 'ASP'&#xa;      WHEN current_value('amenagement_type') = 'BCR' THEN &quot;code&quot; = 'RTE'&#xa;&#x9;  ELSE current_value('amenagement_type') = &quot;code&quot; END" name="FilterExpression"/>
            <Option type="QString" value="code" name="Key"/>
            <Option type="QString" value="statut_segment_val_2af9f0c3_78d9_464c_89fc_f0db344c1a57" name="Layer"/>
            <Option type="QString" value="statut_segment_val" name="LayerName"/>
            <Option type="QString" value="postgres" name="LayerProviderName"/>
            <Option type="QString" value="dbname='sig' host=localhost port=5432 user='dhont' sslmode=disable key='id' estimatedmetadata=true checkPrimaryKeyUnicity='1' table=&quot;veloroutes&quot;.&quot;statut_segment_val&quot; sql=" name="LayerSource"/>
            <Option type="int" value="1" name="NofColumns"/>
            <Option type="bool" value="false" name="OrderByValue"/>
            <Option type="bool" value="false" name="UseCompleter"/>
            <Option type="QString" value="libelle" name="Value"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="gestionnaire">
      <editWidget type="UniqueValues">
        <config>
          <Option type="Map">
            <Option type="bool" value="true" name="Editable"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="proprietaire">
      <editWidget type="UniqueValues">
        <config>
          <Option type="Map">
            <Option type="bool" value="true" name="Editable"/>
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
                <Option type="QString" value="DM" name="Décimétrique"/>
              </Option>
              <Option type="Map">
                <Option type="QString" value="M" name="Métrique"/>
              </Option>
              <Option type="Map">
                <Option type="QString" value="DC" name="Décamétrique"/>
              </Option>
              <Option type="Map">
                <Option type="QString" value="HM" name="Hectométrique"/>
              </Option>
              <Option type="Map">
                <Option type="QString" value="KM" name="Kilométrique"/>
              </Option>
              <Option type="Map">
                <Option type="QString" value="NE" name="Non estimée"/>
              </Option>
              <Option type="Map">
                <Option type="QString" value="{2839923C-8B7D-419E-B84B-CA2FE9B80EC7}" name="Non renseignée"/>
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
                <Option type="QString" value="F" name="Bidirectionnelle"/>
              </Option>
              <Option type="Map">
                <Option type="QString" value="T" name="Monodirectionnelle"/>
              </Option>
              <Option type="Map">
                <Option type="QString" value="N" name="Ne sais pas"/>
              </Option>
              <Option type="Map">
                <Option type="QString" value="{2839923C-8B7D-419E-B84B-CA2FE9B80EC7}" name="Non renseigné"/>
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
                <Option type="QString" value="F" name="Non"/>
              </Option>
              <Option type="Map">
                <Option type="QString" value="T" name="Oui"/>
              </Option>
              <Option type="Map">
                <Option type="QString" value="N" name="Ne sais pas"/>
              </Option>
              <Option type="Map">
                <Option type="QString" value="{2839923C-8B7D-419E-B84B-CA2FE9B80EC7}" name="Non précisée"/>
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
            <Option type="bool" value="false" name="IsMultiline"/>
            <Option type="bool" value="false" name="UseHtml"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="id_local">
      <editWidget type="TextEdit">
        <config>
          <Option type="Map">
            <Option type="bool" value="false" name="IsMultiline"/>
            <Option type="bool" value="false" name="UseHtml"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="desserte_college">
      <editWidget type="ValueMap">
        <config>
          <Option type="Map">
            <Option type="List" name="map">
              <Option type="Map">
                <Option type="QString" value="F" name="Non"/>
              </Option>
              <Option type="Map">
                <Option type="QString" value="T" name="Oui"/>
              </Option>
              <Option type="Map">
                <Option type="QString" value="N" name="Ne sais pas"/>
              </Option>
              <Option type="Map">
                <Option type="QString" value="{2839923C-8B7D-419E-B84B-CA2FE9B80EC7}" name="Non renseignée"/>
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
            <Option type="bool" value="false" name="AllowMulti"/>
            <Option type="bool" value="true" name="AllowNull"/>
            <Option type="QString" value="" name="FilterExpression"/>
            <Option type="QString" value="code" name="Key"/>
            <Option type="QString" value="amenagement_segment_val_e8859c44_657a_4c85_96d1_4fa4906e3a10" name="Layer"/>
            <Option type="QString" value="amenagement_segment_val" name="LayerName"/>
            <Option type="QString" value="postgres" name="LayerProviderName"/>
            <Option type="QString" value="dbname='sig' host=localhost port=5432 user='dhont' sslmode=disable key='id' estimatedmetadata=true checkPrimaryKeyUnicity='1' table=&quot;veloroutes&quot;.&quot;amenagement_segment_val&quot; sql=" name="LayerSource"/>
            <Option type="int" value="1" name="NofColumns"/>
            <Option type="bool" value="false" name="OrderByValue"/>
            <Option type="bool" value="false" name="UseCompleter"/>
            <Option type="QString" value="libelle" name="Value"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="amenagement_type">
      <editWidget type="ValueRelation">
        <config>
          <Option type="Map">
            <Option type="bool" value="false" name="AllowMulti"/>
            <Option type="bool" value="true" name="AllowNull"/>
            <Option type="QString" value=" current_value( 'amenagement' ) = &quot;amenagement&quot;" name="FilterExpression"/>
            <Option type="QString" value="code" name="Key"/>
            <Option type="QString" value="amenagement_type_segment_val_fcb35a51_280b_45eb_b8e2_19cc3cac9f4e" name="Layer"/>
            <Option type="QString" value="amenagement_type_segment_val" name="LayerName"/>
            <Option type="QString" value="postgres" name="LayerProviderName"/>
            <Option type="QString" value="dbname='sig' host=localhost port=5432 user='dhont' sslmode=disable key='id' estimatedmetadata=true checkPrimaryKeyUnicity='1' table=&quot;veloroutes&quot;.&quot;amenagement_type_segment_val&quot; sql=" name="LayerSource"/>
            <Option type="int" value="1" name="NofColumns"/>
            <Option type="bool" value="false" name="OrderByValue"/>
            <Option type="bool" value="false" name="UseCompleter"/>
            <Option type="QString" value="libelle" name="Value"/>
          </Option>
        </config>
      </editWidget>
    </field>
  </fieldConfiguration>
  <aliases>
    <alias index="0" name="Identifiant" field="id_segment"/>
    <alias index="1" name="Année d'ouverture" field="annee_ouverture"/>
    <alias index="2" name="Date de saisie" field="date_saisie"/>
    <alias index="3" name="Source de digitalisation" field="src_geom"/>
    <alias index="4" name="Année de la source de digit" field="src_annee"/>
    <alias index="5" name="Avancement" field="avancement"/>
    <alias index="6" name="Revêtement" field="revetement"/>
    <alias index="7" name="Statut" field="statut"/>
    <alias index="8" name="Maître d'oeuvre" field="gestionnaire"/>
    <alias index="9" name="Propriétaire" field="proprietaire"/>
    <alias index="10" name="Précision" field="precision"/>
    <alias index="11" name="Sens unique" field="sens_unique"/>
    <alias index="12" name="Géométrie fictive" field="geometrie_fictive"/>
    <alias index="13" name="Id. ON3V" field="id_on3v"/>
    <alias index="14" name="Id. Local" field="id_local"/>
    <alias index="15" name="Désserte de collège" field="desserte_college"/>
    <alias index="16" name="Aménagement" field="amenagement"/>
    <alias index="17" name="Type d'aménagement" field="amenagement_type"/>
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
  </defaults>
  <constraints>
    <constraint unique_strength="2" notnull_strength="2" exp_strength="0" field="id_segment" constraints="3"/>
    <constraint unique_strength="0" notnull_strength="0" exp_strength="0" field="annee_ouverture" constraints="0"/>
    <constraint unique_strength="0" notnull_strength="1" exp_strength="0" field="date_saisie" constraints="1"/>
    <constraint unique_strength="0" notnull_strength="0" exp_strength="0" field="src_geom" constraints="0"/>
    <constraint unique_strength="0" notnull_strength="0" exp_strength="0" field="src_annee" constraints="0"/>
    <constraint unique_strength="0" notnull_strength="1" exp_strength="0" field="avancement" constraints="1"/>
    <constraint unique_strength="0" notnull_strength="0" exp_strength="0" field="revetement" constraints="0"/>
    <constraint unique_strength="0" notnull_strength="1" exp_strength="0" field="statut" constraints="1"/>
    <constraint unique_strength="0" notnull_strength="0" exp_strength="0" field="gestionnaire" constraints="0"/>
    <constraint unique_strength="0" notnull_strength="0" exp_strength="0" field="proprietaire" constraints="0"/>
    <constraint unique_strength="0" notnull_strength="0" exp_strength="0" field="precision" constraints="0"/>
    <constraint unique_strength="0" notnull_strength="0" exp_strength="0" field="sens_unique" constraints="0"/>
    <constraint unique_strength="0" notnull_strength="0" exp_strength="0" field="geometrie_fictive" constraints="0"/>
    <constraint unique_strength="0" notnull_strength="0" exp_strength="0" field="id_on3v" constraints="0"/>
    <constraint unique_strength="0" notnull_strength="0" exp_strength="0" field="id_local" constraints="0"/>
    <constraint unique_strength="0" notnull_strength="0" exp_strength="0" field="desserte_college" constraints="0"/>
    <constraint unique_strength="0" notnull_strength="1" exp_strength="0" field="amenagement" constraints="1"/>
    <constraint unique_strength="0" notnull_strength="1" exp_strength="0" field="amenagement_type" constraints="1"/>
  </constraints>
  <constraintExpressions>
    <constraint exp="" desc="" field="id_segment"/>
    <constraint exp="" desc="" field="annee_ouverture"/>
    <constraint exp="" desc="" field="date_saisie"/>
    <constraint exp="" desc="" field="src_geom"/>
    <constraint exp="" desc="" field="src_annee"/>
    <constraint exp="" desc="" field="avancement"/>
    <constraint exp="" desc="" field="revetement"/>
    <constraint exp="" desc="" field="statut"/>
    <constraint exp="" desc="" field="gestionnaire"/>
    <constraint exp="" desc="" field="proprietaire"/>
    <constraint exp="" desc="" field="precision"/>
    <constraint exp="" desc="" field="sens_unique"/>
    <constraint exp="" desc="" field="geometrie_fictive"/>
    <constraint exp="" desc="" field="id_on3v"/>
    <constraint exp="" desc="" field="id_local"/>
    <constraint exp="" desc="" field="desserte_college"/>
    <constraint exp="" desc="" field="amenagement"/>
    <constraint exp="" desc="" field="amenagement_type"/>
  </constraintExpressions>
  <expressionfields/>
  <attributeactions>
    <defaultAction value="{00000000-0000-0000-0000-000000000000}" key="Canvas"/>
    <actionsetting type="1" shortTitle="split" isEnabledOnlyWhenEditable="1" notificationMessage="" icon="" name="Couper un segment en un point" capture="0" action="from qgis.utils import plugins&#xa;plugins['veloroutes_voies_vertes'].run_action('split_segment', [%id_segment%],[% @click_x %],[% @click_y %])" id="{f027deee-38a4-4cd3-9232-53373eeb36ae}">
      <actionScope id="Layer"/>
      <actionScope id="Feature"/>
      <actionScope id="Field"/>
      <actionScope id="Canvas"/>
    </actionsetting>
    <actionsetting type="1" shortTitle="Créer une portion" isEnabledOnlyWhenEditable="0" notificationMessage="" icon="" name="Créer une portion à partir de segments sélectionnés" capture="0" action="from qgis.utils import plugins&#xa;plugins['veloroutes_voies_vertes'].run_action('create_relation', [% '\''||@layer_name||'\'' %] , 'portion', 'element', 'id_portion', 'id_segment', 'v_portion')" id="{d6fe0f04-e5f5-4fe7-ad34-d1543c56a450}">
      <actionScope id="Layer"/>
      <actionScope id="Feature"/>
      <actionScope id="Field"/>
      <actionScope id="Canvas"/>
    </actionsetting>
  </attributeactions>
  <attributetableconfig sortExpression="&quot;date_saisie&quot;" actionWidgetStyle="dropDown" sortOrder="0">
    <columns>
      <column type="field" name="id_segment" width="-1" hidden="0"/>
      <column type="field" name="src_geom" width="-1" hidden="0"/>
      <column type="field" name="src_annee" width="203" hidden="0"/>
      <column type="field" name="avancement" width="148" hidden="0"/>
      <column type="field" name="revetement" width="-1" hidden="0"/>
      <column type="field" name="statut" width="-1" hidden="0"/>
      <column type="field" name="precision" width="194" hidden="0"/>
      <column type="actions" width="-1" hidden="1"/>
      <column type="field" name="annee_ouverture" width="182" hidden="0"/>
      <column type="field" name="date_saisie" width="-1" hidden="0"/>
      <column type="field" name="gestionnaire" width="-1" hidden="0"/>
      <column type="field" name="proprietaire" width="-1" hidden="0"/>
      <column type="field" name="sens_unique" width="279" hidden="0"/>
      <column type="field" name="geometrie_fictive" width="-1" hidden="0"/>
      <column type="field" name="id_on3v" width="-1" hidden="0"/>
      <column type="field" name="id_local" width="-1" hidden="0"/>
      <column type="field" name="desserte_college" width="-1" hidden="0"/>
      <column type="field" name="amenagement" width="-1" hidden="0"/>
      <column type="field" name="amenagement_type" width="-1" hidden="0"/>
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
    <attributeEditorField index="0" showLabel="1" name="id_segment"/>
    <attributeEditorContainer groupBox="0" columnCount="1" showLabel="1" name="Informations" visibilityExpression="" visibilityExpressionEnabled="0">
      <attributeEditorContainer groupBox="1" columnCount="1" showLabel="1" name="Identifiants" visibilityExpression="" visibilityExpressionEnabled="0">
        <attributeEditorField index="14" showLabel="1" name="id_local"/>
        <attributeEditorField index="13" showLabel="1" name="id_on3v"/>
      </attributeEditorContainer>
      <attributeEditorField index="5" showLabel="1" name="avancement"/>
      <attributeEditorContainer groupBox="1" columnCount="1" showLabel="1" name="Typologie" visibilityExpression="" visibilityExpressionEnabled="0">
        <attributeEditorField index="16" showLabel="1" name="amenagement"/>
        <attributeEditorField index="17" showLabel="1" name="amenagement_type"/>
        <attributeEditorField index="7" showLabel="1" name="statut"/>
      </attributeEditorContainer>
      <attributeEditorField index="6" showLabel="1" name="revetement"/>
      <attributeEditorField index="8" showLabel="1" name="gestionnaire"/>
      <attributeEditorField index="9" showLabel="1" name="proprietaire"/>
      <attributeEditorField index="11" showLabel="1" name="sens_unique"/>
      <attributeEditorField index="1" showLabel="1" name="annee_ouverture"/>
      <attributeEditorField index="15" showLabel="1" name="desserte_college"/>
      <attributeEditorContainer groupBox="1" columnCount="1" showLabel="1" name="Metadonnées" visibilityExpression="" visibilityExpressionEnabled="0">
        <attributeEditorField index="12" showLabel="1" name="geometrie_fictive"/>
        <attributeEditorField index="10" showLabel="1" name="precision"/>
        <attributeEditorField index="3" showLabel="1" name="src_geom"/>
        <attributeEditorField index="4" showLabel="1" name="src_annee"/>
        <attributeEditorField index="2" showLabel="1" name="date_saisie"/>
      </attributeEditorContainer>
    </attributeEditorContainer>
    <attributeEditorContainer groupBox="0" columnCount="1" showLabel="1" name="Portions" visibilityExpression="" visibilityExpressionEnabled="0">
      <attributeEditorRelation showLinkButton="1" showLabel="1" name="element_34_id_segment_segment__id_segment" showUnlinkButton="1" relation="element_34_id_segment_segment__id_segment"/>
    </attributeEditorContainer>
  </attributeEditorForm>
  <editable>
    <field editable="1" name="amenagement"/>
    <field editable="1" name="amenagement_type"/>
    <field editable="1" name="annee_ouve"/>
    <field editable="1" name="annee_ouverture"/>
    <field editable="1" name="avancement"/>
    <field editable="1" name="date_saisi"/>
    <field editable="0" name="date_saisie"/>
    <field editable="1" name="desserte_college"/>
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
    <field labelOnTop="0" name="amenagement"/>
    <field labelOnTop="0" name="amenagement_type"/>
    <field labelOnTop="0" name="annee_ouve"/>
    <field labelOnTop="0" name="annee_ouverture"/>
    <field labelOnTop="0" name="avancement"/>
    <field labelOnTop="0" name="date_saisi"/>
    <field labelOnTop="0" name="date_saisie"/>
    <field labelOnTop="0" name="desserte_college"/>
    <field labelOnTop="0" name="geometrie_"/>
    <field labelOnTop="0" name="geometrie_fictive"/>
    <field labelOnTop="0" name="gestionnai"/>
    <field labelOnTop="0" name="gestionnaire"/>
    <field labelOnTop="0" name="id_local"/>
    <field labelOnTop="0" name="id_on3v"/>
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
    <widget name="element_187bfb9d_67f5_4058_8133_4c3aab650a47_id_segment_segment_556a523a_2f8f_46a9_99cf_500d166a158a_id_segment">
      <config type="Map">
        <Option type="QString" value="" name="nm-rel"/>
      </config>
    </widget>
    <widget name="element_34_id_segment_segment__id_segment">
      <config type="Map">
        <Option type="QString" value="element_87_id_portion_v_portion__id_portion" name="nm-rel"/>
      </config>
    </widget>
    <widget name="element_597f0835_a433_4dee_8eaf_08a651ae111e_id_segment_segment_7dbbff18_4ee9_4dae_b343_e7fd6fe65998_id_segment">
      <config type="Map">
        <Option type="QString" value="" name="nm-rel"/>
      </config>
    </widget>
    <widget name="element_87795107_6a41_4d89_b7a9_27020145c4c2_id_segment_segment_7bda5417_48a9_4c43_b874_6c6b490dfa9e_id_segment">
      <config type="Map">
        <Option type="QString" value="" name="nm-rel"/>
      </config>
    </widget>
    <widget name="element_9448090b_c4ec_49b1_81c1_c622817d5aac_id_segment_segment_ac1a9aa3_495d_4435_b60a_80059c8c1b81_id_segment">
      <config type="Map">
        <Option type="QString" value="" name="nm-rel"/>
      </config>
    </widget>
    <widget name="element_a0235a8d_5bb7_4b28_8f57_865448ff4da2_id_segment_segment_8165ad8d_3b5a_4f29_be08_b4c38e260593_id_segment">
      <config type="Map">
        <Option type="QString" value="" name="nm-rel"/>
      </config>
    </widget>
  </widgets>
  <previewExpression>"id_segment"</previewExpression>
  <mapTip></mapTip>
  <layerGeometryType>1</layerGeometryType>
</qgis>
