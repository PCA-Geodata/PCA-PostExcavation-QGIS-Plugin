<!DOCTYPE qgis PUBLIC 'http://mrcc.com/qgis.dtd' 'SYSTEM'>
<qgis version="3.22.10-Białowieża" simplifyMaxScale="1" simplifyLocal="1" hasScaleBasedVisibilityFlag="0" simplifyDrawingHints="1" simplifyAlgorithm="0" minScale="100000000" symbologyReferenceScale="-1" styleCategories="AllStyleCategories" maxScale="0" labelsEnabled="1" simplifyDrawingTol="1" readOnly="0">
  <flags>
    <Identifiable>1</Identifiable>
    <Removable>1</Removable>
    <Searchable>1</Searchable>
    <Private>0</Private>
  </flags>
  <temporal durationField="" durationUnit="min" endExpression="" limitMode="0" accumulate="0" enabled="0" fixedDuration="0" mode="0" startField="" endField="" startExpression="">
    <fixedRange>
      <start></start>
      <end></end>
    </fixedRange>
  </temporal>
  <renderer-v2 referencescale="-1" symbollevels="0" forceraster="0" enableorderby="0" type="RuleRenderer">
    <rules key="{76874fee-d4c0-4bbe-b2a6-f9ab26480412}">
      <rule symbol="0" filter="length(&quot;Group&quot;) > 1 and &quot;Group&quot; not ilike'Ungrouped'" label="Grouped" key="{f53a47e2-804d-40aa-b591-a86f49447d32}"/>
      <rule symbol="1" filter=" &quot;Group&quot; ilike  'Ungrouped' " label="Ungrouped" key="{4b49a071-f734-4bc4-8465-56afa88e578f}"/>
      <rule symbol="2" filter=" &quot;Group&quot; is NULL" label="Empty value" key="{244451c2-100f-431d-9dfa-f250c740c51c}"/>
    </rules>
    <symbols>
      <symbol clip_to_extent="1" type="fill" force_rhr="0" name="0" alpha="0.401">
        <data_defined_properties>
          <Option type="Map">
            <Option type="QString" value="" name="name"/>
            <Option type="Map" name="properties">
              <Option type="Map" name="alpha">
                <Option type="bool" value="false" name="active"/>
                <Option type="QString" value="if(&#xd;&#xa;&quot;Group&quot; ilike '%Pit%',&#xd;&#xa;&#xd;&#xa;buffer(&#xd;&#xa;   convex_hull( &#xd;&#xa;collect( &#xd;&#xa;expression:=$geometry,&#xd;&#xa;group_by:=&quot;group&quot;,&#xd;&#xa;filter:= &quot;group&quot; is not NULL)&#xd;&#xa;)&#xd;&#xa;,14)&#xd;&#xa;,&#xd;&#xa;20)" name="expression"/>
                <Option type="int" value="3" name="type"/>
              </Option>
            </Option>
            <Option type="QString" value="collection" name="type"/>
          </Option>
        </data_defined_properties>
        <layer enabled="1" pass="0" class="SimpleFill" locked="0">
          <Option type="Map">
            <Option type="QString" value="3x:0,0,0,0,0,0" name="border_width_map_unit_scale"/>
            <Option type="QString" value="0,0,255,255" name="color"/>
            <Option type="QString" value="bevel" name="joinstyle"/>
            <Option type="QString" value="0,0" name="offset"/>
            <Option type="QString" value="3x:0,0,0,0,0,0" name="offset_map_unit_scale"/>
            <Option type="QString" value="MM" name="offset_unit"/>
            <Option type="QString" value="0,0,0,255" name="outline_color"/>
            <Option type="QString" value="solid" name="outline_style"/>
            <Option type="QString" value="0.26" name="outline_width"/>
            <Option type="QString" value="MM" name="outline_width_unit"/>
            <Option type="QString" value="solid" name="style"/>
          </Option>
          <prop v="3x:0,0,0,0,0,0" k="border_width_map_unit_scale"/>
          <prop v="0,0,255,255" k="color"/>
          <prop v="bevel" k="joinstyle"/>
          <prop v="0,0" k="offset"/>
          <prop v="3x:0,0,0,0,0,0" k="offset_map_unit_scale"/>
          <prop v="MM" k="offset_unit"/>
          <prop v="0,0,0,255" k="outline_color"/>
          <prop v="solid" k="outline_style"/>
          <prop v="0.26" k="outline_width"/>
          <prop v="MM" k="outline_width_unit"/>
          <prop v="solid" k="style"/>
          <data_defined_properties>
            <Option type="Map">
              <Option type="QString" value="" name="name"/>
              <Option name="properties"/>
              <Option type="QString" value="collection" name="type"/>
            </Option>
          </data_defined_properties>
        </layer>
      </symbol>
      <symbol clip_to_extent="1" type="fill" force_rhr="0" name="1" alpha="0.401">
        <data_defined_properties>
          <Option type="Map">
            <Option type="QString" value="" name="name"/>
            <Option type="Map" name="properties">
              <Option type="Map" name="alpha">
                <Option type="bool" value="false" name="active"/>
                <Option type="QString" value="if(&#xd;&#xa;&quot;Group&quot; ilike '%Pit%',&#xd;&#xa;&#xd;&#xa;buffer(&#xd;&#xa;   convex_hull( &#xd;&#xa;collect( &#xd;&#xa;expression:=$geometry,&#xd;&#xa;group_by:=&quot;group&quot;,&#xd;&#xa;filter:= &quot;group&quot; is not NULL)&#xd;&#xa;)&#xd;&#xa;,14)&#xd;&#xa;,&#xd;&#xa;20)" name="expression"/>
                <Option type="int" value="3" name="type"/>
              </Option>
            </Option>
            <Option type="QString" value="collection" name="type"/>
          </Option>
        </data_defined_properties>
        <layer enabled="1" pass="0" class="SimpleFill" locked="0">
          <Option type="Map">
            <Option type="QString" value="3x:0,0,0,0,0,0" name="border_width_map_unit_scale"/>
            <Option type="QString" value="253,191,111,255" name="color"/>
            <Option type="QString" value="bevel" name="joinstyle"/>
            <Option type="QString" value="0,0" name="offset"/>
            <Option type="QString" value="3x:0,0,0,0,0,0" name="offset_map_unit_scale"/>
            <Option type="QString" value="MM" name="offset_unit"/>
            <Option type="QString" value="0,0,0,255" name="outline_color"/>
            <Option type="QString" value="solid" name="outline_style"/>
            <Option type="QString" value="0.26" name="outline_width"/>
            <Option type="QString" value="MM" name="outline_width_unit"/>
            <Option type="QString" value="solid" name="style"/>
          </Option>
          <prop v="3x:0,0,0,0,0,0" k="border_width_map_unit_scale"/>
          <prop v="253,191,111,255" k="color"/>
          <prop v="bevel" k="joinstyle"/>
          <prop v="0,0" k="offset"/>
          <prop v="3x:0,0,0,0,0,0" k="offset_map_unit_scale"/>
          <prop v="MM" k="offset_unit"/>
          <prop v="0,0,0,255" k="outline_color"/>
          <prop v="solid" k="outline_style"/>
          <prop v="0.26" k="outline_width"/>
          <prop v="MM" k="outline_width_unit"/>
          <prop v="solid" k="style"/>
          <data_defined_properties>
            <Option type="Map">
              <Option type="QString" value="" name="name"/>
              <Option name="properties"/>
              <Option type="QString" value="collection" name="type"/>
            </Option>
          </data_defined_properties>
        </layer>
      </symbol>
      <symbol clip_to_extent="1" type="fill" force_rhr="0" name="2" alpha="0.8">
        <data_defined_properties>
          <Option type="Map">
            <Option type="QString" value="" name="name"/>
            <Option name="properties"/>
            <Option type="QString" value="collection" name="type"/>
          </Option>
        </data_defined_properties>
        <layer enabled="1" pass="0" class="SimpleFill" locked="0">
          <Option type="Map">
            <Option type="QString" value="3x:0,0,0,0,0,0" name="border_width_map_unit_scale"/>
            <Option type="QString" value="183,183,183,255" name="color"/>
            <Option type="QString" value="bevel" name="joinstyle"/>
            <Option type="QString" value="0,0" name="offset"/>
            <Option type="QString" value="3x:0,0,0,0,0,0" name="offset_map_unit_scale"/>
            <Option type="QString" value="MM" name="offset_unit"/>
            <Option type="QString" value="0,0,0,255" name="outline_color"/>
            <Option type="QString" value="solid" name="outline_style"/>
            <Option type="QString" value="0.26" name="outline_width"/>
            <Option type="QString" value="MM" name="outline_width_unit"/>
            <Option type="QString" value="solid" name="style"/>
          </Option>
          <prop v="3x:0,0,0,0,0,0" k="border_width_map_unit_scale"/>
          <prop v="183,183,183,255" k="color"/>
          <prop v="bevel" k="joinstyle"/>
          <prop v="0,0" k="offset"/>
          <prop v="3x:0,0,0,0,0,0" k="offset_map_unit_scale"/>
          <prop v="MM" k="offset_unit"/>
          <prop v="0,0,0,255" k="outline_color"/>
          <prop v="solid" k="outline_style"/>
          <prop v="0.26" k="outline_width"/>
          <prop v="MM" k="outline_width_unit"/>
          <prop v="solid" k="style"/>
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
  <labeling type="simple">
    <settings calloutType="simple">
      <text-style fontUnderline="0" fontKerning="1" fieldName="Group" capitalization="0" namedStyle="Regular" fontItalic="0" textOpacity="1" useSubstitutions="0" textColor="50,50,50,255" textOrientation="horizontal" isExpression="0" fontWordSpacing="0" fontFamily="Arial" fontSize="8" fontStrikeout="0" fontSizeUnit="Point" fontLetterSpacing="0" fontSizeMapUnitScale="3x:0,0,0,0,0,0" multilineHeight="1" allowHtml="0" previewBkgrdColor="255,255,255,255" fontWeight="50" blendMode="0" legendString="Aa">
        <families/>
        <text-buffer bufferDraw="1" bufferColor="250,250,250,255" bufferBlendMode="0" bufferSizeMapUnitScale="3x:0,0,0,0,0,0" bufferOpacity="0.75" bufferSize="1" bufferNoFill="1" bufferJoinStyle="128" bufferSizeUnits="MM"/>
        <text-mask maskType="0" maskSize="0" maskEnabled="0" maskOpacity="1" maskSizeMapUnitScale="3x:0,0,0,0,0,0" maskJoinStyle="128" maskedSymbolLayers="" maskSizeUnits="MM"/>
        <background shapeRadiiY="0" shapeRadiiUnit="Point" shapeRotationType="0" shapeDraw="0" shapeSizeX="0" shapeSizeY="0" shapeJoinStyle="64" shapeBlendMode="0" shapeSizeMapUnitScale="3x:0,0,0,0,0,0" shapeRadiiMapUnitScale="3x:0,0,0,0,0,0" shapeRotation="0" shapeBorderWidthUnit="Point" shapeRadiiX="0" shapeBorderColor="128,128,128,255" shapeOffsetX="0" shapeSizeUnit="MapUnit" shapeSVGFile="" shapeBorderWidth="0" shapeFillColor="255,255,255,255" shapeSizeType="0" shapeOffsetUnit="Point" shapeBorderWidthMapUnitScale="3x:0,0,0,0,0,0" shapeType="3" shapeOffsetY="0" shapeOffsetMapUnitScale="3x:0,0,0,0,0,0" shapeOpacity="0.872">
          <symbol clip_to_extent="1" type="marker" force_rhr="0" name="markerSymbol" alpha="1">
            <data_defined_properties>
              <Option type="Map">
                <Option type="QString" value="" name="name"/>
                <Option name="properties"/>
                <Option type="QString" value="collection" name="type"/>
              </Option>
            </data_defined_properties>
            <layer enabled="1" pass="0" class="SimpleMarker" locked="0">
              <Option type="Map">
                <Option type="QString" value="0" name="angle"/>
                <Option type="QString" value="square" name="cap_style"/>
                <Option type="QString" value="125,139,143,255" name="color"/>
                <Option type="QString" value="1" name="horizontal_anchor_point"/>
                <Option type="QString" value="bevel" name="joinstyle"/>
                <Option type="QString" value="circle" name="name"/>
                <Option type="QString" value="0,0" name="offset"/>
                <Option type="QString" value="3x:0,0,0,0,0,0" name="offset_map_unit_scale"/>
                <Option type="QString" value="MM" name="offset_unit"/>
                <Option type="QString" value="35,35,35,255" name="outline_color"/>
                <Option type="QString" value="solid" name="outline_style"/>
                <Option type="QString" value="0" name="outline_width"/>
                <Option type="QString" value="3x:0,0,0,0,0,0" name="outline_width_map_unit_scale"/>
                <Option type="QString" value="MM" name="outline_width_unit"/>
                <Option type="QString" value="diameter" name="scale_method"/>
                <Option type="QString" value="2" name="size"/>
                <Option type="QString" value="3x:0,0,0,0,0,0" name="size_map_unit_scale"/>
                <Option type="QString" value="MM" name="size_unit"/>
                <Option type="QString" value="1" name="vertical_anchor_point"/>
              </Option>
              <prop v="0" k="angle"/>
              <prop v="square" k="cap_style"/>
              <prop v="125,139,143,255" k="color"/>
              <prop v="1" k="horizontal_anchor_point"/>
              <prop v="bevel" k="joinstyle"/>
              <prop v="circle" k="name"/>
              <prop v="0,0" k="offset"/>
              <prop v="3x:0,0,0,0,0,0" k="offset_map_unit_scale"/>
              <prop v="MM" k="offset_unit"/>
              <prop v="35,35,35,255" k="outline_color"/>
              <prop v="solid" k="outline_style"/>
              <prop v="0" k="outline_width"/>
              <prop v="3x:0,0,0,0,0,0" k="outline_width_map_unit_scale"/>
              <prop v="MM" k="outline_width_unit"/>
              <prop v="diameter" k="scale_method"/>
              <prop v="2" k="size"/>
              <prop v="3x:0,0,0,0,0,0" k="size_map_unit_scale"/>
              <prop v="MM" k="size_unit"/>
              <prop v="1" k="vertical_anchor_point"/>
              <data_defined_properties>
                <Option type="Map">
                  <Option type="QString" value="" name="name"/>
                  <Option name="properties"/>
                  <Option type="QString" value="collection" name="type"/>
                </Option>
              </data_defined_properties>
            </layer>
          </symbol>
          <symbol clip_to_extent="1" type="fill" force_rhr="0" name="fillSymbol" alpha="1">
            <data_defined_properties>
              <Option type="Map">
                <Option type="QString" value="" name="name"/>
                <Option name="properties"/>
                <Option type="QString" value="collection" name="type"/>
              </Option>
            </data_defined_properties>
            <layer enabled="1" pass="0" class="SimpleFill" locked="0">
              <Option type="Map">
                <Option type="QString" value="3x:0,0,0,0,0,0" name="border_width_map_unit_scale"/>
                <Option type="QString" value="255,127,0,255" name="color"/>
                <Option type="QString" value="bevel" name="joinstyle"/>
                <Option type="QString" value="0,0" name="offset"/>
                <Option type="QString" value="3x:0,0,0,0,0,0" name="offset_map_unit_scale"/>
                <Option type="QString" value="MM" name="offset_unit"/>
                <Option type="QString" value="128,128,128,255" name="outline_color"/>
                <Option type="QString" value="no" name="outline_style"/>
                <Option type="QString" value="0" name="outline_width"/>
                <Option type="QString" value="Point" name="outline_width_unit"/>
                <Option type="QString" value="solid" name="style"/>
              </Option>
              <prop v="3x:0,0,0,0,0,0" k="border_width_map_unit_scale"/>
              <prop v="255,127,0,255" k="color"/>
              <prop v="bevel" k="joinstyle"/>
              <prop v="0,0" k="offset"/>
              <prop v="3x:0,0,0,0,0,0" k="offset_map_unit_scale"/>
              <prop v="MM" k="offset_unit"/>
              <prop v="128,128,128,255" k="outline_color"/>
              <prop v="no" k="outline_style"/>
              <prop v="0" k="outline_width"/>
              <prop v="Point" k="outline_width_unit"/>
              <prop v="solid" k="style"/>
              <data_defined_properties>
                <Option type="Map">
                  <Option type="QString" value="" name="name"/>
                  <Option name="properties"/>
                  <Option type="QString" value="collection" name="type"/>
                </Option>
              </data_defined_properties>
            </layer>
          </symbol>
        </background>
        <shadow shadowDraw="0" shadowUnder="0" shadowColor="0,0,0,255" shadowOpacity="0.69999999999999996" shadowRadius="1.5" shadowOffsetDist="1" shadowRadiusMapUnitScale="3x:0,0,0,0,0,0" shadowScale="100" shadowOffsetUnit="MM" shadowOffsetMapUnitScale="3x:0,0,0,0,0,0" shadowRadiusAlphaOnly="0" shadowOffsetGlobal="1" shadowRadiusUnit="MM" shadowBlendMode="6" shadowOffsetAngle="135"/>
        <dd_properties>
          <Option type="Map">
            <Option type="QString" value="" name="name"/>
            <Option name="properties"/>
            <Option type="QString" value="collection" name="type"/>
          </Option>
        </dd_properties>
        <substitutions/>
      </text-style>
      <text-format autoWrapLength="0" wrapChar="" decimals="3" addDirectionSymbol="0" rightDirectionSymbol=">" plussign="0" useMaxLineLengthForAutoWrap="1" multilineAlign="3" leftDirectionSymbol="&lt;" reverseDirectionSymbol="0" formatNumbers="0" placeDirectionSymbol="0"/>
      <placement rotationUnit="AngleDegrees" overrunDistanceMapUnitScale="3x:0,0,0,0,0,0" lineAnchorClipping="0" rotationAngle="0" yOffset="0" lineAnchorType="0" centroidInside="0" priority="5" centroidWhole="0" maxCurvedCharAngleOut="-25" offsetType="0" polygonPlacementFlags="2" maxCurvedCharAngleIn="22" labelOffsetMapUnitScale="3x:0,0,0,0,0,0" xOffset="0" overrunDistanceUnit="MM" geometryGeneratorType="PointGeometry" preserveRotation="1" predefinedPositionOrder="TR,TL,BR,BL,R,L,TSR,BSR" repeatDistanceUnits="MM" lineAnchorPercent="0.5" overrunDistance="0" offsetUnits="MM" placementFlags="10" dist="0" repeatDistance="0" layerType="PolygonGeometry" repeatDistanceMapUnitScale="3x:0,0,0,0,0,0" fitInPolygonOnly="0" geometryGenerator="collect( &#xd;&#xa;expression:=$geometry,&#xd;&#xa;group_by:=&quot;Group&quot;,&#xd;&#xa;filter:=  &quot;Group&quot;  is not NULL)&#xd;&#xa;" distMapUnitScale="3x:0,0,0,0,0,0" geometryGeneratorEnabled="0" quadOffset="5" distUnits="MM" placement="8"/>
      <rendering drawLabels="1" zIndex="0" upsidedownLabels="0" displayAll="0" labelPerPart="0" unplacedVisibility="0" limitNumLabels="0" obstacleType="1" fontMinPixelSize="3" fontMaxPixelSize="10000" obstacleFactor="1" minFeatureSize="0" maxNumLabels="5" scaleMax="0" scaleVisibility="0" scaleMin="0" mergeLines="0" fontLimitPixelSize="0" obstacle="1"/>
      <dd_properties>
        <Option type="Map">
          <Option type="QString" value="" name="name"/>
          <Option name="properties"/>
          <Option type="QString" value="collection" name="type"/>
        </Option>
      </dd_properties>
      <callout type="simple">
        <Option type="Map">
          <Option type="QString" value="pole_of_inaccessibility" name="anchorPoint"/>
          <Option type="int" value="0" name="blendMode"/>
          <Option type="Map" name="ddProperties">
            <Option type="QString" value="" name="name"/>
            <Option name="properties"/>
            <Option type="QString" value="collection" name="type"/>
          </Option>
          <Option type="bool" value="false" name="drawToAllParts"/>
          <Option type="QString" value="0" name="enabled"/>
          <Option type="QString" value="point_on_exterior" name="labelAnchorPoint"/>
          <Option type="QString" value="&lt;symbol clip_to_extent=&quot;1&quot; type=&quot;line&quot; force_rhr=&quot;0&quot; name=&quot;symbol&quot; alpha=&quot;1&quot;>&lt;data_defined_properties>&lt;Option type=&quot;Map&quot;>&lt;Option type=&quot;QString&quot; value=&quot;&quot; name=&quot;name&quot;/>&lt;Option name=&quot;properties&quot;/>&lt;Option type=&quot;QString&quot; value=&quot;collection&quot; name=&quot;type&quot;/>&lt;/Option>&lt;/data_defined_properties>&lt;layer enabled=&quot;1&quot; pass=&quot;0&quot; class=&quot;SimpleLine&quot; locked=&quot;0&quot;>&lt;Option type=&quot;Map&quot;>&lt;Option type=&quot;QString&quot; value=&quot;0&quot; name=&quot;align_dash_pattern&quot;/>&lt;Option type=&quot;QString&quot; value=&quot;square&quot; name=&quot;capstyle&quot;/>&lt;Option type=&quot;QString&quot; value=&quot;5;2&quot; name=&quot;customdash&quot;/>&lt;Option type=&quot;QString&quot; value=&quot;3x:0,0,0,0,0,0&quot; name=&quot;customdash_map_unit_scale&quot;/>&lt;Option type=&quot;QString&quot; value=&quot;MM&quot; name=&quot;customdash_unit&quot;/>&lt;Option type=&quot;QString&quot; value=&quot;0&quot; name=&quot;dash_pattern_offset&quot;/>&lt;Option type=&quot;QString&quot; value=&quot;3x:0,0,0,0,0,0&quot; name=&quot;dash_pattern_offset_map_unit_scale&quot;/>&lt;Option type=&quot;QString&quot; value=&quot;MM&quot; name=&quot;dash_pattern_offset_unit&quot;/>&lt;Option type=&quot;QString&quot; value=&quot;0&quot; name=&quot;draw_inside_polygon&quot;/>&lt;Option type=&quot;QString&quot; value=&quot;bevel&quot; name=&quot;joinstyle&quot;/>&lt;Option type=&quot;QString&quot; value=&quot;60,60,60,255&quot; name=&quot;line_color&quot;/>&lt;Option type=&quot;QString&quot; value=&quot;solid&quot; name=&quot;line_style&quot;/>&lt;Option type=&quot;QString&quot; value=&quot;0.3&quot; name=&quot;line_width&quot;/>&lt;Option type=&quot;QString&quot; value=&quot;MM&quot; name=&quot;line_width_unit&quot;/>&lt;Option type=&quot;QString&quot; value=&quot;0&quot; name=&quot;offset&quot;/>&lt;Option type=&quot;QString&quot; value=&quot;3x:0,0,0,0,0,0&quot; name=&quot;offset_map_unit_scale&quot;/>&lt;Option type=&quot;QString&quot; value=&quot;MM&quot; name=&quot;offset_unit&quot;/>&lt;Option type=&quot;QString&quot; value=&quot;0&quot; name=&quot;ring_filter&quot;/>&lt;Option type=&quot;QString&quot; value=&quot;0&quot; name=&quot;trim_distance_end&quot;/>&lt;Option type=&quot;QString&quot; value=&quot;3x:0,0,0,0,0,0&quot; name=&quot;trim_distance_end_map_unit_scale&quot;/>&lt;Option type=&quot;QString&quot; value=&quot;MM&quot; name=&quot;trim_distance_end_unit&quot;/>&lt;Option type=&quot;QString&quot; value=&quot;0&quot; name=&quot;trim_distance_start&quot;/>&lt;Option type=&quot;QString&quot; value=&quot;3x:0,0,0,0,0,0&quot; name=&quot;trim_distance_start_map_unit_scale&quot;/>&lt;Option type=&quot;QString&quot; value=&quot;MM&quot; name=&quot;trim_distance_start_unit&quot;/>&lt;Option type=&quot;QString&quot; value=&quot;0&quot; name=&quot;tweak_dash_pattern_on_corners&quot;/>&lt;Option type=&quot;QString&quot; value=&quot;0&quot; name=&quot;use_custom_dash&quot;/>&lt;Option type=&quot;QString&quot; value=&quot;3x:0,0,0,0,0,0&quot; name=&quot;width_map_unit_scale&quot;/>&lt;/Option>&lt;prop v=&quot;0&quot; k=&quot;align_dash_pattern&quot;/>&lt;prop v=&quot;square&quot; k=&quot;capstyle&quot;/>&lt;prop v=&quot;5;2&quot; k=&quot;customdash&quot;/>&lt;prop v=&quot;3x:0,0,0,0,0,0&quot; k=&quot;customdash_map_unit_scale&quot;/>&lt;prop v=&quot;MM&quot; k=&quot;customdash_unit&quot;/>&lt;prop v=&quot;0&quot; k=&quot;dash_pattern_offset&quot;/>&lt;prop v=&quot;3x:0,0,0,0,0,0&quot; k=&quot;dash_pattern_offset_map_unit_scale&quot;/>&lt;prop v=&quot;MM&quot; k=&quot;dash_pattern_offset_unit&quot;/>&lt;prop v=&quot;0&quot; k=&quot;draw_inside_polygon&quot;/>&lt;prop v=&quot;bevel&quot; k=&quot;joinstyle&quot;/>&lt;prop v=&quot;60,60,60,255&quot; k=&quot;line_color&quot;/>&lt;prop v=&quot;solid&quot; k=&quot;line_style&quot;/>&lt;prop v=&quot;0.3&quot; k=&quot;line_width&quot;/>&lt;prop v=&quot;MM&quot; k=&quot;line_width_unit&quot;/>&lt;prop v=&quot;0&quot; k=&quot;offset&quot;/>&lt;prop v=&quot;3x:0,0,0,0,0,0&quot; k=&quot;offset_map_unit_scale&quot;/>&lt;prop v=&quot;MM&quot; k=&quot;offset_unit&quot;/>&lt;prop v=&quot;0&quot; k=&quot;ring_filter&quot;/>&lt;prop v=&quot;0&quot; k=&quot;trim_distance_end&quot;/>&lt;prop v=&quot;3x:0,0,0,0,0,0&quot; k=&quot;trim_distance_end_map_unit_scale&quot;/>&lt;prop v=&quot;MM&quot; k=&quot;trim_distance_end_unit&quot;/>&lt;prop v=&quot;0&quot; k=&quot;trim_distance_start&quot;/>&lt;prop v=&quot;3x:0,0,0,0,0,0&quot; k=&quot;trim_distance_start_map_unit_scale&quot;/>&lt;prop v=&quot;MM&quot; k=&quot;trim_distance_start_unit&quot;/>&lt;prop v=&quot;0&quot; k=&quot;tweak_dash_pattern_on_corners&quot;/>&lt;prop v=&quot;0&quot; k=&quot;use_custom_dash&quot;/>&lt;prop v=&quot;3x:0,0,0,0,0,0&quot; k=&quot;width_map_unit_scale&quot;/>&lt;data_defined_properties>&lt;Option type=&quot;Map&quot;>&lt;Option type=&quot;QString&quot; value=&quot;&quot; name=&quot;name&quot;/>&lt;Option name=&quot;properties&quot;/>&lt;Option type=&quot;QString&quot; value=&quot;collection&quot; name=&quot;type&quot;/>&lt;/Option>&lt;/data_defined_properties>&lt;/layer>&lt;/symbol>" name="lineSymbol"/>
          <Option type="double" value="0" name="minLength"/>
          <Option type="QString" value="3x:0,0,0,0,0,0" name="minLengthMapUnitScale"/>
          <Option type="QString" value="MM" name="minLengthUnit"/>
          <Option type="double" value="0" name="offsetFromAnchor"/>
          <Option type="QString" value="3x:0,0,0,0,0,0" name="offsetFromAnchorMapUnitScale"/>
          <Option type="QString" value="MM" name="offsetFromAnchorUnit"/>
          <Option type="double" value="0" name="offsetFromLabel"/>
          <Option type="QString" value="3x:0,0,0,0,0,0" name="offsetFromLabelMapUnitScale"/>
          <Option type="QString" value="MM" name="offsetFromLabelUnit"/>
        </Option>
      </callout>
    </settings>
  </labeling>
  <customproperties>
    <Option type="Map">
      <Option type="List" name="dualview/previewExpressions">
        <Option type="QString" value="COALESCE(  &quot;id&quot; , '&lt;NULL>' )"/>
      </Option>
      <Option type="int" value="0" name="embeddedWidgets/count"/>
      <Option type="invalid" name="variableNames"/>
      <Option type="invalid" name="variableValues"/>
    </Option>
  </customproperties>
  <blendMode>0</blendMode>
  <featureBlendMode>0</featureBlendMode>
  <layerOpacity>1</layerOpacity>
  <SingleCategoryDiagramRenderer diagramType="Histogram" attributeLegend="1">
    <DiagramCategory rotationOffset="270" backgroundAlpha="255" penColor="#000000" opacity="1" sizeType="MM" spacingUnit="MM" scaleBasedVisibility="0" enabled="0" penWidth="0" spacingUnitScale="3x:0,0,0,0,0,0" labelPlacementMethod="XHeight" sizeScale="3x:0,0,0,0,0,0" maxScaleDenominator="1e+08" lineSizeType="MM" minimumSize="0" barWidth="5" spacing="5" penAlpha="255" backgroundColor="#ffffff" showAxis="1" minScaleDenominator="0" scaleDependency="Area" diagramOrientation="Up" direction="0" height="15" lineSizeScale="3x:0,0,0,0,0,0" width="15">
      <fontProperties style="" description="MS Shell Dlg 2,8.25,-1,5,50,0,0,0,0,0"/>
      <attribute color="#000000" label="" field="" colorOpacity="1"/>
      <axisSymbol>
        <symbol clip_to_extent="1" type="line" force_rhr="0" name="" alpha="1">
          <data_defined_properties>
            <Option type="Map">
              <Option type="QString" value="" name="name"/>
              <Option name="properties"/>
              <Option type="QString" value="collection" name="type"/>
            </Option>
          </data_defined_properties>
          <layer enabled="1" pass="0" class="SimpleLine" locked="0">
            <Option type="Map">
              <Option type="QString" value="0" name="align_dash_pattern"/>
              <Option type="QString" value="square" name="capstyle"/>
              <Option type="QString" value="5;2" name="customdash"/>
              <Option type="QString" value="3x:0,0,0,0,0,0" name="customdash_map_unit_scale"/>
              <Option type="QString" value="MM" name="customdash_unit"/>
              <Option type="QString" value="0" name="dash_pattern_offset"/>
              <Option type="QString" value="3x:0,0,0,0,0,0" name="dash_pattern_offset_map_unit_scale"/>
              <Option type="QString" value="MM" name="dash_pattern_offset_unit"/>
              <Option type="QString" value="0" name="draw_inside_polygon"/>
              <Option type="QString" value="bevel" name="joinstyle"/>
              <Option type="QString" value="35,35,35,255" name="line_color"/>
              <Option type="QString" value="solid" name="line_style"/>
              <Option type="QString" value="0.26" name="line_width"/>
              <Option type="QString" value="MM" name="line_width_unit"/>
              <Option type="QString" value="0" name="offset"/>
              <Option type="QString" value="3x:0,0,0,0,0,0" name="offset_map_unit_scale"/>
              <Option type="QString" value="MM" name="offset_unit"/>
              <Option type="QString" value="0" name="ring_filter"/>
              <Option type="QString" value="0" name="trim_distance_end"/>
              <Option type="QString" value="3x:0,0,0,0,0,0" name="trim_distance_end_map_unit_scale"/>
              <Option type="QString" value="MM" name="trim_distance_end_unit"/>
              <Option type="QString" value="0" name="trim_distance_start"/>
              <Option type="QString" value="3x:0,0,0,0,0,0" name="trim_distance_start_map_unit_scale"/>
              <Option type="QString" value="MM" name="trim_distance_start_unit"/>
              <Option type="QString" value="0" name="tweak_dash_pattern_on_corners"/>
              <Option type="QString" value="0" name="use_custom_dash"/>
              <Option type="QString" value="3x:0,0,0,0,0,0" name="width_map_unit_scale"/>
            </Option>
            <prop v="0" k="align_dash_pattern"/>
            <prop v="square" k="capstyle"/>
            <prop v="5;2" k="customdash"/>
            <prop v="3x:0,0,0,0,0,0" k="customdash_map_unit_scale"/>
            <prop v="MM" k="customdash_unit"/>
            <prop v="0" k="dash_pattern_offset"/>
            <prop v="3x:0,0,0,0,0,0" k="dash_pattern_offset_map_unit_scale"/>
            <prop v="MM" k="dash_pattern_offset_unit"/>
            <prop v="0" k="draw_inside_polygon"/>
            <prop v="bevel" k="joinstyle"/>
            <prop v="35,35,35,255" k="line_color"/>
            <prop v="solid" k="line_style"/>
            <prop v="0.26" k="line_width"/>
            <prop v="MM" k="line_width_unit"/>
            <prop v="0" k="offset"/>
            <prop v="3x:0,0,0,0,0,0" k="offset_map_unit_scale"/>
            <prop v="MM" k="offset_unit"/>
            <prop v="0" k="ring_filter"/>
            <prop v="0" k="trim_distance_end"/>
            <prop v="3x:0,0,0,0,0,0" k="trim_distance_end_map_unit_scale"/>
            <prop v="MM" k="trim_distance_end_unit"/>
            <prop v="0" k="trim_distance_start"/>
            <prop v="3x:0,0,0,0,0,0" k="trim_distance_start_map_unit_scale"/>
            <prop v="MM" k="trim_distance_start_unit"/>
            <prop v="0" k="tweak_dash_pattern_on_corners"/>
            <prop v="0" k="use_custom_dash"/>
            <prop v="3x:0,0,0,0,0,0" k="width_map_unit_scale"/>
            <data_defined_properties>
              <Option type="Map">
                <Option type="QString" value="" name="name"/>
                <Option name="properties"/>
                <Option type="QString" value="collection" name="type"/>
              </Option>
            </data_defined_properties>
          </layer>
        </symbol>
      </axisSymbol>
    </DiagramCategory>
  </SingleCategoryDiagramRenderer>
  <DiagramLayerSettings obstacle="0" priority="0" zIndex="0" linePlacementFlags="18" showAll="1" dist="0" placement="1">
    <properties>
      <Option type="Map">
        <Option type="QString" value="" name="name"/>
        <Option name="properties"/>
        <Option type="QString" value="collection" name="type"/>
      </Option>
    </properties>
  </DiagramLayerSettings>
  <geometryOptions removeDuplicateNodes="0" geometryPrecision="0">
    <activeChecks/>
    <checkConfiguration type="Map">
      <Option type="Map" name="QgsGeometryGapCheck">
        <Option type="double" value="0" name="allowedGapsBuffer"/>
        <Option type="bool" value="false" name="allowedGapsEnabled"/>
        <Option type="QString" value="" name="allowedGapsLayer"/>
      </Option>
    </checkConfiguration>
  </geometryOptions>
  <legend showLabelLegend="0" type="default-vector"/>
  <referencedLayers/>
  <fieldConfiguration>
    <field configurationFlags="None" name="layer">
      <editWidget type="TextEdit">
        <config>
          <Option type="Map">
            <Option type="bool" value="false" name="IsMultiline"/>
            <Option type="bool" value="false" name="UseHtml"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field configurationFlags="None" name="Group">
      <editWidget type="TextEdit">
        <config>
          <Option type="Map">
            <Option type="bool" value="false" name="IsMultiline"/>
            <Option type="bool" value="false" name="UseHtml"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field configurationFlags="None" name="Entity">
      <editWidget type="TextEdit">
        <config>
          <Option type="Map">
            <Option type="bool" value="false" name="IsMultiline"/>
            <Option type="bool" value="false" name="UseHtml"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field configurationFlags="None" name="Period">
      <editWidget type="TextEdit">
        <config>
          <Option type="Map">
            <Option type="bool" value="false" name="IsMultiline"/>
            <Option type="bool" value="false" name="UseHtml"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field configurationFlags="None" name="Period_no">
      <editWidget type="TextEdit">
        <config>
          <Option type="Map">
            <Option type="bool" value="false" name="IsMultiline"/>
            <Option type="bool" value="false" name="UseHtml"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field configurationFlags="None" name="SubPeriod">
      <editWidget type="TextEdit">
        <config>
          <Option type="Map">
            <Option type="bool" value="false" name="IsMultiline"/>
            <Option type="bool" value="false" name="UseHtml"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field configurationFlags="None" name="SubPer_no">
      <editWidget type="TextEdit">
        <config>
          <Option type="Map">
            <Option type="bool" value="false" name="IsMultiline"/>
            <Option type="bool" value="false" name="UseHtml"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field configurationFlags="None" name="Phase">
      <editWidget type="TextEdit">
        <config>
          <Option type="Map">
            <Option type="bool" value="false" name="IsMultiline"/>
            <Option type="bool" value="false" name="UseHtml"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field configurationFlags="None" name="Notes">
      <editWidget type="TextEdit">
        <config>
          <Option type="Map">
            <Option type="bool" value="false" name="IsMultiline"/>
            <Option type="bool" value="false" name="UseHtml"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field configurationFlags="None" name="test">
      <editWidget type="">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
  </fieldConfiguration>
  <aliases>
    <alias field="layer" index="0" name="Original layer"/>
    <alias field="Group" index="1" name=""/>
    <alias field="Entity" index="2" name=""/>
    <alias field="Period" index="3" name=""/>
    <alias field="Period_no" index="4" name=""/>
    <alias field="SubPeriod" index="5" name=""/>
    <alias field="SubPer_no" index="6" name=""/>
    <alias field="Phase" index="7" name=""/>
    <alias field="Notes" index="8" name=""/>
    <alias field="test" index="9" name=""/>
  </aliases>
  <defaults>
    <default applyOnUpdate="0" expression="" field="layer"/>
    <default applyOnUpdate="0" expression="" field="Group"/>
    <default applyOnUpdate="0" expression="" field="Entity"/>
    <default applyOnUpdate="0" expression="" field="Period"/>
    <default applyOnUpdate="0" expression="" field="Period_no"/>
    <default applyOnUpdate="0" expression="" field="SubPeriod"/>
    <default applyOnUpdate="0" expression="" field="SubPer_no"/>
    <default applyOnUpdate="0" expression="" field="Phase"/>
    <default applyOnUpdate="0" expression="" field="Notes"/>
    <default applyOnUpdate="0" expression="" field="test"/>
  </defaults>
  <constraints>
    <constraint notnull_strength="0" unique_strength="0" exp_strength="0" field="layer" constraints="0"/>
    <constraint notnull_strength="0" unique_strength="0" exp_strength="0" field="Group" constraints="0"/>
    <constraint notnull_strength="0" unique_strength="0" exp_strength="0" field="Entity" constraints="0"/>
    <constraint notnull_strength="0" unique_strength="0" exp_strength="0" field="Period" constraints="0"/>
    <constraint notnull_strength="0" unique_strength="0" exp_strength="0" field="Period_no" constraints="0"/>
    <constraint notnull_strength="0" unique_strength="0" exp_strength="0" field="SubPeriod" constraints="0"/>
    <constraint notnull_strength="0" unique_strength="0" exp_strength="0" field="SubPer_no" constraints="0"/>
    <constraint notnull_strength="0" unique_strength="0" exp_strength="0" field="Phase" constraints="0"/>
    <constraint notnull_strength="0" unique_strength="0" exp_strength="0" field="Notes" constraints="0"/>
    <constraint notnull_strength="0" unique_strength="0" exp_strength="0" field="test" constraints="0"/>
  </constraints>
  <constraintExpressions>
    <constraint desc="" field="layer" exp=""/>
    <constraint desc="" field="Group" exp=""/>
    <constraint desc="" field="Entity" exp=""/>
    <constraint desc="" field="Period" exp=""/>
    <constraint desc="" field="Period_no" exp=""/>
    <constraint desc="" field="SubPeriod" exp=""/>
    <constraint desc="" field="SubPer_no" exp=""/>
    <constraint desc="" field="Phase" exp=""/>
    <constraint desc="" field="Notes" exp=""/>
    <constraint desc="" field="test" exp=""/>
  </constraintExpressions>
  <expressionfields/>
  <attributeactions>
    <defaultAction key="Canvas" value="{00000000-0000-0000-0000-000000000000}"/>
  </attributeactions>
  <attributetableconfig sortOrder="0" actionWidgetStyle="dropDown" sortExpression="&quot;Group&quot;">
    <columns>
      <column type="field" width="-1" name="layer" hidden="0"/>
      <column type="field" width="-1" name="Group" hidden="0"/>
      <column type="field" width="100" name="Entity" hidden="0"/>
      <column type="field" width="-1" name="Period" hidden="0"/>
      <column type="field" width="-1" name="Period_no" hidden="0"/>
      <column type="field" width="-1" name="SubPeriod" hidden="0"/>
      <column type="field" width="100" name="SubPer_no" hidden="0"/>
      <column type="field" width="134" name="Phase" hidden="0"/>
      <column type="field" width="-1" name="Notes" hidden="0"/>
      <column type="field" width="-1" name="test" hidden="0"/>
      <column type="actions" width="-1" hidden="1"/>
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
QGIS forms can have a Python function that is called when the form is
opened.

