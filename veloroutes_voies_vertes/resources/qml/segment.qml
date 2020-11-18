<!DOCTYPE qgis PUBLIC 'http://mrcc.com/qgis.dtd' 'SYSTEM'>
<qgis hasScaleBasedVisibilityFlag="0" simplifyMaxScale="1" maxScale="0" simplifyAlgorithm="0" styleCategories="AllStyleCategories" simplifyLocal="1" simplifyDrawingHints="1" version="3.10.10-A Coruña" minScale="1e+8" labelsEnabled="0" readOnly="0" simplifyDrawingTol="1">
  <flags>
    <Identifiable>1</Identifiable>
    <Removable>1</Removable>
    <Searchable>1</Searchable>
  </flags>
  <renderer-v2 enableorderby="0" forceraster="0" symbollevels="0" type="RuleRenderer">
    <rules key="{9004152c-ebea-4b9c-bad3-cbaa7e4ec10e}">
      <rule filter="ELSE" symbol="0" key="{04260390-4615-496a-97bf-4fb78ed1465c}"/>
      <rule filter=" &quot;statut&quot; = 'ASP'  or  &quot;statut&quot; = 'PCY'  or  &quot;statut&quot; =  'VV' or &quot;statut&quot; = 'BCY' and  &quot;revetement&quot; = 'LIS' " label="Voie dédiée" symbol="1" key="{c65d6d33-a6ec-4881-b5ba-d3706a340bea}"/>
      <rule filter=" &quot;statut&quot; = 'ASP'  or  &quot;statut&quot; = 'PCY'  or  &quot;statut&quot; =  'VV' and  (&quot;revetement&quot; = 'RUG'  or &quot;revetement&quot; = 'MEU')" label="Voie dédiée" symbol="2" key="{1614c6c8-8b2f-4915-93a4-528dbf54f227}"/>
      <rule filter=" &quot;statut&quot; = 'RTE' or &quot;statut&quot; = 'ICA' and  &quot;revetement&quot; = 'LIS' " label="voie partagée" symbol="3" key="{f760d85d-6a63-4667-af8d-d5d51ce14dcb}"/>
      <rule filter=" &quot;statut&quot; = 'RTE' or &quot;statut&quot; = 'ICA' and  (&quot;revetement&quot; = 'RUG'  or &quot;revetement&quot; = 'MEU')" label="voie partagée" symbol="4" key="{e91167ef-d66e-4aae-b29d-c5140de7abb0}"/>
    </rules>
    <symbols>
      <symbol name="0" force_rhr="0" clip_to_extent="1" type="line" alpha="1">
        <layer enabled="1" class="SimpleLine" pass="0" locked="0">
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
              <Option name="name" type="QString" value=""/>
              <Option name="properties"/>
              <Option name="type" type="QString" value="collection"/>
            </Option>
          </data_defined_properties>
        </layer>
      </symbol>
      <symbol name="1" force_rhr="0" clip_to_extent="1" type="line" alpha="1">
        <layer enabled="1" class="SimpleLine" pass="0" locked="0">
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
              <Option name="name" type="QString" value=""/>
              <Option name="properties"/>
              <Option name="type" type="QString" value="collection"/>
            </Option>
          </data_defined_properties>
        </layer>
      </symbol>
      <symbol name="2" force_rhr="0" clip_to_extent="1" type="line" alpha="1">
        <layer enabled="1" class="SimpleLine" pass="0" locked="0">
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
              <Option name="name" type="QString" value=""/>
              <Option name="properties"/>
              <Option name="type" type="QString" value="collection"/>
            </Option>
          </data_defined_properties>
        </layer>
      </symbol>
      <symbol name="3" force_rhr="0" clip_to_extent="1" type="line" alpha="1">
        <layer enabled="1" class="SimpleLine" pass="0" locked="0">
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
              <Option name="name" type="QString" value=""/>
              <Option name="properties"/>
              <Option name="type" type="QString" value="collection"/>
            </Option>
          </data_defined_properties>
        </layer>
      </symbol>
      <symbol name="4" force_rhr="0" clip_to_extent="1" type="line" alpha="1">
        <layer enabled="1" class="SimpleLine" pass="0" locked="0">
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
              <Option name="name" type="QString" value=""/>
              <Option name="properties"/>
              <Option name="type" type="QString" value="collection"/>
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
    <DiagramCategory enabled="0" barWidth="5" scaleBasedVisibility="0" penColor="#000000" diagramOrientation="Up" scaleDependency="Area" backgroundColor="#ffffff" maxScaleDenominator="1e+8" lineSizeType="MM" penWidth="0" sizeType="MM" height="15" width="15" sizeScale="3x:0,0,0,0,0,0" minScaleDenominator="0" lineSizeScale="3x:0,0,0,0,0,0" minimumSize="0" rotationOffset="270" opacity="1" labelPlacementMethod="XHeight" penAlpha="255" backgroundAlpha="255">
      <fontProperties description=".AppleSystemUIFont,13,-1,5,50,0,0,0,0,0" style=""/>
      <attribute label="" field="" color="#000000"/>
    </DiagramCategory>
  </SingleCategoryDiagramRenderer>
  <DiagramLayerSettings linePlacementFlags="18" placement="2" zIndex="0" priority="0" dist="0" obstacle="0" showAll="1">
    <properties>
      <Option type="Map">
        <Option name="name" type="QString" value=""/>
        <Option name="properties"/>
        <Option name="type" type="QString" value="collection"/>
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
            <Option name="IsMultiline" type="bool" value="false"/>
            <Option name="UseHtml" type="bool" value="false"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="annee_ouverture">
      <editWidget type="DateTime">
        <config>
          <Option type="Map">
            <Option name="allow_null" type="bool" value="true"/>
            <Option name="calendar_popup" type="bool" value="false"/>
            <Option name="display_format" type="QString" value="yyyy"/>
            <Option name="field_format" type="QString" value="yyyy"/>
            <Option name="field_iso_format" type="bool" value="false"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="date_saisie">
      <editWidget type="DateTime">
        <config>
          <Option type="Map">
            <Option name="allow_null" type="bool" value="true"/>
            <Option name="calendar_popup" type="bool" value="true"/>
            <Option name="display_format" type="QString" value="yyyy-MM-dd"/>
            <Option name="field_format" type="QString" value="yyyy-MM-dd"/>
            <Option name="field_iso_format" type="bool" value="false"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="src_geom">
      <editWidget type="UniqueValues">
        <config>
          <Option type="Map">
            <Option name="Editable" type="bool" value="true"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="src_annee">
      <editWidget type="DateTime">
        <config>
          <Option type="Map">
            <Option name="allow_null" type="bool" value="true"/>
            <Option name="calendar_popup" type="bool" value="false"/>
            <Option name="display_format" type="QString" value="yyyy"/>
            <Option name="field_format" type="QString" value="yyyy"/>
            <Option name="field_iso_format" type="bool" value="false"/>
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
                <Option name="Projet" type="QString" value="01"/>
              </Option>
              <Option type="Map">
                <Option name="Tracé arrêté" type="QString" value="02"/>
              </Option>
              <Option type="Map">
                <Option name="Travaux en cours" type="QString" value="03"/>
              </Option>
              <Option type="Map">
                <Option name="Ouvert" type="QString" value="04"/>
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
                <Option name="Lisse" type="QString" value="LIS"/>
              </Option>
              <Option type="Map">
                <Option name="Rugueux" type="QString" value="RUG"/>
              </Option>
              <Option type="Map">
                <Option name="Meuble" type="QString" value="MEU"/>
              </Option>
              <Option type="Map">
                <Option name="Inconnu" type="QString" value="{2839923C-8B7D-419E-B84B-CA2FE9B80EC7}"/>
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
            <Option name="AllowMulti" type="bool" value="false"/>
            <Option name="AllowNull" type="bool" value="false"/>
            <Option name="FilterExpression" type="QString" value=" CASE WHEN current_value('amenagement_type') = 'BSP' THEN &quot;code&quot; = 'ASP'&#xa;      WHEN current_value('amenagement_type') = 'BCR' THEN &quot;code&quot; = 'RTE'&#xa;&#x9;  ELSE current_value('amenagement_type') = &quot;code&quot; END"/>
            <Option name="Key" type="QString" value="code"/>
            <Option name="Layer" type="QString" value="statut_segment_val_d95daf4e_47c9_401b_ac04_7c92c3e5ffe6"/>
            <Option name="LayerName" type="QString" value="statut_segment_val"/>
            <Option name="LayerProviderName" type="QString" value="postgres"/>
            <Option name="LayerSource" type="QString" value="dbname='sig' host=localhost port=5432 user='dhont' key='id' estimatedmetadata=true checkPrimaryKeyUnicity='1' table=&quot;veloroutes&quot;.&quot;statut_segment_val&quot; sql="/>
            <Option name="NofColumns" type="int" value="1"/>
            <Option name="OrderByValue" type="bool" value="false"/>
            <Option name="UseCompleter" type="bool" value="false"/>
            <Option name="Value" type="QString" value="libelle"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="gestionnaire">
      <editWidget type="UniqueValues">
        <config>
          <Option type="Map">
            <Option name="Editable" type="bool" value="true"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="proprietaire">
      <editWidget type="UniqueValues">
        <config>
          <Option type="Map">
            <Option name="Editable" type="bool" value="true"/>
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
                <Option name="Décimétrique" type="QString" value="DM"/>
              </Option>
              <Option type="Map">
                <Option name="Métrique" type="QString" value="M"/>
              </Option>
              <Option type="Map">
                <Option name="Décamétrique" type="QString" value="DC"/>
              </Option>
              <Option type="Map">
                <Option name="Hectométrique" type="QString" value="HM"/>
              </Option>
              <Option type="Map">
                <Option name="Kilométrique" type="QString" value="KM"/>
              </Option>
              <Option type="Map">
                <Option name="Non estimée" type="QString" value="NE"/>
              </Option>
              <Option type="Map">
                <Option name="Non renseignée" type="QString" value="{2839923C-8B7D-419E-B84B-CA2FE9B80EC7}"/>
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
                <Option name="Bidirectionnelle" type="QString" value="F"/>
              </Option>
              <Option type="Map">
                <Option name="Monodirectionnelle" type="QString" value="T"/>
              </Option>
              <Option type="Map">
                <Option name="Ne sais pas" type="QString" value="N"/>
              </Option>
              <Option type="Map">
                <Option name="Non renseigné" type="QString" value="{2839923C-8B7D-419E-B84B-CA2FE9B80EC7}"/>
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
                <Option name="Non" type="QString" value="F"/>
              </Option>
              <Option type="Map">
                <Option name="Oui" type="QString" value="T"/>
              </Option>
              <Option type="Map">
                <Option name="Ne sais pas" type="QString" value="N"/>
              </Option>
              <Option type="Map">
                <Option name="Non précisée" type="QString" value="{2839923C-8B7D-419E-B84B-CA2FE9B80EC7}"/>
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
            <Option name="IsMultiline" type="bool" value="false"/>
            <Option name="UseHtml" type="bool" value="false"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="id_local">
      <editWidget type="TextEdit">
        <config>
          <Option type="Map">
            <Option name="IsMultiline" type="bool" value="false"/>
            <Option name="UseHtml" type="bool" value="false"/>
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
                <Option name="Non" type="QString" value="F"/>
              </Option>
              <Option type="Map">
                <Option name="Oui" type="QString" value="T"/>
              </Option>
              <Option type="Map">
                <Option name="Ne sais pas" type="QString" value="N"/>
              </Option>
              <Option type="Map">
                <Option name="Non renseignée" type="QString" value="{2839923C-8B7D-419E-B84B-CA2FE9B80EC7}"/>
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
            <Option name="AllowMulti" type="bool" value="false"/>
            <Option name="AllowNull" type="bool" value="true"/>
            <Option name="FilterExpression" type="QString" value=""/>
            <Option name="Key" type="QString" value="code"/>
            <Option name="Layer" type="QString" value="amenagement_segment_val_d4e9eb0f_e2de_44e0_878f_7b6af53bf5aa"/>
            <Option name="LayerName" type="QString" value="amenagement_segment_val"/>
            <Option name="LayerProviderName" type="QString" value="postgres"/>
            <Option name="LayerSource" type="QString" value="dbname='sig' host=localhost port=5432 user='dhont' key='id' estimatedmetadata=true checkPrimaryKeyUnicity='1' table=&quot;veloroutes&quot;.&quot;amenagement_segment_val&quot; sql="/>
            <Option name="NofColumns" type="int" value="1"/>
            <Option name="OrderByValue" type="bool" value="false"/>
            <Option name="UseCompleter" type="bool" value="false"/>
            <Option name="Value" type="QString" value="libelle"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="amenagement_type">
      <editWidget type="ValueRelation">
        <config>
          <Option type="Map">
            <Option name="AllowMulti" type="bool" value="false"/>
            <Option name="AllowNull" type="bool" value="true"/>
            <Option name="FilterExpression" type="QString" value=" current_value( 'amenagement' ) = &quot;amenagement&quot;"/>
            <Option name="Key" type="QString" value="code"/>
            <Option name="Layer" type="QString" value="amenagement_type_segment_val_415ec0f1_2139_46ac_8a05_e1854df66221"/>
            <Option name="LayerName" type="QString" value="amenagement_type_segment_val"/>
            <Option name="LayerProviderName" type="QString" value="postgres"/>
            <Option name="LayerSource" type="QString" value="dbname='sig' host=localhost port=5432 user='dhont' key='id' estimatedmetadata=true checkPrimaryKeyUnicity='1' table=&quot;veloroutes&quot;.&quot;amenagement_type_segment_val&quot; sql="/>
            <Option name="NofColumns" type="int" value="1"/>
            <Option name="OrderByValue" type="bool" value="false"/>
            <Option name="UseCompleter" type="bool" value="false"/>
            <Option name="Value" type="QString" value="libelle"/>
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
    <default expression="" applyOnUpdate="0" field="id_segment"/>
    <default expression="" applyOnUpdate="0" field="annee_ouverture"/>
    <default expression="to_date(NOW())" applyOnUpdate="1" field="date_saisie"/>
    <default expression="" applyOnUpdate="0" field="src_geom"/>
    <default expression="" applyOnUpdate="0" field="src_annee"/>
    <default expression="'01'" applyOnUpdate="0" field="avancement"/>
    <default expression="" applyOnUpdate="0" field="revetement"/>
    <default expression="NULL" applyOnUpdate="0" field="statut"/>
    <default expression="" applyOnUpdate="0" field="gestionnaire"/>
    <default expression="" applyOnUpdate="0" field="proprietaire"/>
    <default expression="NULL" applyOnUpdate="0" field="precision"/>
    <default expression="NULL" applyOnUpdate="0" field="sens_unique"/>
    <default expression="NULL" applyOnUpdate="0" field="geometrie_fictive"/>
    <default expression="" applyOnUpdate="0" field="id_on3v"/>
    <default expression="" applyOnUpdate="0" field="id_local"/>
    <default expression="NULL" applyOnUpdate="0" field="desserte_college"/>
    <default expression="NULL" applyOnUpdate="0" field="amenagement"/>
    <default expression="NULL" applyOnUpdate="0" field="amenagement_type"/>
  </defaults>
  <constraints>
    <constraint constraints="3" unique_strength="2" field="id_segment" notnull_strength="2" exp_strength="0"/>
    <constraint constraints="0" unique_strength="0" field="annee_ouverture" notnull_strength="0" exp_strength="0"/>
    <constraint constraints="1" unique_strength="0" field="date_saisie" notnull_strength="1" exp_strength="0"/>
    <constraint constraints="0" unique_strength="0" field="src_geom" notnull_strength="0" exp_strength="0"/>
    <constraint constraints="0" unique_strength="0" field="src_annee" notnull_strength="0" exp_strength="0"/>
    <constraint constraints="1" unique_strength="0" field="avancement" notnull_strength="1" exp_strength="0"/>
    <constraint constraints="0" unique_strength="0" field="revetement" notnull_strength="0" exp_strength="0"/>
    <constraint constraints="1" unique_strength="0" field="statut" notnull_strength="1" exp_strength="0"/>
    <constraint constraints="0" unique_strength="0" field="gestionnaire" notnull_strength="0" exp_strength="0"/>
    <constraint constraints="0" unique_strength="0" field="proprietaire" notnull_strength="0" exp_strength="0"/>
    <constraint constraints="0" unique_strength="0" field="precision" notnull_strength="0" exp_strength="0"/>
    <constraint constraints="0" unique_strength="0" field="sens_unique" notnull_strength="0" exp_strength="0"/>
    <constraint constraints="0" unique_strength="0" field="geometrie_fictive" notnull_strength="0" exp_strength="0"/>
    <constraint constraints="0" unique_strength="0" field="id_on3v" notnull_strength="0" exp_strength="0"/>
    <constraint constraints="0" unique_strength="0" field="id_local" notnull_strength="0" exp_strength="0"/>
    <constraint constraints="0" unique_strength="0" field="desserte_college" notnull_strength="0" exp_strength="0"/>
    <constraint constraints="1" unique_strength="0" field="amenagement" notnull_strength="1" exp_strength="0"/>
    <constraint constraints="1" unique_strength="0" field="amenagement_type" notnull_strength="1" exp_strength="0"/>
  </constraints>
  <constraintExpressions>
    <constraint desc="" field="id_segment" exp=""/>
    <constraint desc="" field="annee_ouverture" exp=""/>
    <constraint desc="" field="date_saisie" exp=""/>
    <constraint desc="" field="src_geom" exp=""/>
    <constraint desc="" field="src_annee" exp=""/>
    <constraint desc="" field="avancement" exp=""/>
    <constraint desc="" field="revetement" exp=""/>
    <constraint desc="" field="statut" exp=""/>
    <constraint desc="" field="gestionnaire" exp=""/>
    <constraint desc="" field="proprietaire" exp=""/>
    <constraint desc="" field="precision" exp=""/>
    <constraint desc="" field="sens_unique" exp=""/>
    <constraint desc="" field="geometrie_fictive" exp=""/>
    <constraint desc="" field="id_on3v" exp=""/>
    <constraint desc="" field="id_local" exp=""/>
    <constraint desc="" field="desserte_college" exp=""/>
    <constraint desc="" field="amenagement" exp=""/>
    <constraint desc="" field="amenagement_type" exp=""/>
  </constraintExpressions>
  <expressionfields/>
  <attributeactions>
    <defaultAction value="{00000000-0000-0000-0000-000000000000}" key="Canvas"/>
    <actionsetting shortTitle="split" name="Couper un segment en un point" capture="0" icon="" action="from qgis.utils import plugins&#xa;plugins['veloroutes_voies_vertes'].run_action('split_segment', [%id_segment%],[% @click_x %],[% @click_y %])" isEnabledOnlyWhenEditable="1" type="1" notificationMessage="" id="{949efe49-e590-48a2-af60-7fa5166cf303}">
      <actionScope id="Field"/>
      <actionScope id="Feature"/>
      <actionScope id="Layer"/>
      <actionScope id="Canvas"/>
    </actionsetting>
    <actionsetting shortTitle="Créer une portion" name="Créer une portion à partir de segments sélectionnés" capture="0" icon="" action="from qgis.utils import plugins&#xa;plugins['veloroutes_voies_vertes'].run_action('create_relation', [% '\''||@layer_name||'\'' %] , 'portion', 'element', 'id_portion', 'id_segment', 'v_portion')" isEnabledOnlyWhenEditable="0" type="1" notificationMessage="" id="{43f5f1ca-5b45-433b-8c24-5a6544eb2ae6}">
      <actionScope id="Field"/>
      <actionScope id="Feature"/>
      <actionScope id="Layer"/>
      <actionScope id="Canvas"/>
    </actionsetting>
  </attributeactions>
  <attributetableconfig actionWidgetStyle="dropDown" sortExpression="&quot;date_saisie&quot;" sortOrder="0">
    <columns>
      <column name="id_segment" width="-1" hidden="0" type="field"/>
      <column name="src_geom" width="-1" hidden="0" type="field"/>
      <column name="src_annee" width="203" hidden="0" type="field"/>
      <column name="avancement" width="148" hidden="0" type="field"/>
      <column name="revetement" width="-1" hidden="0" type="field"/>
      <column name="statut" width="-1" hidden="0" type="field"/>
      <column name="precision" width="194" hidden="0" type="field"/>
      <column width="-1" hidden="1" type="actions"/>
      <column name="annee_ouverture" width="182" hidden="0" type="field"/>
      <column name="date_saisie" width="-1" hidden="0" type="field"/>
      <column name="gestionnaire" width="-1" hidden="0" type="field"/>
      <column name="proprietaire" width="-1" hidden="0" type="field"/>
      <column name="sens_unique" width="279" hidden="0" type="field"/>
      <column name="geometrie_fictive" width="-1" hidden="0" type="field"/>
      <column name="id_on3v" width="-1" hidden="0" type="field"/>
      <column name="id_local" width="-1" hidden="0" type="field"/>
      <column name="desserte_college" width="-1" hidden="0" type="field"/>
      <column name="amenagement" width="-1" hidden="0" type="field"/>
      <column name="amenagement_type" width="-1" hidden="0" type="field"/>
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
    <attributeEditorField index="0" name="id_segment" showLabel="1"/>
    <attributeEditorField index="-1" name="annee_ouve" showLabel="1"/>
    <attributeEditorField index="-1" name="date_saisi" showLabel="1"/>
    <attributeEditorField index="3" name="src_geom" showLabel="1"/>
    <attributeEditorField index="4" name="src_annee" showLabel="1"/>
    <attributeEditorField index="5" name="avancement" showLabel="1"/>
    <attributeEditorField index="6" name="revetement" showLabel="1"/>
    <attributeEditorField index="7" name="statut" showLabel="1"/>
    <attributeEditorField index="-1" name="gestionnai" showLabel="1"/>
    <attributeEditorField index="-1" name="proprietai" showLabel="1"/>
    <attributeEditorField index="10" name="precision" showLabel="1"/>
    <attributeEditorField index="-1" name="sens_uniqu" showLabel="1"/>
    <attributeEditorField index="-1" name="geometrie_" showLabel="1"/>
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
    <widget name="element_187bfb9d_67f5_4058_8133_4c3aab650a47_id_segment_segment_556a523a_2f8f_46a9_99cf_500d166a158a_id_segment">
      <config type="Map">
        <Option name="nm-rel" type="QString" value=""/>
      </config>
    </widget>
    <widget name="element_34_id_segment_segment__id_segment">
      <config type="Map">
        <Option name="nm-rel" type="QString" value=""/>
      </config>
    </widget>
    <widget name="element_597f0835_a433_4dee_8eaf_08a651ae111e_id_segment_segment_7dbbff18_4ee9_4dae_b343_e7fd6fe65998_id_segment">
      <config type="Map">
        <Option name="nm-rel" type="QString" value=""/>
      </config>
    </widget>
    <widget name="element_87795107_6a41_4d89_b7a9_27020145c4c2_id_segment_segment_7bda5417_48a9_4c43_b874_6c6b490dfa9e_id_segment">
      <config type="Map">
        <Option name="nm-rel" type="QString" value=""/>
      </config>
    </widget>
    <widget name="element_9448090b_c4ec_49b1_81c1_c622817d5aac_id_segment_segment_ac1a9aa3_495d_4435_b60a_80059c8c1b81_id_segment">
      <config type="Map">
        <Option name="nm-rel" type="QString" value=""/>
      </config>
    </widget>
  </widgets>
  <previewExpression>"id_segment"</previewExpression>
  <mapTip></mapTip>
  <layerGeometryType>1</layerGeometryType>
</qgis>
