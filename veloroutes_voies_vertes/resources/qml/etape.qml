<!DOCTYPE qgis PUBLIC 'http://mrcc.com/qgis.dtd' 'SYSTEM'>
<qgis styleCategories="AllStyleCategories" maxScale="0" readOnly="0" version="3.10.10-A Coruña" minScale="1e+8" hasScaleBasedVisibilityFlag="0">
  <flags>
    <Identifiable>1</Identifiable>
    <Removable>1</Removable>
    <Searchable>1</Searchable>
  </flags>
  <customproperties>
    <property key="dualview/previewExpressions" value="&quot;id_portion&quot;"/>
    <property key="embeddedWidgets/count" value="0"/>
    <property key="variableNames"/>
    <property key="variableValues"/>
  </customproperties>
  <geometryOptions removeDuplicateNodes="0" geometryPrecision="0">
    <activeChecks/>
    <checkConfiguration/>
  </geometryOptions>
  <fieldConfiguration>
    <field name="id_portion">
      <editWidget type="RelationReference">
        <config>
          <Option type="Map">
            <Option name="AllowAddFeatures" value="false" type="bool"/>
            <Option name="AllowNULL" value="true" type="bool"/>
            <Option name="MapIdentification" value="true" type="bool"/>
            <Option name="OrderByValue" value="false" type="bool"/>
            <Option name="ReadOnly" value="false" type="bool"/>
            <Option name="Relation" value="etape_7d2f_id_portion_v_portion__id_portion" type="QString"/>
            <Option name="ShowForm" value="false" type="bool"/>
            <Option name="ShowOpenFormButton" value="true" type="bool"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="id_itineraire">
      <editWidget type="RelationReference">
        <config>
          <Option type="Map">
            <Option name="AllowAddFeatures" value="false" type="bool"/>
            <Option name="AllowNULL" value="true" type="bool"/>
            <Option name="MapIdentification" value="false" type="bool"/>
            <Option name="OrderByValue" value="false" type="bool"/>
            <Option name="ReadOnly" value="false" type="bool"/>
            <Option name="Relation" value="etape_008e0743_3f06_431d_afbb_0c8da7d8e66f_id_itineraire_itineraire_37f151ab_0ac8_4003_b653_f83e948fd3f8_id_itineraire" type="QString"/>
            <Option name="ShowForm" value="false" type="bool"/>
            <Option name="ShowOpenFormButton" value="true" type="bool"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="id">
      <editWidget type="TextEdit">
        <config>
          <Option type="Map">
            <Option name="IsMultiline" value="false" type="bool"/>
            <Option name="UseHtml" value="false" type="bool"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="etape">
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
    <alias name="Portion" index="0" field="id_portion"/>
    <alias name="Itinéraire" index="1" field="id_itineraire"/>
    <alias name="" index="2" field="id"/>
    <alias name="Numéro d'ordre" index="3" field="etape"/>
  </aliases>
  <excludeAttributesWMS/>
  <excludeAttributesWFS/>
  <defaults>
    <default expression="NULL" field="id_portion" applyOnUpdate="0"/>
    <default expression="NULL" field="id_itineraire" applyOnUpdate="0"/>
    <default expression="" field="id" applyOnUpdate="0"/>
    <default expression="" field="etape" applyOnUpdate="0"/>
  </defaults>
  <constraints>
    <constraint notnull_strength="2" exp_strength="0" constraints="1" unique_strength="0" field="id_portion"/>
    <constraint notnull_strength="2" exp_strength="0" constraints="1" unique_strength="0" field="id_itineraire"/>
    <constraint notnull_strength="1" exp_strength="0" constraints="3" unique_strength="1" field="id"/>
    <constraint notnull_strength="2" exp_strength="0" constraints="1" unique_strength="0" field="etape"/>
  </constraints>
  <constraintExpressions>
    <constraint desc="" exp="" field="id_portion"/>
    <constraint desc="" exp="" field="id_itineraire"/>
    <constraint desc="" exp="" field="id"/>
    <constraint desc="" exp="" field="etape"/>
  </constraintExpressions>
  <expressionfields/>
  <attributeactions>
    <defaultAction key="Canvas" value="{00000000-0000-0000-0000-000000000000}"/>
  </attributeactions>
  <attributetableconfig sortOrder="0" actionWidgetStyle="dropDown" sortExpression="">
    <columns>
      <column width="-1" name="id_portion" hidden="0" type="field"/>
      <column width="261" name="id_itineraire" hidden="0" type="field"/>
      <column width="200" name="id" hidden="0" type="field"/>
      <column width="-1" name="etape" hidden="0" type="field"/>
      <column width="-1" hidden="1" type="actions"/>
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
    <field name="etape" editable="1"/>
    <field name="id" editable="0"/>
    <field name="id_itineraire" editable="1"/>
    <field name="id_portion" editable="1"/>
  </editable>
  <labelOnTop>
    <field name="etape" labelOnTop="0"/>
    <field name="id" labelOnTop="0"/>
    <field name="id_itineraire" labelOnTop="0"/>
    <field name="id_portion" labelOnTop="0"/>
  </labelOnTop>
  <widgets/>
  <previewExpression>"id_portion"</previewExpression>
  <mapTip></mapTip>
  <layerGeometryType>4</layerGeometryType>
</qgis>