Use this function to add extra logic to your forms.

Enter the name of the function in the "Python Init function"
field.
An example follows:
"""
from qgis.PyQt.QtWidgets import QWidget

def my_form_open(dialog, layer, feature):
    geom = feature.geometry()
    control = dialog.findChild(QWidget, "MyLineEdit")
]]></editforminitcode>
  <featformsuppress>0</featformsuppress>
  <editorlayout>tablayout</editorlayout>
  <attributeEditorForm>
    <attributeEditorField name="layer" index="0" showLabel="1"/>
    <attributeEditorContainer visibilityExpressionEnabled="0" columnCount="1" visibilityExpression="" name="Group" groupBox="1" showLabel="1">
      <attributeEditorField name="Group" index="1" showLabel="1"/>
    </attributeEditorContainer>
    <attributeEditorContainer visibilityExpressionEnabled="0" columnCount="1" visibilityExpression="" name="Entity" groupBox="1" showLabel="1">
      <attributeEditorField name="Entity" index="2" showLabel="1"/>
    </attributeEditorContainer>
    <attributeEditorContainer visibilityExpressionEnabled="0" columnCount="2" visibilityExpression="" name="Period" groupBox="1" showLabel="1">
      <attributeEditorField name="Period" index="3" showLabel="1"/>
      <attributeEditorField name="Period_no" index="4" showLabel="1"/>
      <attributeEditorField name="SubPeriod" index="5" showLabel="1"/>
      <attributeEditorField name="SubPer_no" index="6" showLabel="1"/>
    </attributeEditorContainer>
    <attributeEditorContainer visibilityExpressionEnabled="0" columnCount="1" visibilityExpression="" name="Phase" groupBox="1" showLabel="1">
      <attributeEditorField name="Phase" index="7" showLabel="1"/>
    </attributeEditorContainer>
    <attributeEditorField name="Notes" index="8" showLabel="1"/>
  </attributeEditorForm>
  <editable>
    <field editable="1" name="Entity"/>
    <field editable="1" name="Group"/>
    <field editable="1" name="Notes"/>
    <field editable="1" name="Period"/>
    <field editable="1" name="Period Num"/>
    <field editable="1" name="Period_no"/>
    <field editable="1" name="Phase"/>
    <field editable="1" name="SubPer_no"/>
    <field editable="1" name="SubPeriod"/>
    <field editable="1" name="layer"/>
  </editable>
  <labelOnTop>
    <field labelOnTop="0" name="Entity"/>
    <field labelOnTop="0" name="Group"/>
    <field labelOnTop="0" name="Notes"/>
    <field labelOnTop="0" name="Period"/>
    <field labelOnTop="0" name="Period Num"/>
    <field labelOnTop="0" name="Period_no"/>
    <field labelOnTop="0" name="Phase"/>
    <field labelOnTop="0" name="SubPer_no"/>
    <field labelOnTop="0" name="SubPeriod"/>
    <field labelOnTop="0" name="layer"/>
  </labelOnTop>
  <reuseLastValue>
    <field reuseLastValue="0" name="Entity"/>
    <field reuseLastValue="0" name="Group"/>
    <field reuseLastValue="0" name="Notes"/>
    <field reuseLastValue="0" name="Period"/>
    <field reuseLastValue="0" name="Period Num"/>
    <field reuseLastValue="0" name="Period_no"/>
    <field reuseLastValue="0" name="Phase"/>
    <field reuseLastValue="0" name="SubPer_no"/>
    <field reuseLastValue="0" name="SubPeriod"/>
    <field reuseLastValue="0" name="layer"/>
  </reuseLastValue>
  <dataDefinedFieldProperties/>
  <widgets/>
  <previewExpression>COALESCE(  "id" , '&lt;NULL>' )</previewExpression>
  <mapTip></mapTip>
  <layerGeometryType>2</layerGeometryType>
</qgis>
