<!DOCTYPE qgis PUBLIC 'http://mrcc.com/qgis.dtd' 'SYSTEM'>
<qgis simplifyDrawingTol="1" simplifyMaxScale="1" minScale="100000000" simplifyLocal="1" simplifyDrawingHints="1" symbologyReferenceScale="-1" readOnly="0" hasScaleBasedVisibilityFlag="0" maxScale="0" labelsEnabled="0" simplifyAlgorithm="0" version="3.22.10-Białowieża" styleCategories="AllStyleCategories">
  <flags>
    <Identifiable>1</Identifiable>
    <Removable>1</Removable>
    <Searchable>1</Searchable>
    <Private>0</Private>
  </flags>
  <temporal limitMode="0" endExpression="" enabled="0" fixedDuration="0" accumulate="0" startField="" startExpression="" endField="" durationField="" durationUnit="min" mode="0">
    <fixedRange>
      <start></start>
      <end></end>
    </fixedRange>
  </temporal>
  <renderer-v2 enableorderby="0" symbollevels="0" referencescale="-1" type="singleSymbol" forceraster="0">
    <symbols>
      <symbol name="0" clip_to_extent="1" type="fill" force_rhr="0" alpha="1">
        <data_defined_properties>
          <Option type="Map">
            <Option value="" name="name" type="QString"/>
            <Option name="properties"/>
            <Option value="collection" name="type" type="QString"/>
          </Option>
        </data_defined_properties>
        <layer pass="0" enabled="1" class="GeometryGenerator" locked="0">
          <Option type="Map">
            <Option value="Fill" name="SymbolType" type="QString"/>
            <Option value="if(&#xd;&#xa;&quot;Group&quot; ilike '%Pit%',&#xd;&#xa;&#xd;&#xa;buffer(&#xd;&#xa;   convex_hull( &#xd;&#xa;collect( &#xd;&#xa;expression:=$geometry,&#xd;&#xa;group_by:=&quot;group&quot;,&#xd;&#xa;filter:= &quot;group&quot; is not NULL)&#xd;&#xa;)&#xd;&#xa;,0.1)&#xd;&#xa;,&#xd;&#xa;$geometry)" name="geometryModifier" type="QString"/>
            <Option value="MapUnit" name="units" type="QString"/>
          </Option>
          <prop v="Fill" k="SymbolType"/>
          <prop v="if(&#xd;&#xa;&quot;Group&quot; ilike '%Pit%',&#xd;&#xa;&#xd;&#xa;buffer(&#xd;&#xa;   convex_hull( &#xd;&#xa;collect( &#xd;&#xa;expression:=$geometry,&#xd;&#xa;group_by:=&quot;group&quot;,&#xd;&#xa;filter:= &quot;group&quot; is not NULL)&#xd;&#xa;)&#xd;&#xa;,0.1)&#xd;&#xa;,&#xd;&#xa;$geometry)" k="geometryModifier"/>
          <prop v="MapUnit" k="units"/>
          <data_defined_properties>
            <Option type="Map">
              <Option value="" name="name" type="QString"/>
              <Option name="properties"/>
              <Option value="collection" name="type" type="QString"/>
            </Option>
          </data_defined_properties>
          <symbol name="@0@0" clip_to_extent="1" type="fill" force_rhr="0" alpha="1">
            <data_defined_properties>
              <Option type="Map">
                <Option value="" name="name" type="QString"/>
                <Option name="properties"/>
                <Option value="collection" name="type" type="QString"/>
              </Option>
            </data_defined_properties>
            <layer pass="0" enabled="1" class="SimpleFill" locked="0">
              <Option type="Map">
                <Option value="3x:0,0,0,0,0,0" name="border_width_map_unit_scale" type="QString"/>
                <Option value="229,182,54,0" name="color" type="QString"/>
                <Option value="bevel" name="joinstyle" type="QString"/>
                <Option value="0,0" name="offset" type="QString"/>
                <Option value="3x:0,0,0,0,0,0" name="offset_map_unit_scale" type="QString"/>
                <Option value="MM" name="offset_unit" type="QString"/>
                <Option value="35,35,35,0" name="outline_color" type="QString"/>
                <Option value="solid" name="outline_style" type="QString"/>
                <Option value="1.55" name="outline_width" type="QString"/>
                <Option value="MM" name="outline_width_unit" type="QString"/>
                <Option value="solid" name="style" type="QString"/>
              </Option>
              <prop v="3x:0,0,0,0,0,0" k="border_width_map_unit_scale"/>
              <prop v="229,182,54,0" k="color"/>
              <prop v="bevel" k="joinstyle"/>
              <prop v="0,0" k="offset"/>
              <prop v="3x:0,0,0,0,0,0" k="offset_map_unit_scale"/>
              <prop v="MM" k="offset_unit"/>
              <prop v="35,35,35,0" k="outline_color"/>
              <prop v="solid" k="outline_style"/>
              <prop v="1.55" k="outline_width"/>
              <prop v="MM" k="outline_width_unit"/>
              <prop v="solid" k="style"/>
              <data_defined_properties>
                <Option type="Map">
                  <Option value="" name="name" type="QString"/>
                  <Option name="properties" type="Map">
                    <Option name="fillColor" type="Map">
                      <Option value="true" name="active" type="bool"/>
                      <Option value="rand(100,255,$id)||','||rand(1,255,$id)||','||rand(1,255,$id)||','||75" name="expression" type="QString"/>
                      <Option value="3" name="type" type="int"/>
                    </Option>
                    <Option name="outlineColor" type="Map">
                      <Option value="false" name="active" type="bool"/>
                      <Option value="rand(100,255,$id)||','||rand(1,255,$id)||','||rand(1,255,$id)||','||65" name="expression" type="QString"/>
                      <Option value="3" name="type" type="int"/>
                    </Option>
                  </Option>
                  <Option value="collection" name="type" type="QString"/>
                </Option>
              </data_defined_properties>
            </layer>
          </symbol>
        </layer>
        <layer pass="0" enabled="1" class="GeometryGenerator" locked="0">
          <Option type="Map">
            <Option value="Marker" name="SymbolType" type="QString"/>
            <Option value="if(&#xd;&#xa;&quot;Group&quot; ilike '%Pit%',&#xd;&#xa;&#xd;&#xa;&#xd;&#xa; line_interpolate_point( &#xd;&#xa; &#xd;&#xa; buffer(&#xd;&#xa;   convex_hull( &#xd;&#xa;collect( &#xd;&#xa;expression:=$geometry,&#xd;&#xa;group_by:=&quot;group&quot;,&#xd;&#xa;filter:= &quot;group&quot; is not NULL)&#xd;&#xa;)&#xd;&#xa;,0.1)&#xd;&#xa; &#xd;&#xa; &#xd;&#xa; ,  length(boundary( &#xd;&#xa; &#xd;&#xa; buffer(&#xd;&#xa;   convex_hull( &#xd;&#xa;collect( &#xd;&#xa;expression:=$geometry,&#xd;&#xa;group_by:=&quot;group&quot;,&#xd;&#xa;filter:= &quot;group&quot; is not NULL)&#xd;&#xa;)&#xd;&#xa;,0.1)))/2)&#xd;&#xa;&#xd;&#xa;&#xd;&#xa;&#xd;&#xa;&#xd;&#xa;,&#xd;&#xa;centroid($geometry))" name="geometryModifier" type="QString"/>
            <Option value="MapUnit" name="units" type="QString"/>
          </Option>
          <prop v="Marker" k="SymbolType"/>
          <prop v="if(&#xd;&#xa;&quot;Group&quot; ilike '%Pit%',&#xd;&#xa;&#xd;&#xa;&#xd;&#xa; line_interpolate_point( &#xd;&#xa; &#xd;&#xa; buffer(&#xd;&#xa;   convex_hull( &#xd;&#xa;collect( &#xd;&#xa;expression:=$geometry,&#xd;&#xa;group_by:=&quot;group&quot;,&#xd;&#xa;filter:= &quot;group&quot; is not NULL)&#xd;&#xa;)&#xd;&#xa;,0.1)&#xd;&#xa; &#xd;&#xa; &#xd;&#xa; ,  length(boundary( &#xd;&#xa; &#xd;&#xa; buffer(&#xd;&#xa;   convex_hull( &#xd;&#xa;collect( &#xd;&#xa;expression:=$geometry,&#xd;&#xa;group_by:=&quot;group&quot;,&#xd;&#xa;filter:= &quot;group&quot; is not NULL)&#xd;&#xa;)&#xd;&#xa;,0.1)))/2)&#xd;&#xa;&#xd;&#xa;&#xd;&#xa;&#xd;&#xa;&#xd;&#xa;,&#xd;&#xa;centroid($geometry))" k="geometryModifier"/>
          <prop v="MapUnit" k="units"/>
          <data_defined_properties>
            <Option type="Map">
              <Option value="" name="name" type="QString"/>
              <Option name="properties"/>
              <Option value="collection" name="type" type="QString"/>
            </Option>
          </data_defined_properties>
          <symbol name="@0@1" clip_to_extent="1" type="marker" force_rhr="0" alpha="1">
            <data_defined_properties>
              <Option type="Map">
                <Option value="" name="name" type="QString"/>
                <Option name="properties"/>
                <Option value="collection" name="type" type="QString"/>
              </Option>
            </data_defined_properties>
            <layer pass="0" enabled="1" class="FontMarker" locked="0">
              <Option type="Map">
                <Option value="0" name="angle" type="QString"/>
                <Option value="A" name="chr" type="QString"/>
                <Option value="0,0,0,255" name="color" type="QString"/>
                <Option value="Dingbats" name="font" type="QString"/>
                <Option value="" name="font_style" type="QString"/>
                <Option value="0" name="horizontal_anchor_point" type="QString"/>
                <Option value="bevel" name="joinstyle" type="QString"/>
                <Option value="0,0" name="offset" type="QString"/>
                <Option value="3x:0,0,0,0,0,0" name="offset_map_unit_scale" type="QString"/>
                <Option value="MM" name="offset_unit" type="QString"/>
                <Option value="35,35,35,255" name="outline_color" type="QString"/>
                <Option value="0" name="outline_width" type="QString"/>
                <Option value="3x:0,0,0,0,0,0" name="outline_width_map_unit_scale" type="QString"/>
                <Option value="MM" name="outline_width_unit" type="QString"/>
                <Option value="15" name="size" type="QString"/>
                <Option value="3x:0,0,0,0,0,0" name="size_map_unit_scale" type="QString"/>
                <Option value="Pixel" name="size_unit" type="QString"/>
                <Option value="2" name="vertical_anchor_point" type="QString"/>
              </Option>
              <prop v="0" k="angle"/>
              <prop v="A" k="chr"/>
              <prop v="0,0,0,255" k="color"/>
              <prop v="Dingbats" k="font"/>
              <prop v="" k="font_style"/>
              <prop v="0" k="horizontal_anchor_point"/>
              <prop v="bevel" k="joinstyle"/>
              <prop v="0,0" k="offset"/>
              <prop v="3x:0,0,0,0,0,0" k="offset_map_unit_scale"/>
              <prop v="MM" k="offset_unit"/>
              <prop v="35,35,35,255" k="outline_color"/>
              <prop v="0" k="outline_width"/>
              <prop v="3x:0,0,0,0,0,0" k="outline_width_map_unit_scale"/>
              <prop v="MM" k="outline_width_unit"/>
              <prop v="15" k="size"/>
              <prop v="3x:0,0,0,0,0,0" k="size_map_unit_scale"/>
              <prop v="Pixel" k="size_unit"/>
              <prop v="2" k="vertical_anchor_point"/>
              <data_defined_properties>
                <Option type="Map">
                  <Option value="" name="name" type="QString"/>
                  <Option name="properties" type="Map">
                    <Option name="char" type="Map">
                      <Option value="true" name="active" type="bool"/>
                      <Option value="if(&quot;Group&quot; is not Null, &quot;Group&quot;, '')" name="expression" type="QString"/>
                      <Option value="3" name="type" type="int"/>
                    </Option>
                  </Option>
                  <Option value="collection" name="type" type="QString"/>
                </Option>
              </data_defined_properties>
            </layer>
          </symbol>
        </layer>
        <layer pass="0" enabled="1" class="SimpleFill" locked="0">
          <Option type="Map">
            <Option value="3x:0,0,0,0,0,0" name="border_width_map_unit_scale" type="QString"/>
            <Option value="0,0,255,0" name="color" type="QString"/>
            <Option value="bevel" name="joinstyle" type="QString"/>
            <Option value="0,0" name="offset" type="QString"/>
            <Option value="3x:0,0,0,0,0,0" name="offset_map_unit_scale" type="QString"/>
            <Option value="MM" name="offset_unit" type="QString"/>
            <Option value="35,35,35,255" name="outline_color" type="QString"/>
            <Option value="solid" name="outline_style" type="QString"/>
            <Option value="0.2" name="outline_width" type="QString"/>
            <Option value="MM" name="outline_width_unit" type="QString"/>
            <Option value="solid" name="style" type="QString"/>
          </Option>
          <prop v="3x:0,0,0,0,0,0" k="border_width_map_unit_scale"/>
          <prop v="0,0,255,0" k="color"/>
          <prop v="bevel" k="joinstyle"/>
          <prop v="0,0" k="offset"/>
          <prop v="3x:0,0,0,0,0,0" k="offset_map_unit_scale"/>
          <prop v="MM" k="offset_unit"/>
          <prop v="35,35,35,255" k="outline_color"/>
          <prop v="solid" k="outline_style"/>
          <prop v="0.2" k="outline_width"/>
          <prop v="MM" k="outline_width_unit"/>
          <prop v="solid" k="style"/>
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
    <rotation/>
    <sizescale/>
  </renderer-v2>
  <labeling type="simple">
    <settings calloutType="simple">
      <text-style blendMode="0" fontStrikeout="0" fieldName="&#xd;&#xa;&#xd;&#xa;&#xd;&#xa;&#xd;&#xa;if(&#xd;&#xa;start_point(buffer(&#xd;&#xa;   convex_hull( &#xd;&#xa;collect( &#xd;&#xa;expression:=$geometry,&#xd;&#xa;group_by:=&quot;group&quot;,&#xd;&#xa;filter:= &quot;group&quot; is not NULL)&#xd;&#xa;)&#xd;&#xa;,0.1)) > 0, &#xd;&#xa;&#xd;&#xa;start_point(buffer(&#xd;&#xa;   convex_hull( &#xd;&#xa;collect( &#xd;&#xa;expression:=$geometry,&#xd;&#xa;group_by:=&quot;group&quot;,&#xd;&#xa;filter:= &quot;group&quot; is not NULL)&#xd;&#xa;)&#xd;&#xa;,0.1)) > 0, 0)&#xd;&#xa;&#xd;&#xa;" namedStyle="Regular" textOrientation="horizontal" multilineHeight="1" fontLetterSpacing="0" capitalization="0" useSubstitutions="0" legendString="Aa" fontWeight="50" fontSize="10" fontWordSpacing="0" fontFamily="Arial" textOpacity="1" textColor="50,50,50,255" isExpression="1" fontKerning="1" fontItalic="0" fontUnderline="0" fontSizeMapUnitScale="3x:0,0,0,0,0,0" fontSizeUnit="Point" previewBkgrdColor="255,255,255,255" allowHtml="0">
        <families/>
        <text-buffer bufferDraw="0" bufferSizeMapUnitScale="3x:0,0,0,0,0,0" bufferColor="250,250,250,255" bufferSizeUnits="MM" bufferNoFill="1" bufferBlendMode="0" bufferJoinStyle="128" bufferSize="1" bufferOpacity="1"/>
        <text-mask maskType="0" maskSizeUnits="MM" maskedSymbolLayers="" maskOpacity="1" maskJoinStyle="128" maskSize="0" maskSizeMapUnitScale="3x:0,0,0,0,0,0" maskEnabled="0"/>
        <background shapeSizeUnit="Point" shapeJoinStyle="64" shapeRotation="0" shapeBorderWidthMapUnitScale="3x:0,0,0,0,0,0" shapeOpacity="1" shapeSizeType="0" shapeRadiiUnit="Point" shapeSizeX="0" shapeOffsetUnit="Point" shapeOffsetY="0" shapeRadiiMapUnitScale="3x:0,0,0,0,0,0" shapeOffsetX="0" shapeBlendMode="0" shapeRadiiX="0" shapeRotationType="0" shapeBorderWidth="0" shapeOffsetMapUnitScale="3x:0,0,0,0,0,0" shapeBorderWidthUnit="Point" shapeSVGFile="" shapeDraw="0" shapeRadiiY="0" shapeType="0" shapeFillColor="255,255,255,255" shapeBorderColor="128,128,128,255" shapeSizeY="0" shapeSizeMapUnitScale="3x:0,0,0,0,0,0">
          <symbol name="markerSymbol" clip_to_extent="1" type="marker" force_rhr="0" alpha="1">
            <data_defined_properties>
              <Option type="Map">
                <Option value="" name="name" type="QString"/>
                <Option name="properties"/>
                <Option value="collection" name="type" type="QString"/>
              </Option>
            </data_defined_properties>
            <layer pass="0" enabled="1" class="SimpleMarker" locked="0">
              <Option type="Map">
                <Option value="0" name="angle" type="QString"/>
                <Option value="square" name="cap_style" type="QString"/>
                <Option value="125,139,143,255" name="color" type="QString"/>
                <Option value="1" name="horizontal_anchor_point" type="QString"/>
                <Option value="bevel" name="joinstyle" type="QString"/>
                <Option value="circle" name="name" type="QString"/>
                <Option value="0,0" name="offset" type="QString"/>
                <Option value="3x:0,0,0,0,0,0" name="offset_map_unit_scale" type="QString"/>
                <Option value="MM" name="offset_unit" type="QString"/>
                <Option value="35,35,35,255" name="outline_color" type="QString"/>
                <Option value="solid" name="outline_style" type="QString"/>
                <Option value="0" name="outline_width" type="QString"/>
                <Option value="3x:0,0,0,0,0,0" name="outline_width_map_unit_scale" type="QString"/>
                <Option value="MM" name="outline_width_unit" type="QString"/>
                <Option value="diameter" name="scale_method" type="QString"/>
                <Option value="2" name="size" type="QString"/>
                <Option value="3x:0,0,0,0,0,0" name="size_map_unit_scale" type="QString"/>
                <Option value="MM" name="size_unit" type="QString"/>
                <Option value="1" name="vertical_anchor_point" type="QString"/>
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
                  <Option value="" name="name" type="QString"/>
                  <Option name="properties"/>
                  <Option value="collection" name="type" type="QString"/>
                </Option>
              </data_defined_properties>
            </layer>
          </symbol>
          <symbol name="fillSymbol" clip_to_extent="1" type="fill" force_rhr="0" alpha="1">
            <data_defined_properties>
              <Option type="Map">
                <Option value="" name="name" type="QString"/>
                <Option name="properties"/>
                <Option value="collection" name="type" type="QString"/>
              </Option>
            </data_defined_properties>
            <layer pass="0" enabled="1" class="SimpleFill" locked="0">
              <Option type="Map">
                <Option value="3x:0,0,0,0,0,0" name="border_width_map_unit_scale" type="QString"/>
                <Option value="255,255,255,255" name="color" type="QString"/>
                <Option value="bevel" name="joinstyle" type="QString"/>
                <Option value="0,0" name="offset" type="QString"/>
                <Option value="3x:0,0,0,0,0,0" name="offset_map_unit_scale" type="QString"/>
                <Option value="MM" name="offset_unit" type="QString"/>
                <Option value="128,128,128,255" name="outline_color" type="QString"/>
                <Option value="no" name="outline_style" type="QString"/>
                <Option value="0" name="outline_width" type="QString"/>
                <Option value="Point" name="outline_width_unit" type="QString"/>
                <Option value="solid" name="style" type="QString"/>
              </Option>
              <prop v="3x:0,0,0,0,0,0" k="border_width_map_unit_scale"/>
              <prop v="255,255,255,255" k="color"/>
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
                  <Option value="" name="name" type="QString"/>
                  <Option name="properties"/>
                  <Option value="collection" name="type" type="QString"/>
                </Option>
              </data_defined_properties>
            </layer>
          </symbol>
        </background>
        <shadow shadowRadiusUnit="MM" shadowRadiusAlphaOnly="0" shadowOffsetUnit="MM" shadowOffsetAngle="135" shadowColor="0,0,0,255" shadowOffsetDist="1" shadowOffsetMapUnitScale="3x:0,0,0,0,0,0" shadowUnder="0" shadowScale="100" shadowBlendMode="6" shadowOffsetGlobal="1" shadowDraw="0" shadowRadius="1.5" shadowRadiusMapUnitScale="3x:0,0,0,0,0,0" shadowOpacity="0.69999999999999996"/>
        <dd_properties>
          <Option type="Map">
            <Option value="" name="name" type="QString"/>
            <Option name="properties"/>
            <Option value="collection" name="type" type="QString"/>
          </Option>
        </dd_properties>
        <substitutions/>
      </text-style>
      <text-format rightDirectionSymbol=">" autoWrapLength="0" placeDirectionSymbol="0" addDirectionSymbol="0" decimals="3" multilineAlign="3" formatNumbers="0" reverseDirectionSymbol="0" useMaxLineLengthForAutoWrap="1" plussign="0" wrapChar="" leftDirectionSymbol="&lt;"/>
      <placement maxCurvedCharAngleOut="-25" repeatDistanceMapUnitScale="3x:0,0,0,0,0,0" geometryGeneratorType="PointGeometry" overrunDistanceUnit="MM" dist="0" centroidWhole="0" offsetUnits="MM" yOffset="0" lineAnchorClipping="0" centroidInside="0" repeatDistance="0" placement="1" rotationAngle="0" preserveRotation="1" placementFlags="10" quadOffset="8" priority="5" lineAnchorType="0" fitInPolygonOnly="0" polygonPlacementFlags="2" overrunDistance="0" xOffset="0" distUnits="MM" maxCurvedCharAngleIn="22" distMapUnitScale="3x:0,0,0,0,0,0" rotationUnit="AngleDegrees" predefinedPositionOrder="TR,TL,BR,BL,R,L,TSR,BSR" geometryGenerator="collect( &#xd;&#xa;expression:=$geometry,&#xd;&#xa;group_by:=&quot;Group&quot;,&#xd;&#xa;filter:=  &quot;Group&quot;  is not NULL)&#xd;&#xa;" geometryGeneratorEnabled="0" offsetType="0" labelOffsetMapUnitScale="3x:0,0,0,0,0,0" repeatDistanceUnits="MM" lineAnchorPercent="0.5" layerType="PolygonGeometry" overrunDistanceMapUnitScale="3x:0,0,0,0,0,0"/>
      <rendering scaleMin="0" unplacedVisibility="0" minFeatureSize="0" maxNumLabels="5000" zIndex="0" mergeLines="0" obstacleFactor="1" upsidedownLabels="0" obstacle="1" limitNumLabels="0" labelPerPart="0" obstacleType="1" scaleMax="0" fontMinPixelSize="3" fontLimitPixelSize="0" fontMaxPixelSize="10000" drawLabels="1" displayAll="1" scaleVisibility="0"/>
      <dd_properties>
        <Option type="Map">
          <Option value="" name="name" type="QString"/>
          <Option name="properties"/>
          <Option value="collection" name="type" type="QString"/>
        </Option>
      </dd_properties>
      <callout type="simple">
        <Option type="Map">
          <Option value="pole_of_inaccessibility" name="anchorPoint" type="QString"/>
          <Option value="0" name="blendMode" type="int"/>
          <Option name="ddProperties" type="Map">
            <Option value="" name="name" type="QString"/>
            <Option name="properties"/>
            <Option value="collection" name="type" type="QString"/>
          </Option>
          <Option value="false" name="drawToAllParts" type="bool"/>
          <Option value="0" name="enabled" type="QString"/>
          <Option value="point_on_exterior" name="labelAnchorPoint" type="QString"/>
          <Option value="&lt;symbol name=&quot;symbol&quot; clip_to_extent=&quot;1&quot; type=&quot;line&quot; force_rhr=&quot;0&quot; alpha=&quot;1&quot;>&lt;data_defined_properties>&lt;Option type=&quot;Map&quot;>&lt;Option value=&quot;&quot; name=&quot;name&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;properties&quot;/>&lt;Option value=&quot;collection&quot; name=&quot;type&quot; type=&quot;QString&quot;/>&lt;/Option>&lt;/data_defined_properties>&lt;layer pass=&quot;0&quot; enabled=&quot;1&quot; class=&quot;SimpleLine&quot; locked=&quot;0&quot;>&lt;Option type=&quot;Map&quot;>&lt;Option value=&quot;0&quot; name=&quot;align_dash_pattern&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;square&quot; name=&quot;capstyle&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;5;2&quot; name=&quot;customdash&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;3x:0,0,0,0,0,0&quot; name=&quot;customdash_map_unit_scale&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;MM&quot; name=&quot;customdash_unit&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;0&quot; name=&quot;dash_pattern_offset&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;3x:0,0,0,0,0,0&quot; name=&quot;dash_pattern_offset_map_unit_scale&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;MM&quot; name=&quot;dash_pattern_offset_unit&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;0&quot; name=&quot;draw_inside_polygon&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;bevel&quot; name=&quot;joinstyle&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;60,60,60,255&quot; name=&quot;line_color&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;solid&quot; name=&quot;line_style&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;0.3&quot; name=&quot;line_width&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;MM&quot; name=&quot;line_width_unit&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;0&quot; name=&quot;offset&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;3x:0,0,0,0,0,0&quot; name=&quot;offset_map_unit_scale&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;MM&quot; name=&quot;offset_unit&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;0&quot; name=&quot;ring_filter&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;0&quot; name=&quot;trim_distance_end&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;3x:0,0,0,0,0,0&quot; name=&quot;trim_distance_end_map_unit_scale&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;MM&quot; name=&quot;trim_distance_end_unit&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;0&quot; name=&quot;trim_distance_start&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;3x:0,0,0,0,0,0&quot; name=&quot;trim_distance_start_map_unit_scale&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;MM&quot; name=&quot;trim_distance_start_unit&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;0&quot; name=&quot;tweak_dash_pattern_on_corners&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;0&quot; name=&quot;use_custom_dash&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;3x:0,0,0,0,0,0&quot; name=&quot;width_map_unit_scale&quot; type=&quot;QString&quot;/>&lt;/Option>&lt;prop v=&quot;0&quot; k=&quot;align_dash_pattern&quot;/>&lt;prop v=&quot;square&quot; k=&quot;capstyle&quot;/>&lt;prop v=&quot;5;2&quot; k=&quot;customdash&quot;/>&lt;prop v=&quot;3x:0,0,0,0,0,0&quot; k=&quot;customdash_map_unit_scale&quot;/>&lt;prop v=&quot;MM&quot; k=&quot;customdash_unit&quot;/>&lt;prop v=&quot;0&quot; k=&quot;dash_pattern_offset&quot;/>&lt;prop v=&quot;3x:0,0,0,0,0,0&quot; k=&quot;dash_pattern_offset_map_unit_scale&quot;/>&lt;prop v=&quot;MM&quot; k=&quot;dash_pattern_offset_unit&quot;/>&lt;prop v=&quot;0&quot; k=&quot;draw_inside_polygon&quot;/>&lt;prop v=&quot;bevel&quot; k=&quot;joinstyle&quot;/>&lt;prop v=&quot;60,60,60,255&quot; k=&quot;line_color&quot;/>&lt;prop v=&quot;solid&quot; k=&quot;line_style&quot;/>&lt;prop v=&quot;0.3&quot; k=&quot;line_width&quot;/>&lt;prop v=&quot;MM&quot; k=&quot;line_width_unit&quot;/>&lt;prop v=&quot;0&quot; k=&quot;offset&quot;/>&lt;prop v=&quot;3x:0,0,0,0,0,0&quot; k=&quot;offset_map_unit_scale&quot;/>&lt;prop v=&quot;MM&quot; k=&quot;offset_unit&quot;/>&lt;prop v=&quot;0&quot; k=&quot;ring_filter&quot;/>&lt;prop v=&quot;0&quot; k=&quot;trim_distance_end&quot;/>&lt;prop v=&quot;3x:0,0,0,0,0,0&quot; k=&quot;trim_distance_end_map_unit_scale&quot;/>&lt;prop v=&quot;MM&quot; k=&quot;trim_distance_end_unit&quot;/>&lt;prop v=&quot;0&quot; k=&quot;trim_distance_start&quot;/>&lt;prop v=&quot;3x:0,0,0,0,0,0&quot; k=&quot;trim_distance_start_map_unit_scale&quot;/>&lt;prop v=&quot;MM&quot; k=&quot;trim_distance_start_unit&quot;/>&lt;prop v=&quot;0&quot; k=&quot;tweak_dash_pattern_on_corners&quot;/>&lt;prop v=&quot;0&quot; k=&quot;use_custom_dash&quot;/>&lt;prop v=&quot;3x:0,0,0,0,0,0&quot; k=&quot;width_map_unit_scale&quot;/>&lt;data_defined_properties>&lt;Option type=&quot;Map&quot;>&lt;Option value=&quot;&quot; name=&quot;name&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;properties&quot;/>&lt;Option value=&quot;collection&quot; name=&quot;type&quot; type=&quot;QString&quot;/>&lt;/Option>&lt;/data_defined_properties>&lt;/layer>&lt;/symbol>" name="lineSymbol" type="QString"/>
          <Option value="0" name="minLength" type="double"/>
          <Option value="3x:0,0,0,0,0,0" name="minLengthMapUnitScale" type="QString"/>
          <Option value="MM" name="minLengthUnit" type="QString"/>
          <Option value="0" name="offsetFromAnchor" type="double"/>
          <Option value="3x:0,0,0,0,0,0" name="offsetFromAnchorMapUnitScale" type="QString"/>
          <Option value="MM" name="offsetFromAnchorUnit" type="QString"/>
          <Option value="0" name="offsetFromLabel" type="double"/>
          <Option value="3x:0,0,0,0,0,0" name="offsetFromLabelMapUnitScale" type="QString"/>
          <Option value="MM" name="offsetFromLabelUnit" type="QString"/>
        </Option>
      </callout>
    </settings>
  </labeling>
  <customproperties>
    <Option type="Map">
      <Option name="dualview/previewExpressions" type="List">
        <Option value="COALESCE(  &quot;id&quot; , '&lt;NULL>' )" type="QString"/>
      </Option>
      <Option value="0" name="embeddedWidgets/count" type="int"/>
      <Option name="variableNames" type="invalid"/>
      <Option name="variableValues" type="invalid"/>
    </Option>
  </customproperties>
  <blendMode>0</blendMode>
  <featureBlendMode>0</featureBlendMode>
  <layerOpacity>1</layerOpacity>
  <SingleCategoryDiagramRenderer diagramType="Histogram" attributeLegend="1">
    <DiagramCategory sizeType="MM" scaleDependency="Area" spacingUnit="MM" height="15" maxScaleDenominator="1e+08" backgroundColor="#ffffff" lineSizeScale="3x:0,0,0,0,0,0" opacity="1" rotationOffset="270" direction="0" penColor="#000000" showAxis="1" minimumSize="0" spacing="5" penAlpha="255" sizeScale="3x:0,0,0,0,0,0" enabled="0" labelPlacementMethod="XHeight" width="15" minScaleDenominator="0" spacingUnitScale="3x:0,0,0,0,0,0" diagramOrientation="Up" scaleBasedVisibility="0" backgroundAlpha="255" lineSizeType="MM" penWidth="0" barWidth="5">
      <fontProperties description="MS Shell Dlg 2,8.25,-1,5,50,0,0,0,0,0" style=""/>
      <attribute field="" color="#000000" colorOpacity="1" label=""/>
      <axisSymbol>
        <symbol name="" clip_to_extent="1" type="line" force_rhr="0" alpha="1">
          <data_defined_properties>
            <Option type="Map">
              <Option value="" name="name" type="QString"/>
              <Option name="properties"/>
              <Option value="collection" name="type" type="QString"/>
            </Option>
          </data_defined_properties>
          <layer pass="0" enabled="1" class="SimpleLine" locked="0">
            <Option type="Map">
              <Option value="0" name="align_dash_pattern" type="QString"/>
              <Option value="square" name="capstyle" type="QString"/>
              <Option value="5;2" name="customdash" type="QString"/>
              <Option value="3x:0,0,0,0,0,0" name="customdash_map_unit_scale" type="QString"/>
              <Option value="MM" name="customdash_unit" type="QString"/>
              <Option value="0" name="dash_pattern_offset" type="QString"/>
              <Option value="3x:0,0,0,0,0,0" name="dash_pattern_offset_map_unit_scale" type="QString"/>
              <Option value="MM" name="dash_pattern_offset_unit" type="QString"/>
              <Option value="0" name="draw_inside_polygon" type="QString"/>
              <Option value="bevel" name="joinstyle" type="QString"/>
              <Option value="35,35,35,255" name="line_color" type="QString"/>
              <Option value="solid" name="line_style" type="QString"/>
              <Option value="0.26" name="line_width" type="QString"/>
              <Option value="MM" name="line_width_unit" type="QString"/>
              <Option value="0" name="offset" type="QString"/>
              <Option value="3x:0,0,0,0,0,0" name="offset_map_unit_scale" type="QString"/>
              <Option value="MM" name="offset_unit" type="QString"/>
              <Option value="0" name="ring_filter" type="QString"/>
              <Option value="0" name="trim_distance_end" type="QString"/>
              <Option value="3x:0,0,0,0,0,0" name="trim_distance_end_map_unit_scale" type="QString"/>
              <Option value="MM" name="trim_distance_end_unit" type="QString"/>
              <Option value="0" name="trim_distance_start" type="QString"/>
              <Option value="3x:0,0,0,0,0,0" name="trim_distance_start_map_unit_scale" type="QString"/>
              <Option value="MM" name="trim_distance_start_unit" type="QString"/>
              <Option value="0" name="tweak_dash_pattern_on_corners" type="QString"/>
              <Option value="0" name="use_custom_dash" type="QString"/>
              <Option value="3x:0,0,0,0,0,0" name="width_map_unit_scale" type="QString"/>
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
                <Option value="" name="name" type="QString"/>
                <Option name="properties"/>
                <Option value="collection" name="type" type="QString"/>
              </Option>
            </data_defined_properties>
          </layer>
        </symbol>
      </axisSymbol>
    </DiagramCategory>
  </SingleCategoryDiagramRenderer>
  <DiagramLayerSettings priority="0" placement="1" showAll="1" zIndex="0" linePlacementFlags="18" obstacle="0" dist="0">
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
    <checkConfiguration type="Map">
      <Option name="QgsGeometryGapCheck" type="Map">
        <Option value="0" name="allowedGapsBuffer" type="double"/>
        <Option value="false" name="allowedGapsEnabled" type="bool"/>
        <Option value="" name="allowedGapsLayer" type="QString"/>
      </Option>
    </checkConfiguration>
  </geometryOptions>
  <legend type="default-vector" showLabelLegend="0"/>
  <referencedLayers/>
  <fieldConfiguration>
    <field configurationFlags="None" name="layer">
      <editWidget type="TextEdit">
        <config>
          <Option type="Map">
            <Option value="false" name="IsMultiline" type="bool"/>
            <Option value="false" name="UseHtml" type="bool"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field configurationFlags="None" name="Group">
      <editWidget type="TextEdit">
        <config>
          <Option type="Map">
            <Option value="false" name="IsMultiline" type="bool"/>
            <Option value="false" name="UseHtml" type="bool"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field configurationFlags="None" name="Entity">
      <editWidget type="TextEdit">
        <config>
          <Option type="Map">
            <Option value="false" name="IsMultiline" type="bool"/>
            <Option value="false" name="UseHtml" type="bool"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field configurationFlags="None" name="Period">
      <editWidget type="TextEdit">
        <config>
          <Option type="Map">
            <Option value="false" name="IsMultiline" type="bool"/>
            <Option value="false" name="UseHtml" type="bool"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field configurationFlags="None" name="Period_no">
      <editWidget type="TextEdit">
        <config>
          <Option type="Map">
            <Option value="false" name="IsMultiline" type="bool"/>
            <Option value="false" name="UseHtml" type="bool"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field configurationFlags="None" name="SubPeriod">
      <editWidget type="TextEdit">
        <config>
          <Option type="Map">
            <Option value="false" name="IsMultiline" type="bool"/>
            <Option value="false" name="UseHtml" type="bool"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field configurationFlags="None" name="SubPer_no">
      <editWidget type="TextEdit">
        <config>
          <Option type="Map">
            <Option value="false" name="IsMultiline" type="bool"/>
            <Option value="false" name="UseHtml" type="bool"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field configurationFlags="None" name="Phase">
      <editWidget type="TextEdit">
        <config>
          <Option type="Map">
            <Option value="false" name="IsMultiline" type="bool"/>
            <Option value="false" name="UseHtml" type="bool"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field configurationFlags="None" name="Notes">
      <editWidget type="TextEdit">
        <config>
          <Option type="Map">
            <Option value="false" name="IsMultiline" type="bool"/>
            <Option value="false" name="UseHtml" type="bool"/>
          </Option>
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
  </aliases>
  <defaults>
    <default field="layer" applyOnUpdate="0" expression=""/>
    <default field="Group" applyOnUpdate="0" expression=""/>
    <default field="Entity" applyOnUpdate="0" expression=""/>
    <default field="Period" applyOnUpdate="0" expression=""/>
    <default field="Period_no" applyOnUpdate="0" expression=""/>
    <default field="SubPeriod" applyOnUpdate="0" expression=""/>
    <default field="SubPer_no" applyOnUpdate="0" expression=""/>
    <default field="Phase" applyOnUpdate="0" expression=""/>
    <default field="Notes" applyOnUpdate="0" expression=""/>
  </defaults>
  <constraints>
    <constraint field="layer" notnull_strength="0" unique_strength="0" constraints="0" exp_strength="0"/>
    <constraint field="Group" notnull_strength="0" unique_strength="0" constraints="0" exp_strength="0"/>
    <constraint field="Entity" notnull_strength="0" unique_strength="0" constraints="0" exp_strength="0"/>
    <constraint field="Period" notnull_strength="0" unique_strength="0" constraints="0" exp_strength="0"/>
    <constraint field="Period_no" notnull_strength="0" unique_strength="0" constraints="0" exp_strength="0"/>
    <constraint field="SubPeriod" notnull_strength="0" unique_strength="0" constraints="0" exp_strength="0"/>
    <constraint field="SubPer_no" notnull_strength="0" unique_strength="0" constraints="0" exp_strength="0"/>
    <constraint field="Phase" notnull_strength="0" unique_strength="0" constraints="0" exp_strength="0"/>
    <constraint field="Notes" notnull_strength="0" unique_strength="0" constraints="0" exp_strength="0"/>
  </constraints>
  <constraintExpressions>
    <constraint field="layer" exp="" desc=""/>
    <constraint field="Group" exp="" desc=""/>
    <constraint field="Entity" exp="" desc=""/>
    <constraint field="Period" exp="" desc=""/>
    <constraint field="Period_no" exp="" desc=""/>
    <constraint field="SubPeriod" exp="" desc=""/>
    <constraint field="SubPer_no" exp="" desc=""/>
    <constraint field="Phase" exp="" desc=""/>
    <constraint field="Notes" exp="" desc=""/>
  </constraintExpressions>
  <expressionfields/>
  <attributeactions>
    <defaultAction value="{00000000-0000-0000-0000-000000000000}" key="Canvas"/>
  </attributeactions>
  <attributetableconfig sortOrder="1" sortExpression="&quot;Period_no&quot;" actionWidgetStyle="dropDown">
    <columns>
      <column width="-1" name="layer" type="field" hidden="0"/>
      <column width="-1" name="Group" type="field" hidden="0"/>
      <column width="100" name="Entity" type="field" hidden="0"/>
      <column width="-1" name="Period" type="field" hidden="0"/>
      <column width="-1" name="Period_no" type="field" hidden="0"/>
      <column width="-1" name="SubPeriod" type="field" hidden="0"/>
      <column width="100" name="SubPer_no" type="field" hidden="0"/>
      <column width="134" name="Phase" type="field" hidden="0"/>
      <column width="-1" name="Notes" type="field" hidden="0"/>
      <column width="-1" type="actions" hidden="1"/>
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
    <attributeEditorContainer visibilityExpressionEnabled="0" columnCount="1" name="Group" showLabel="1" groupBox="1" visibilityExpression="">
      <attributeEditorField name="Group" index="1" showLabel="1"/>
    </attributeEditorContainer>
    <attributeEditorContainer visibilityExpressionEnabled="0" columnCount="1" name="Entity" showLabel="1" groupBox="1" visibilityExpression="">
      <attributeEditorField name="Entity" index="2" showLabel="1"/>
    </attributeEditorContainer>
    <attributeEditorContainer visibilityExpressionEnabled="0" columnCount="2" name="Period" showLabel="1" groupBox="1" visibilityExpression="">
      <attributeEditorField name="Period" index="3" showLabel="1"/>
      <attributeEditorField name="Period_no" index="4" showLabel="1"/>
      <attributeEditorField name="SubPeriod" index="5" showLabel="1"/>
      <attributeEditorField name="SubPer_no" index="6" showLabel="1"/>
    </attributeEditorContainer>
    <attributeEditorContainer visibilityExpressionEnabled="0" columnCount="1" name="Phase" showLabel="1" groupBox="1" visibilityExpression="">
      <attributeEditorField name="Phase" index="7" showLabel="1"/>
    </attributeEditorContainer>
    <attributeEditorField name="Notes" index="8" showLabel="1"/>
  </attributeEditorForm>
  <editable>
    <field name="Entity" editable="1"/>
    <field name="Group" editable="1"/>
    <field name="Notes" editable="1"/>
    <field name="Period" editable="1"/>
    <field name="Period Num" editable="1"/>
    <field name="Period_no" editable="1"/>
    <field name="Phase" editable="1"/>
    <field name="SubPer_no" editable="1"/>
    <field name="SubPeriod" editable="1"/>
    <field name="layer" editable="1"/>
  </editable>
  <labelOnTop>
    <field name="Entity" labelOnTop="0"/>
    <field name="Group" labelOnTop="0"/>
    <field name="Notes" labelOnTop="0"/>
    <field name="Period" labelOnTop="0"/>
    <field name="Period Num" labelOnTop="0"/>
    <field name="Period_no" labelOnTop="0"/>
    <field name="Phase" labelOnTop="0"/>
    <field name="SubPer_no" labelOnTop="0"/>
    <field name="SubPeriod" labelOnTop="0"/>
    <field name="layer" labelOnTop="0"/>
  </labelOnTop>
  <reuseLastValue>
    <field name="Entity" reuseLastValue="0"/>
    <field name="Group" reuseLastValue="0"/>
    <field name="Notes" reuseLastValue="0"/>
    <field name="Period" reuseLastValue="0"/>
    <field name="Period Num" reuseLastValue="0"/>
    <field name="Period_no" reuseLastValue="0"/>
    <field name="Phase" reuseLastValue="0"/>
    <field name="SubPer_no" reuseLastValue="0"/>
    <field name="SubPeriod" reuseLastValue="0"/>
    <field name="layer" reuseLastValue="0"/>
  </reuseLastValue>
  <dataDefinedFieldProperties/>
  <widgets/>
  <previewExpression>COALESCE(  "id" , '&lt;NULL>' )</previewExpression>
  <mapTip></mapTip>
  <layerGeometryType>2</layerGeometryType>
</qgis>
