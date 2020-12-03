<!DOCTYPE qgis PUBLIC 'http://mrcc.com/qgis.dtd' 'SYSTEM'>
<qgis hasScaleBasedVisibilityFlag="0" simplifyDrawingHints="1" styleCategories="AllStyleCategories" readOnly="0" maxScale="0" minScale="1e+8" simplifyDrawingTol="1" labelsEnabled="0" simplifyMaxScale="1" version="3.10.10-A Coruña" simplifyAlgorithm="0" simplifyLocal="1">
  <flags>
    <Identifiable>1</Identifiable>
    <Removable>1</Removable>
    <Searchable>1</Searchable>
  </flags>
  <renderer-v2 enableorderby="0" forceraster="0" type="RuleRenderer" symbollevels="0">
    <rules key="{9004152c-ebea-4b9c-bad3-cbaa7e4ec10e}">
      <rule key="{04260390-4615-496a-97bf-4fb78ed1465c}" filter="ELSE" symbol="0"/>
      <rule key="{c65d6d33-a6ec-4881-b5ba-d3706a340bea}" filter=" &quot;statut&quot; = 'ASP'  or  &quot;statut&quot; = 'PCY'  or  &quot;statut&quot; =  'VV' or &quot;statut&quot; = 'BCY' and  &quot;revetement&quot; = 'LIS' " label="Voie dédiée" symbol="1"/>
      <rule key="{1614c6c8-8b2f-4915-93a4-528dbf54f227}" filter=" &quot;statut&quot; = 'ASP'  or  &quot;statut&quot; = 'PCY'  or  &quot;statut&quot; =  'VV' and  (&quot;revetement&quot; = 'RUG'  or &quot;revetement&quot; = 'MEU')" label="Voie dédiée" symbol="2"/>
      <rule key="{f760d85d-6a63-4667-af8d-d5d51ce14dcb}" filter=" &quot;statut&quot; = 'RTE' or &quot;statut&quot; = 'ICA' and  &quot;revetement&quot; = 'LIS' " label="voie partagée" symbol="3"/>
      <rule key="{e91167ef-d66e-4aae-b29d-c5140de7abb0}" filter=" &quot;statut&quot; = 'RTE' or &quot;statut&quot; = 'ICA' and  (&quot;revetement&quot; = 'RUG'  or &quot;revetement&quot; = 'MEU')" label="voie partagée" symbol="4"/>
    </rules>
    <symbols>
      <symbol alpha="1" force_rhr="0" type="line" name="0" clip_to_extent="1">
        <layer locked="0" pass="0" class="SimpleLine" enabled="1">
          <prop v="square" k="capstyle"/>
          <prop v="5;2" k="customdash"/>
          <prop v="3x:0,0,0,0,0,0" k="customdash_map_unit_scale"/>
          <prop v="MM" k="customdash_unit"/>
          <prop v="0" k="draw_inside_polygon"/>
          <prop v="bevel" k="joinstyle"/>
          <prop v="83,27,204,255" k="line_color"/>
          <prop v="solid" k="line_style"/>
          <prop v="0.26" k="line_width"/>
          <prop v="MM" k="line_width_unit"/>
          <prop v="0" k="offset"/>
          <prop v="3x:0,0,0,0,0,0" k="offset_map_unit_scale"/>
          <prop v="MM" k="offset_unit"/>
          <prop v="0" k="ring_filter"/>
          <prop v="0" k="use_custom_dash"/>
          <prop v="3x:0,0,0,0,0,0" k="width_map_unit_scale"/>
          <data_defined_properties>
            <Option type="Map">
              <Option value="" type="QString" name="name"/>
              <Option name="properties"/>
              <Option value="collection" type="QString" name="type"/>
            </Option>
          </data_defined_properties>
        </layer>
      </symbol>
      <symbol alpha="1" force_rhr="0" type="line" name="1" clip_to_extent="1">
        <layer locked="0" pass="0" class="SimpleLine" enabled="1">
          <prop v="square" k="capstyle"/>
          <prop v="5;2" k="customdash"/>
          <prop v="3x:0,0,0,0,0,0" k="customdash_map_unit_scale"/>
          <prop v="MM" k="customdash_unit"/>
          <prop v="0" k="draw_inside_polygon"/>
          <prop v="bevel" k="joinstyle"/>
          <prop v="30,194,19,255" k="line_color"/>
          <prop v="solid" k="line_style"/>
          <prop v="0.46" k="line_width"/>
          <prop v="MM" k="line_width_unit"/>
          <prop v="0" k="offset"/>
          <prop v="3x:0,0,0,0,0,0" k="offset_map_unit_scale"/>
          <prop v="MM" k="offset_unit"/>
          <prop v="0" k="ring_filter"/>
          <prop v="0" k="use_custom_dash"/>
          <prop v="3x:0,0,0,0,0,0" k="width_map_unit_scale"/>
          <data_defined_properties>
            <Option type="Map">
              <Option value="" type="QString" name="name"/>
              <Option name="properties"/>
              <Option value="collection" type="QString" name="type"/>
            </Option>
          </data_defined_properties>
        </layer>
      </symbol>
      <symbol alpha="1" force_rhr="0" type="line" name="2" clip_to_extent="1">
        <layer locked="0" pass="0" class="SimpleLine" enabled="1">
          <prop v="square" k="capstyle"/>
          <prop v="5;2" k="customdash"/>
          <prop v="3x:0,0,0,0,0,0" k="customdash_map_unit_scale"/>
          <prop v="MM" k="customdash_unit"/>
          <prop v="0" k="draw_inside_polygon"/>
          <prop v="bevel" k="joinstyle"/>
          <prop v="30,194,19,255" k="line_color"/>
          <prop v="dash" k="line_style"/>
          <prop v="0.46" k="line_width"/>
          <prop v="MM" k="line_width_unit"/>
          <prop v="0" k="offset"/>
          <prop v="3x:0,0,0,0,0,0" k="offset_map_unit_scale"/>
          <prop v="MM" k="offset_unit"/>
          <prop v="0" k="ring_filter"/>
          <prop v="0" k="use_custom_dash"/>
          <prop v="3x:0,0,0,0,0,0" k="width_map_unit_scale"/>
          <data_defined_properties>
            <Option type="Map">
              <Option value="" type="QString" name="name"/>
              <Option name="properties"/>
              <Option value="collection" type="QString" name="type"/>
            </Option>
          </data_defined_properties>
        </layer>
      </symbol>
      <symbol alpha="1" force_rhr="0" type="line" name="3" clip_to_extent="1">
        <layer locked="0" pass="0" class="SimpleLine" enabled="1">
          <prop v="square" k="capstyle"/>
          <prop v="5;2" k="customdash"/>
          <prop v="3x:0,0,0,0,0,0" k="customdash_map_unit_scale"/>
          <prop v="MM" k="customdash_unit"/>
          <prop v="0" k="draw_inside_polygon"/>
          <prop v="bevel" k="joinstyle"/>
          <prop v="22,105,14,255" k="line_color"/>
          <prop v="solid" k="line_style"/>
          <prop v="0.46" k="line_width"/>
          <prop v="MM" k="line_width_unit"/>
          <prop v="0" k="offset"/>
          <prop v="3x:0,0,0,0,0,0" k="offset_map_unit_scale"/>
          <prop v="MM" k="offset_unit"/>
          <prop v="0" k="ring_filter"/>
          <prop v="0" k="use_custom_dash"/>
          <prop v="3x:0,0,0,0,0,0" k="width_map_unit_scale"/>
          <data_defined_properties>
            <Option type="Map">
              <Option value="" type="QString" name="name"/>
              <Option name="properties"/>
              <Option value="collection" type="QString" name="type"/>
            </Option>
          </data_defined_properties>
        </layer>
      </symbol>
      <symbol alpha="1" force_rhr="0" type="line" name="4" clip_to_extent="1">
        <layer locked="0" pass="0" class="SimpleLine" enabled="1">
          <prop v="square" k="capstyle"/>
          <prop v="5;2" k="customdash"/>
          <prop v="3x:0,0,0,0,0,0" k="customdash_map_unit_scale"/>
          <prop v="MM" k="customdash_unit"/>
          <prop v="0" k="draw_inside_polygon"/>
          <prop v="bevel" k="joinstyle"/>
          <prop v="22,105,14,255" k="line_color"/>
          <prop v="dash" k="line_style"/>
          <prop v="0.46" k="line_width"/>
          <prop v="MM" k="line_width_unit"/>
          <prop v="0" k="offset"/>
          <prop v="3x:0,0,0,0,0,0" k="offset_map_unit_scale"/>
          <prop v="MM" k="offset_unit"/>
          <prop v="0" k="ring_filter"/>
          <prop v="0" k="use_custom_dash"/>
          <prop v="3x:0,0,0,0,0,0" k="width_map_unit_scale"/>
          <data_defined_properties>
            <Option type="Map">
              <Option value="" type="QString" name="name"/>
              <Option name="properties"/>
              <Option value="collection" type="QString" name="type"/>
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
  <SingleCategoryDiagramRenderer attributeLegend="1" diagramType="Histogram">
    <DiagramCategory penWidth="0" labelPlacementMethod="XHeight" diagramOrientation="Up" barWidth="5" rotationOffset="270" backgroundColor="#ffffff" lineSizeType="MM" enabled="0" width="15" scaleDependency="Area" minimumSize="0" maxScaleDenominator="1e+8" scaleBasedVisibility="0" penAlpha="255" height="15" penColor="#000000" minScaleDenominator="0" opacity="1" sizeType="MM" sizeScale="3x:0,0,0,0,0,0" lineSizeScale="3x:0,0,0,0,0,0" backgroundAlpha="255">
      <fontProperties style="" description=".AppleSystemUIFont,13,-1,5,50,0,0,0,0,0"/>
      <attribute field="" color="#000000" label=""/>
    </DiagramCategory>
  </SingleCategoryDiagramRenderer>
  <DiagramLayerSettings obstacle="0" dist="0" zIndex="0" priority="0" linePlacementFlags="18" placement="2" showAll="1">
    <properties>
      <Option type="Map">
        <Option value="" type="QString" name="name"/>
        <Option name="properties"/>
        <Option value="collection" type="QString" name="type"/>
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
            <Option value="false" type="bool" name="IsMultiline"/>
            <Option value="false" type="bool" name="UseHtml"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="annee_ouverture">
      <editWidget type="DateTime">
        <config>
          <Option type="Map">
            <Option value="true" type="bool" name="allow_null"/>
            <Option value="false" type="bool" name="calendar_popup"/>
            <Option value="yyyy" type="QString" name="display_format"/>
            <Option value="yyyy" type="QString" name="field_format"/>
            <Option value="false" type="bool" name="field_iso_format"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="date_saisie">
      <editWidget type="DateTime">
        <config>
          <Option type="Map">
            <Option value="true" type="bool" name="allow_null"/>
            <Option value="true" type="bool" name="calendar_popup"/>
            <Option value="yyyy-MM-dd" type="QString" name="display_format"/>
            <Option value="yyyy-MM-dd" type="QString" name="field_format"/>
            <Option value="false" type="bool" name="field_iso_format"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="src_geom">
      <editWidget type="UniqueValues">
        <config>
          <Option type="Map">
            <Option value="true" type="bool" name="Editable"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="src_annee">
      <editWidget type="DateTime">
        <config>
          <Option type="Map">
            <Option value="true" type="bool" name="allow_null"/>
            <Option value="false" type="bool" name="calendar_popup"/>
            <Option value="yyyy" type="QString" name="display_format"/>
            <Option value="yyyy" type="QString" name="field_format"/>
            <Option value="false" type="bool" name="field_iso_format"/>
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
                <Option value="01" type="QString" name="Projet"/>
              </Option>
              <Option type="Map">
                <Option value="02" type="QString" name="Tracé arrêté"/>
              </Option>
              <Option type="Map">
                <Option value="03" type="QString" name="Travaux en cours"/>
              </Option>
              <Option type="Map">
                <Option value="04" type="QString" name="Ouvert"/>
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
                <Option value="LIS" type="QString" name="Lisse"/>
              </Option>
              <Option type="Map">
                <Option value="RUG" type="QString" name="Rugueux"/>
              </Option>
              <Option type="Map">
                <Option value="MEU" type="QString" name="Meuble"/>
              </Option>
              <Option type="Map">
                <Option value="{2839923C-8B7D-419E-B84B-CA2FE9B80EC7}" type="QString" name="Inconnu"/>
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
            <Option value="false" type="bool" name="AllowMulti"/>
            <Option value="false" type="bool" name="AllowNull"/>
            <Option value=" CASE WHEN current_value('amenagement_type') = 'BSP' THEN &quot;code&quot; = 'ASP'&#xa;      WHEN current_value('amenagement_type') = 'BCR' THEN &quot;code&quot; = 'RTE'&#xa;&#x9;  ELSE current_value('amenagement_type') = &quot;code&quot; END" type="QString" name="FilterExpression"/>
            <Option value="code" type="QString" name="Key"/>
            <Option value="statut_segment_val_2af9f0c3_78d9_464c_89fc_f0db344c1a57" type="QString" name="Layer"/>
            <Option value="statut_segment_val" type="QString" name="LayerName"/>
            <Option value="postgres" type="QString" name="LayerProviderName"/>
            <Option value="dbname='sig' host=localhost port=5432 user='dhont' sslmode=disable key='id' estimatedmetadata=true checkPrimaryKeyUnicity='1' table=&quot;veloroutes&quot;.&quot;statut_segment_val&quot; sql=" type="QString" name="LayerSource"/>
            <Option value="1" type="int" name="NofColumns"/>
            <Option value="false" type="bool" name="OrderByValue"/>
            <Option value="false" type="bool" name="UseCompleter"/>
            <Option value="libelle" type="QString" name="Value"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="gestionnaire">
      <editWidget type="UniqueValues">
        <config>
          <Option type="Map">
            <Option value="true" type="bool" name="Editable"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="proprietaire">
      <editWidget type="UniqueValues">
        <config>
          <Option type="Map">
            <Option value="true" type="bool" name="Editable"/>
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
                <Option value="DM" type="QString" name="Décimétrique"/>
              </Option>
              <Option type="Map">
                <Option value="M" type="QString" name="Métrique"/>
              </Option>
              <Option type="Map">
                <Option value="DC" type="QString" name="Décamétrique"/>
              </Option>
              <Option type="Map">
                <Option value="HM" type="QString" name="Hectométrique"/>
              </Option>
              <Option type="Map">
                <Option value="KM" type="QString" name="Kilométrique"/>
              </Option>
              <Option type="Map">
                <Option value="NE" type="QString" name="Non estimée"/>
              </Option>
              <Option type="Map">
                <Option value="{2839923C-8B7D-419E-B84B-CA2FE9B80EC7}" type="QString" name="Non renseignée"/>
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
                <Option value="F" type="QString" name="Bidirectionnelle"/>
              </Option>
              <Option type="Map">
                <Option value="T" type="QString" name="Monodirectionnelle"/>
              </Option>
              <Option type="Map">
                <Option value="N" type="QString" name="Ne sais pas"/>
              </Option>
              <Option type="Map">
                <Option value="{2839923C-8B7D-419E-B84B-CA2FE9B80EC7}" type="QString" name="Non renseigné"/>
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
                <Option value="F" type="QString" name="Non"/>
              </Option>
              <Option type="Map">
                <Option value="T" type="QString" name="Oui"/>
              </Option>
              <Option type="Map">
                <Option value="N" type="QString" name="Ne sais pas"/>
              </Option>
              <Option type="Map">
                <Option value="{2839923C-8B7D-419E-B84B-CA2FE9B80EC7}" type="QString" name="Non précisée"/>
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
            <Option value="false" type="bool" name="IsMultiline"/>
            <Option value="false" type="bool" name="UseHtml"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="id_local">
      <editWidget type="TextEdit">
        <config>
          <Option type="Map">
            <Option value="false" type="bool" name="IsMultiline"/>
            <Option value="false" type="bool" name="UseHtml"/>
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
                <Option value="F" type="QString" name="Non"/>
              </Option>
              <Option type="Map">
                <Option value="T" type="QString" name="Oui"/>
              </Option>
              <Option type="Map">
                <Option value="N" type="QString" name="Ne sais pas"/>
              </Option>
              <Option type="Map">
                <Option value="{2839923C-8B7D-419E-B84B-CA2FE9B80EC7}" type="QString" name="Non renseignée"/>
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
            <Option value="false" type="bool" name="AllowMulti"/>
            <Option value="true" type="bool" name="AllowNull"/>
            <Option value="" type="QString" name="FilterExpression"/>
            <Option value="code" type="QString" name="Key"/>
            <Option value="amenagement_segment_val_e8859c44_657a_4c85_96d1_4fa4906e3a10" type="QString" name="Layer"/>
            <Option value="amenagement_segment_val" type="QString" name="LayerName"/>
            <Option value="postgres" type="QString" name="LayerProviderName"/>
            <Option value="dbname='sig' host=localhost port=5432 user='dhont' sslmode=disable key='id' estimatedmetadata=true checkPrimaryKeyUnicity='1' table=&quot;veloroutes&quot;.&quot;amenagement_segment_val&quot; sql=" type="QString" name="LayerSource"/>
            <Option value="1" type="int" name="NofColumns"/>
            <Option value="false" type="bool" name="OrderByValue"/>
            <Option value="false" type="bool" name="UseCompleter"/>
            <Option value="libelle" type="QString" name="Value"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="amenagement_type">
      <editWidget type="ValueRelation">
        <config>
          <Option type="Map">
            <Option value="false" type="bool" name="AllowMulti"/>
            <Option value="true" type="bool" name="AllowNull"/>
            <Option value=" current_value( 'amenagement' ) = &quot;amenagement&quot;" type="QString" name="FilterExpression"/>
            <Option value="code" type="QString" name="Key"/>
            <Option value="amenagement_type_segment_val_fcb35a51_280b_45eb_b8e2_19cc3cac9f4e" type="QString" name="Layer"/>
            <Option value="amenagement_type_segment_val" type="QString" name="LayerName"/>
            <Option value="postgres" type="QString" name="LayerProviderName"/>
            <Option value="dbname='sig' host=localhost port=5432 user='dhont' sslmode=disable key='id' estimatedmetadata=true checkPrimaryKeyUnicity='1' table=&quot;veloroutes&quot;.&quot;amenagement_type_segment_val&quot; sql=" type="QString" name="LayerSource"/>
            <Option value="1" type="int" name="NofColumns"/>
            <Option value="false" type="bool" name="OrderByValue"/>
            <Option value="false" type="bool" name="UseCompleter"/>
            <Option value="libelle" type="QString" name="Value"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="longueur">
      <editWidget type="Range">
        <config>
          <Option type="Map">
            <Option value="true" type="bool" name="AllowNull"/>
            <Option value="2147483647" type="int" name="Max"/>
            <Option value="0" type="int" name="Min"/>
            <Option value="0" type="int" name="Precision"/>
            <Option value="1" type="int" name="Step"/>
            <Option value="SpinBox" type="QString" name="Style"/>
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
    <alias field="gestionnaire" name="Maître d'oeuvre" index="8"/>
    <alias field="proprietaire" name="Propriétaire" index="9"/>
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
    <default field="id_segment" expression="" applyOnUpdate="0"/>
    <default field="annee_ouverture" expression="" applyOnUpdate="0"/>
    <default field="date_saisie" expression="to_date(NOW())" applyOnUpdate="1"/>
    <default field="src_geom" expression="" applyOnUpdate="0"/>
    <default field="src_annee" expression="" applyOnUpdate="0"/>
    <default field="avancement" expression="'01'" applyOnUpdate="0"/>
    <default field="revetement" expression="" applyOnUpdate="0"/>
    <default field="statut" expression="NULL" applyOnUpdate="0"/>
    <default field="gestionnaire" expression="" applyOnUpdate="0"/>
    <default field="proprietaire" expression="" applyOnUpdate="0"/>
    <default field="precision" expression="NULL" applyOnUpdate="0"/>
    <default field="sens_unique" expression="NULL" applyOnUpdate="0"/>
    <default field="geometrie_fictive" expression="NULL" applyOnUpdate="0"/>
    <default field="id_on3v" expression="" applyOnUpdate="0"/>
    <default field="id_local" expression="" applyOnUpdate="0"/>
    <default field="desserte_college" expression="NULL" applyOnUpdate="0"/>
    <default field="amenagement" expression="NULL" applyOnUpdate="0"/>
    <default field="amenagement_type" expression="NULL" applyOnUpdate="0"/>
    <default field="longueur" expression="" applyOnUpdate="0"/>
  </defaults>
  <constraints>
    <constraint field="id_segment" notnull_strength="2" exp_strength="0" constraints="3" unique_strength="2"/>
    <constraint field="annee_ouverture" notnull_strength="0" exp_strength="0" constraints="0" unique_strength="0"/>
    <constraint field="date_saisie" notnull_strength="1" exp_strength="0" constraints="1" unique_strength="0"/>
    <constraint field="src_geom" notnull_strength="0" exp_strength="0" constraints="0" unique_strength="0"/>
    <constraint field="src_annee" notnull_strength="0" exp_strength="0" constraints="0" unique_strength="0"/>
    <constraint field="avancement" notnull_strength="1" exp_strength="0" constraints="1" unique_strength="0"/>
    <constraint field="revetement" notnull_strength="0" exp_strength="0" constraints="0" unique_strength="0"/>
    <constraint field="statut" notnull_strength="1" exp_strength="0" constraints="1" unique_strength="0"/>
    <constraint field="gestionnaire" notnull_strength="0" exp_strength="0" constraints="0" unique_strength="0"/>
    <constraint field="proprietaire" notnull_strength="0" exp_strength="0" constraints="0" unique_strength="0"/>
    <constraint field="precision" notnull_strength="0" exp_strength="0" constraints="0" unique_strength="0"/>
    <constraint field="sens_unique" notnull_strength="0" exp_strength="0" constraints="0" unique_strength="0"/>
    <constraint field="geometrie_fictive" notnull_strength="0" exp_strength="0" constraints="0" unique_strength="0"/>
    <constraint field="id_on3v" notnull_strength="0" exp_strength="0" constraints="0" unique_strength="0"/>
    <constraint field="id_local" notnull_strength="0" exp_strength="0" constraints="0" unique_strength="0"/>
    <constraint field="desserte_college" notnull_strength="0" exp_strength="0" constraints="0" unique_strength="0"/>
    <constraint field="amenagement" notnull_strength="1" exp_strength="0" constraints="1" unique_strength="0"/>
    <constraint field="amenagement_type" notnull_strength="1" exp_strength="0" constraints="1" unique_strength="0"/>
    <constraint field="longueur" notnull_strength="0" exp_strength="0" constraints="0" unique_strength="0"/>
  </constraints>
  <constraintExpressions>
    <constraint field="id_segment" exp="" desc=""/>
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
    <constraint field="id_on3v" exp="" desc=""/>
    <constraint field="id_local" exp="" desc=""/>
    <constraint field="desserte_college" exp="" desc=""/>
    <constraint field="amenagement" exp="" desc=""/>
    <constraint field="amenagement_type" exp="" desc=""/>
    <constraint field="longueur" exp="" desc=""/>
  </constraintExpressions>
  <expressionfields>
    <field comment="" length="0" typeName="integer" precision="0" expression="$length" subType="0" name="longueur" type="2"/>
  </expressionfields>
  <attributeactions>
    <defaultAction value="{00000000-0000-0000-0000-000000000000}" key="Canvas"/>
    <actionsetting action="from qgis.utils import plugins&#xa;plugins['veloroutes_voies_vertes'].run_action('split_segment', [%id_segment%],[% @click_x %],[% @click_y %])" isEnabledOnlyWhenEditable="1" icon="" shortTitle="split" type="1" name="Couper un segment en un point" id="{7b62d3fa-f304-493b-9f7e-51209ddc522a}" capture="0" notificationMessage="">
      <actionScope id="Feature"/>
      <actionScope id="Field"/>
      <actionScope id="Layer"/>
      <actionScope id="Canvas"/>
    </actionsetting>
    <actionsetting action="from qgis.utils import plugins&#xa;plugins['veloroutes_voies_vertes'].run_action('create_relation', [% '\''||@layer_name||'\'' %] , 'portion', 'element', 'id_portion', 'id_segment', 'v_portion')" isEnabledOnlyWhenEditable="0" icon="" shortTitle="Créer une portion" type="1" name="Créer une portion à partir de segments sélectionnés" id="{d5e7bd38-6dce-4e68-9965-7d2fd17c67e7}" capture="0" notificationMessage="">
      <actionScope id="Feature"/>
      <actionScope id="Field"/>
      <actionScope id="Layer"/>
      <actionScope id="Canvas"/>
    </actionsetting>
  </attributeactions>
  <attributetableconfig actionWidgetStyle="dropDown" sortExpression="&quot;date_saisie&quot;" sortOrder="0">
    <columns>
      <column width="-1" type="field" name="id_segment" hidden="0"/>
      <column width="-1" type="field" name="src_geom" hidden="0"/>
      <column width="203" type="field" name="src_annee" hidden="0"/>
      <column width="148" type="field" name="avancement" hidden="0"/>
      <column width="-1" type="field" name="revetement" hidden="0"/>
      <column width="-1" type="field" name="statut" hidden="0"/>
      <column width="194" type="field" name="precision" hidden="0"/>
      <column width="-1" type="actions" hidden="1"/>
      <column width="182" type="field" name="annee_ouverture" hidden="0"/>
      <column width="-1" type="field" name="date_saisie" hidden="0"/>
      <column width="-1" type="field" name="gestionnaire" hidden="0"/>
      <column width="-1" type="field" name="proprietaire" hidden="0"/>
      <column width="279" type="field" name="sens_unique" hidden="0"/>
      <column width="-1" type="field" name="geometrie_fictive" hidden="0"/>
      <column width="-1" type="field" name="id_on3v" hidden="0"/>
      <column width="-1" type="field" name="id_local" hidden="0"/>
      <column width="-1" type="field" name="desserte_college" hidden="0"/>
      <column width="-1" type="field" name="amenagement" hidden="0"/>
      <column width="-1" type="field" name="amenagement_type" hidden="0"/>
      <column width="-1" type="field" name="longueur" hidden="0"/>
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
    <attributeEditorContainer columnCount="1" groupBox="0" showLabel="1" name="Informations" visibilityExpression="" visibilityExpressionEnabled="0">
      <attributeEditorContainer columnCount="1" groupBox="1" showLabel="1" name="Identifiants" visibilityExpression="" visibilityExpressionEnabled="0">
        <attributeEditorField showLabel="1" name="id_local" index="14"/>
        <attributeEditorField showLabel="1" name="id_on3v" index="13"/>
      </attributeEditorContainer>
      <attributeEditorField showLabel="1" name="avancement" index="5"/>
      <attributeEditorContainer columnCount="1" groupBox="1" showLabel="1" name="Typologie" visibilityExpression="" visibilityExpressionEnabled="0">
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
      <attributeEditorContainer columnCount="1" groupBox="1" showLabel="1" name="Metadonnées" visibilityExpression="" visibilityExpressionEnabled="0">
        <attributeEditorField showLabel="1" name="geometrie_fictive" index="12"/>
        <attributeEditorField showLabel="1" name="precision" index="10"/>
        <attributeEditorField showLabel="1" name="src_geom" index="3"/>
        <attributeEditorField showLabel="1" name="src_annee" index="4"/>
        <attributeEditorField showLabel="1" name="date_saisie" index="2"/>
      </attributeEditorContainer>
    </attributeEditorContainer>
    <attributeEditorContainer columnCount="1" groupBox="0" showLabel="1" name="Portions" visibilityExpression="" visibilityExpressionEnabled="0">
      <attributeEditorRelation showUnlinkButton="1" relation="element_34_id_segment_segment__id_segment" showLinkButton="1" showLabel="1" name="element_34_id_segment_segment__id_segment"/>
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
    <field editable="0" name="longueur"/>
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
        <Option value="" type="QString" name="nm-rel"/>
      </config>
    </widget>
    <widget name="element_187bfb9d_67f5_4058_8133_4c3aab650a47_id_segment_segment_556a523a_2f8f_46a9_99cf_500d166a158a_id_segment">
      <config type="Map">
        <Option value="" type="QString" name="nm-rel"/>
      </config>
    </widget>
    <widget name="element_34_id_segment_segment__id_segment">
      <config type="Map">
        <Option value="element_87_id_portion_v_portion__id_portion" type="QString" name="nm-rel"/>
      </config>
    </widget>
    <widget name="element_597f0835_a433_4dee_8eaf_08a651ae111e_id_segment_segment_7dbbff18_4ee9_4dae_b343_e7fd6fe65998_id_segment">
      <config type="Map">
        <Option value="" type="QString" name="nm-rel"/>
      </config>
    </widget>
    <widget name="element_87795107_6a41_4d89_b7a9_27020145c4c2_id_segment_segment_7bda5417_48a9_4c43_b874_6c6b490dfa9e_id_segment">
      <config type="Map">
        <Option value="" type="QString" name="nm-rel"/>
      </config>
    </widget>
    <widget name="element_9448090b_c4ec_49b1_81c1_c622817d5aac_id_segment_segment_ac1a9aa3_495d_4435_b60a_80059c8c1b81_id_segment">
      <config type="Map">
        <Option value="" type="QString" name="nm-rel"/>
      </config>
    </widget>
    <widget name="element_a0235a8d_5bb7_4b28_8f57_865448ff4da2_id_segment_segment_8165ad8d_3b5a_4f29_be08_b4c38e260593_id_segment">
      <config type="Map">
        <Option value="" type="QString" name="nm-rel"/>
      </config>
    </widget>
  </widgets>
  <previewExpression>"id_segment"</previewExpression>
  <mapTip></mapTip>
  <layerGeometryType>1</layerGeometryType>
</qgis>
