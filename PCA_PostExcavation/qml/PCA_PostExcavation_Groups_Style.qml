<!DOCTYPE qgis PUBLIC 'http://mrcc.com/qgis.dtd' 'SYSTEM'>
<qgis version="3.22.10-Białowieża" hasScaleBasedVisibilityFlag="0" simplifyLocal="1" simplifyMaxScale="1" styleCategories="AllStyleCategories" simplifyDrawingHints="1" simplifyDrawingTol="1" readOnly="0" simplifyAlgorithm="0" labelsEnabled="0" maxScale="0" minScale="100000000" symbologyReferenceScale="-1">
  <flags>
    <Identifiable>1</Identifiable>
    <Removable>1</Removable>
    <Searchable>1</Searchable>
    <Private>0</Private>
  </flags>
  <temporal startExpression="" startField="" endExpression="" limitMode="0" durationUnit="min" enabled="0" endField="" durationField="" fixedDuration="0" mode="0" accumulate="0">
    <fixedRange>
      <start></start>
      <end></end>
    </fixedRange>
  </temporal>
  <renderer-v2 type="singleSymbol" enableorderby="0" forceraster="0" symbollevels="0" referencescale="-1">
    <symbols>
      <symbol type="fill" clip_to_extent="1" force_rhr="0" name="0" alpha="1">
        <data_defined_properties>
          <Option type="Map">
            <Option type="QString" value="" name="name"/>
            <Option name="properties"/>
            <Option type="QString" value="collection" name="type"/>
          </Option>
        </data_defined_properties>
        <layer class="GeometryGenerator" enabled="1" pass="0" locked="0">
          <Option type="Map">
            <Option type="QString" value="Fill" name="SymbolType"/>
            <Option type="QString" value="if(&#xd;&#xa;&quot;Group&quot; ilike '%Pit%',&#xd;&#xa;&#xd;&#xa;buffer(&#xd;&#xa;   convex_hull( &#xd;&#xa;collect( &#xd;&#xa;expression:=$geometry,&#xd;&#xa;group_by:=&quot;group&quot;,&#xd;&#xa;filter:= &quot;group&quot; is not NULL)&#xd;&#xa;)&#xd;&#xa;,0.1)&#xd;&#xa;,&#xd;&#xa;$geometry)" name="geometryModifier"/>
            <Option type="QString" value="MapUnit" name="units"/>
          </Option>
          <prop k="SymbolType" v="Fill"/>
          <prop k="geometryModifier" v="if(&#xd;&#xa;&quot;Group&quot; ilike '%Pit%',&#xd;&#xa;&#xd;&#xa;buffer(&#xd;&#xa;   convex_hull( &#xd;&#xa;collect( &#xd;&#xa;expression:=$geometry,&#xd;&#xa;group_by:=&quot;group&quot;,&#xd;&#xa;filter:= &quot;group&quot; is not NULL)&#xd;&#xa;)&#xd;&#xa;,0.1)&#xd;&#xa;,&#xd;&#xa;$geometry)"/>
          <prop k="units" v="MapUnit"/>
          <data_defined_properties>
            <Option type="Map">
              <Option type="QString" value="" name="name"/>
              <Option name="properties"/>
              <Option type="QString" value="collection" name="type"/>
            </Option>
          </data_defined_properties>
          <symbol type="fill" clip_to_extent="1" force_rhr="0" name="@0@0" alpha="1">
            <data_defined_properties>
              <Option type="Map">
                <Option type="QString" value="" name="name"/>
                <Option name="properties"/>
                <Option type="QString" value="collection" name="type"/>
              </Option>
            </data_defined_properties>
            <layer class="SimpleFill" enabled="1" pass="0" locked="0">
              <Option type="Map">
                <Option type="QString" value="3x:0,0,0,0,0,0" name="border_width_map_unit_scale"/>
                <Option type="QString" value="229,182,54,255" name="color"/>
                <Option type="QString" value="bevel" name="joinstyle"/>
                <Option type="QString" value="0,0" name="offset"/>
                <Option type="QString" value="3x:0,0,0,0,0,0" name="offset_map_unit_scale"/>
                <Option type="QString" value="MM" name="offset_unit"/>
                <Option type="QString" value="35,35,35,0" name="outline_color"/>
                <Option type="QString" value="solid" name="outline_style"/>
                <Option type="QString" value="1.55" name="outline_width"/>
                <Option type="QString" value="MM" name="outline_width_unit"/>
                <Option type="QString" value="solid" name="style"/>
              </Option>
              <prop k="border_width_map_unit_scale" v="3x:0,0,0,0,0,0"/>
              <prop k="color" v="229,182,54,255"/>
              <prop k="joinstyle" v="bevel"/>
              <prop k="offset" v="0,0"/>
              <prop k="offset_map_unit_scale" v="3x:0,0,0,0,0,0"/>
              <prop k="offset_unit" v="MM"/>
              <prop k="outline_color" v="35,35,35,0"/>
              <prop k="outline_style" v="solid"/>
              <prop k="outline_width" v="1.55"/>
              <prop k="outline_width_unit" v="MM"/>
              <prop k="style" v="solid"/>
              <data_defined_properties>
                <Option type="Map">
                  <Option type="QString" value="" name="name"/>
                  <Option type="Map" name="properties">
                    <Option type="Map" name="fillColor">
                      <Option type="bool" value="true" name="active"/>
                      <Option type="QString" value="rand(100,255,$id)||','||rand(1,255,$id)||','||rand(1,255,$id)||','||65" name="expression"/>
                      <Option type="int" value="3" name="type"/>
                    </Option>
                    <Option type="Map" name="outlineColor">
                      <Option type="bool" value="false" name="active"/>
                      <Option type="QString" value="rand(100,255,$id)||','||rand(1,255,$id)||','||rand(1,255,$id)||','||65" name="expression"/>
                      <Option type="int" value="3" name="type"/>
                    </Option>
                  </Option>
                  <Option type="QString" value="collection" name="type"/>
                </Option>
              </data_defined_properties>
            </layer>
          </symbol>
        </layer>
        <layer class="GeometryGenerator" enabled="1" pass="0" locked="0">
          <Option type="Map">
            <Option type="QString" value="Marker" name="SymbolType"/>
            <Option type="QString" value="if(&#xd;&#xa;&quot;Group&quot; ilike '%Pit%',&#xd;&#xa;&#xd;&#xa;&#xd;&#xa; line_interpolate_point( &#xd;&#xa; &#xd;&#xa; buffer(&#xd;&#xa;   convex_hull( &#xd;&#xa;collect( &#xd;&#xa;expression:=$geometry,&#xd;&#xa;group_by:=&quot;group&quot;,&#xd;&#xa;filter:= &quot;group&quot; is not NULL)&#xd;&#xa;)&#xd;&#xa;,0.1)&#xd;&#xa; &#xd;&#xa; &#xd;&#xa; ,  length(boundary( &#xd;&#xa; &#xd;&#xa; buffer(&#xd;&#xa;   convex_hull( &#xd;&#xa;collect( &#xd;&#xa;expression:=$geometry,&#xd;&#xa;group_by:=&quot;group&quot;,&#xd;&#xa;filter:= &quot;group&quot; is not NULL)&#xd;&#xa;)&#xd;&#xa;,0.1)))/2)&#xd;&#xa;&#xd;&#xa;&#xd;&#xa;&#xd;&#xa;&#xd;&#xa;,&#xd;&#xa;centroid($geometry))" name="geometryModifier"/>
            <Option type="QString" value="MapUnit" name="units"/>
          </Option>
          <prop k="SymbolType" v="Marker"/>
          <prop k="geometryModifier" v="if(&#xd;&#xa;&quot;Group&quot; ilike '%Pit%',&#xd;&#xa;&#xd;&#xa;&#xd;&#xa; line_interpolate_point( &#xd;&#xa; &#xd;&#xa; buffer(&#xd;&#xa;   convex_hull( &#xd;&#xa;collect( &#xd;&#xa;expression:=$geometry,&#xd;&#xa;group_by:=&quot;group&quot;,&#xd;&#xa;filter:= &quot;group&quot; is not NULL)&#xd;&#xa;)&#xd;&#xa;,0.1)&#xd;&#xa; &#xd;&#xa; &#xd;&#xa; ,  length(boundary( &#xd;&#xa; &#xd;&#xa; buffer(&#xd;&#xa;   convex_hull( &#xd;&#xa;collect( &#xd;&#xa;expression:=$geometry,&#xd;&#xa;group_by:=&quot;group&quot;,&#xd;&#xa;filter:= &quot;group&quot; is not NULL)&#xd;&#xa;)&#xd;&#xa;,0.1)))/2)&#xd;&#xa;&#xd;&#xa;&#xd;&#xa;&#xd;&#xa;&#xd;&#xa;,&#xd;&#xa;centroid($geometry))"/>
          <prop k="units" v="MapUnit"/>
          <data_defined_properties>
            <Option type="Map">
              <Option type="QString" value="" name="name"/>
              <Option name="properties"/>
              <Option type="QString" value="collection" name="type"/>
            </Option>
          </data_defined_properties>
          <symbol type="marker" clip_to_extent="1" force_rhr="0" name="@0@1" alpha="1">
            <data_defined_properties>
              <Option type="Map">
                <Option type="QString" value="" name="name"/>
                <Option name="properties"/>
                <Option type="QString" value="collection" name="type"/>
              </Option>
            </data_defined_properties>
            <layer class="FontMarker" enabled="1" pass="0" locked="0">
              <Option type="Map">
                <Option type="QString" value="0" name="angle"/>
                <Option type="QString" value="A" name="chr"/>
                <Option type="QString" value="0,0,0,255" name="color"/>
                <Option type="QString" value="Dingbats" name="font"/>
                <Option type="QString" value="" name="font_style"/>
                <Option type="QString" value="0" name="horizontal_anchor_point"/>
                <Option type="QString" value="bevel" name="joinstyle"/>
                <Option type="QString" value="0,0" name="offset"/>
                <Option type="QString" value="3x:0,0,0,0,0,0" name="offset_map_unit_scale"/>
                <Option type="QString" value="MM" name="offset_unit"/>
                <Option type="QString" value="35,35,35,255" name="outline_color"/>
                <Option type="QString" value="0" name="outline_width"/>
                <Option type="QString" value="3x:0,0,0,0,0,0" name="outline_width_map_unit_scale"/>
                <Option type="QString" value="MM" name="outline_width_unit"/>
                <Option type="QString" value="15" name="size"/>
                <Option type="QString" value="3x:0,0,0,0,0,0" name="size_map_unit_scale"/>
                <Option type="QString" value="Pixel" name="size_unit"/>
                <Option type="QString" value="2" name="vertical_anchor_point"/>
              </Option>
              <prop k="angle" v="0"/>
              <prop k="chr" v="A"/>
              <prop k="color" v="0,0,0,255"/>
              <prop k="font" v="Dingbats"/>
              <prop k="font_style" v=""/>
              <prop k="horizontal_anchor_point" v="0"/>
              <prop k="joinstyle" v="bevel"/>
              <prop k="offset" v="0,0"/>
              <prop k="offset_map_unit_scale" v="3x:0,0,0,0,0,0"/>
              <prop k="offset_unit" v="MM"/>
              <prop k="outline_color" v="35,35,35,255"/>
              <prop k="outline_width" v="0"/>
              <prop k="outline_width_map_unit_scale" v="3x:0,0,0,0,0,0"/>
              <prop k="outline_width_unit" v="MM"/>
              <prop k="size" v="15"/>
              <prop k="size_map_unit_scale" v="3x:0,0,0,0,0,0"/>
              <prop k="size_unit" v="Pixel"/>
              <prop k="vertical_anchor_point" v="2"/>
              <data_defined_properties>
                <Option type="Map">
                  <Option type="QString" value="" name="name"/>
                  <Option type="Map" name="properties">
                    <Option type="Map" name="char">
                      <Option type="bool" value="true" name="active"/>
                      <Option type="QString" value="if(&quot;Group&quot; is not Null, &quot;Group&quot;, '')" name="expression"/>
                      <Option type="int" value="3" name="type"/>
                    </Option>
                  </Option>
                  <Option type="QString" value="collection" name="type"/>
                </Option>
              </data_defined_properties>
            </layer>
          </symbol>
        </layer>
        <layer class="SimpleFill" enabled="1" pass="0" locked="0">
          <Option type="Map">
            <Option type="QString" value="3x:0,0,0,0,0,0" name="border_width_map_unit_scale"/>
            <Option type="QString" value="0,0,255,0" name="color"/>
            <Option type="QString" value="bevel" name="joinstyle"/>
            <Option type="QString" value="0,0" name="offset"/>
            <Option type="QString" value="3x:0,0,0,0,0,0" name="offset_map_unit_scale"/>
            <Option type="QString" value="MM" name="offset_unit"/>
            <Option type="QString" value="35,35,35,255" name="outline_color"/>
            <Option type="QString" value="solid" name="outline_style"/>
            <Option type="QString" value="0.2" name="outline_width"/>
            <Option type="QString" value="MM" name="outline_width_unit"/>
            <Option type="QString" value="solid" name="style"/>
          </Option>
          <prop k="border_width_map_unit_scale" v="3x:0,0,0,0,0,0"/>
          <prop k="color" v="0,0,255,0"/>
          <prop k="joinstyle" v="bevel"/>
          <prop k="offset" v="0,0"/>
          <prop k="offset_map_unit_scale" v="3x:0,0,0,0,0,0"/>
          <prop k="offset_unit" v="MM"/>
          <prop k="outline_color" v="35,35,35,255"/>
          <prop k="outline_style" v="solid"/>
          <prop k="outline_width" v="0.2"/>
          <prop k="outline_width_unit" v="MM"/>
          <prop k="style" v="solid"/>
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
    <rotation/>
    <sizescale/>
  </renderer-v2>
  <labeling type="simple">
    <settings calloutType="simple">
      <text-style fieldName="&#xd;&#xa;&#xd;&#xa;&#xd;&#xa;&#xd;&#xa;if(&#xd;&#xa;start_point(buffer(&#xd;&#xa;   convex_hull( &#xd;&#xa;collect( &#xd;&#xa;expression:=$geometry,&#xd;&#xa;group_by:=&quot;group&quot;,&#xd;&#xa;filter:= &quot;group&quot; is not NULL)&#xd;&#xa;)&#xd;&#xa;,0.1)) > 0, &#xd;&#xa;&#xd;&#xa;start_point(buffer(&#xd;&#xa;   convex_hull( &#xd;&#xa;collect( &#xd;&#xa;expression:=$geometry,&#xd;&#xa;group_by:=&quot;group&quot;,&#xd;&#xa;filter:= &quot;group&quot; is not NULL)&#xd;&#xa;)&#xd;&#xa;,0.1)) > 0, 0)&#xd;&#xa;&#xd;&#xa;" fontItalic="0" multilineHeight="1" blendMode="0" fontSizeUnit="Point" legendString="Aa" allowHtml="0" fontFamily="Arial" fontWeight="50" fontSize="10" fontLetterSpacing="0" isExpression="1" fontWordSpacing="0" textOrientation="horizontal" fontStrikeout="0" namedStyle="Regular" textColor="50,50,50,255" previewBkgrdColor="255,255,255,255" capitalization="0" fontKerning="1" fontUnderline="0" textOpacity="1" useSubstitutions="0" fontSizeMapUnitScale="3x:0,0,0,0,0,0">
        <families/>
        <text-buffer bufferSizeUnits="MM" bufferColor="250,250,250,255" bufferBlendMode="0" bufferDraw="0" bufferSizeMapUnitScale="3x:0,0,0,0,0,0" bufferNoFill="1" bufferJoinStyle="128" bufferSize="1" bufferOpacity="1"/>
        <text-mask maskEnabled="0" maskOpacity="1" maskType="0" maskedSymbolLayers="" maskSizeUnits="MM" maskSize="0" maskSizeMapUnitScale="3x:0,0,0,0,0,0" maskJoinStyle="128"/>
        <background shapeOffsetY="0" shapeBorderColor="128,128,128,255" shapeSizeUnit="Point" shapeOffsetMapUnitScale="3x:0,0,0,0,0,0" shapeOffsetUnit="Point" shapeSizeY="0" shapeRadiiY="0" shapeSVGFile="" shapeBorderWidth="0" shapeBorderWidthMapUnitScale="3x:0,0,0,0,0,0" shapeRotation="0" shapeDraw="0" shapeRadiiX="0" shapeRadiiMapUnitScale="3x:0,0,0,0,0,0" shapeRotationType="0" shapeOpacity="1" shapeRadiiUnit="Point" shapeOffsetX="0" shapeBlendMode="0" shapeSizeX="0" shapeJoinStyle="64" shapeSizeType="0" shapeBorderWidthUnit="Point" shapeType="0" shapeSizeMapUnitScale="3x:0,0,0,0,0,0" shapeFillColor="255,255,255,255">
          <symbol type="marker" clip_to_extent="1" force_rhr="0" name="markerSymbol" alpha="1">
            <data_defined_properties>
              <Option type="Map">
                <Option type="QString" value="" name="name"/>
                <Option name="properties"/>
                <Option type="QString" value="collection" name="type"/>
              </Option>
            </data_defined_properties>
            <layer class="SimpleMarker" enabled="1" pass="0" locked="0">
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
              <prop k="angle" v="0"/>
              <prop k="cap_style" v="square"/>
              <prop k="color" v="125,139,143,255"/>
              <prop k="horizontal_anchor_point" v="1"/>
              <prop k="joinstyle" v="bevel"/>
              <prop k="name" v="circle"/>
              <prop k="offset" v="0,0"/>
              <prop k="offset_map_unit_scale" v="3x:0,0,0,0,0,0"/>
              <prop k="offset_unit" v="MM"/>
              <prop k="outline_color" v="35,35,35,255"/>
              <prop k="outline_style" v="solid"/>
              <prop k="outline_width" v="0"/>
              <prop k="outline_width_map_unit_scale" v="3x:0,0,0,0,0,0"/>
              <prop k="outline_width_unit" v="MM"/>
              <prop k="scale_method" v="diameter"/>
              <prop k="size" v="2"/>
              <prop k="size_map_unit_scale" v="3x:0,0,0,0,0,0"/>
              <prop k="size_unit" v="MM"/>
              <prop k="vertical_anchor_point" v="1"/>
              <data_defined_properties>
                <Option type="Map">
                  <Option type="QString" value="" name="name"/>
                  <Option name="properties"/>
                  <Option type="QString" value="collection" name="type"/>
                </Option>
              </data_defined_properties>
            </layer>
          </symbol>
          <symbol type="fill" clip_to_extent="1" force_rhr="0" name="fillSymbol" alpha="1">
            <data_defined_properties>
              <Option type="Map">
                <Option type="QString" value="" name="name"/>
                <Option name="properties"/>
                <Option type="QString" value="collection" name="type"/>
              </Option>
            </data_defined_properties>
            <layer class="SimpleFill" enabled="1" pass="0" locked="0">
              <Option type="Map">
                <Option type="QString" value="3x:0,0,0,0,0,0" name="border_width_map_unit_scale"/>
                <Option type="QString" value="255,255,255,255" name="color"/>
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
              <prop k="border_width_map_unit_scale" v="3x:0,0,0,0,0,0"/>
              <prop k="color" v="255,255,255,255"/>
              <prop k="joinstyle" v="bevel"/>
              <prop k="offset" v="0,0"/>
              <prop k="offset_map_unit_scale" v="3x:0,0,0,0,0,0"/>
              <prop k="offset_unit" v="MM"/>
              <prop k="outline_color" v="128,128,128,255"/>
              <prop k="outline_style" v="no"/>
              <prop k="outline_width" v="0"/>
              <prop k="outline_width_unit" v="Point"/>
              <prop k="style" v="solid"/>
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
        <shadow shadowOffsetAngle="135" shadowRadiusUnit="MM" shadowRadius="1.5" shadowRadiusMapUnitScale="3x:0,0,0,0,0,0" shadowBlendMode="6" shadowOffsetUnit="MM" shadowOffsetMapUnitScale="3x:0,0,0,0,0,0" shadowRadiusAlphaOnly="0" shadowOffsetDist="1" shadowScale="100" shadowUnder="0" shadowDraw="0" shadowOffsetGlobal="1" shadowOpacity="0.69999999999999996" shadowColor="0,0,0,255"/>
        <dd_properties>
          <Option type="Map">
            <Option type="QString" value="" name="name"/>
            <Option name="properties"/>
            <Option type="QString" value="collection" name="type"/>
          </Option>
        </dd_properties>
        <substitutions/>
      </text-style>
      <text-format leftDirectionSymbol="&lt;" reverseDirectionSymbol="0" placeDirectionSymbol="0" rightDirectionSymbol=">" wrapChar="" autoWrapLength="0" useMaxLineLengthForAutoWrap="1" multilineAlign="3" formatNumbers="0" addDirectionSymbol="0" plussign="0" decimals="3"/>
      <placement centroidWhole="0" fitInPolygonOnly="0" placementFlags="10" rotationAngle="0" offsetType="0" overrunDistanceMapUnitScale="3x:0,0,0,0,0,0" polygonPlacementFlags="2" predefinedPositionOrder="TR,TL,BR,BL,R,L,TSR,BSR" quadOffset="8" lineAnchorClipping="0" overrunDistance="0" xOffset="0" placement="1" preserveRotation="1" offsetUnits="MM" labelOffsetMapUnitScale="3x:0,0,0,0,0,0" rotationUnit="AngleDegrees" lineAnchorType="0" layerType="PolygonGeometry" distMapUnitScale="3x:0,0,0,0,0,0" geometryGeneratorEnabled="0" dist="0" maxCurvedCharAngleIn="22" repeatDistanceMapUnitScale="3x:0,0,0,0,0,0" distUnits="MM" lineAnchorPercent="0.5" yOffset="0" centroidInside="0" maxCurvedCharAngleOut="-25" repeatDistance="0" geometryGenerator="collect( &#xd;&#xa;expression:=$geometry,&#xd;&#xa;group_by:=&quot;Group&quot;,&#xd;&#xa;filter:=  &quot;Group&quot;  is not NULL)&#xd;&#xa;" priority="5" repeatDistanceUnits="MM" overrunDistanceUnit="MM" geometryGeneratorType="PointGeometry"/>
      <rendering drawLabels="1" mergeLines="0" scaleVisibility="0" fontMaxPixelSize="10000" zIndex="0" unplacedVisibility="0" fontMinPixelSize="3" obstacle="1" displayAll="1" obstacleFactor="1" minFeatureSize="0" maxNumLabels="5000" limitNumLabels="0" scaleMin="0" scaleMax="0" upsidedownLabels="0" labelPerPart="0" obstacleType="1" fontLimitPixelSize="0"/>
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
          <Option type="QString" value="&lt;symbol type=&quot;line&quot; clip_to_extent=&quot;1&quot; force_rhr=&quot;0&quot; name=&quot;symbol&quot; alpha=&quot;1&quot;>&lt;data_defined_properties>&lt;Option type=&quot;Map&quot;>&lt;Option type=&quot;QString&quot; value=&quot;&quot; name=&quot;name&quot;/>&lt;Option name=&quot;properties&quot;/>&lt;Option type=&quot;QString&quot; value=&quot;collection&quot; name=&quot;type&quot;/>&lt;/Option>&lt;/data_defined_properties>&lt;layer class=&quot;SimpleLine&quot; enabled=&quot;1&quot; pass=&quot;0&quot; locked=&quot;0&quot;>&lt;Option type=&quot;Map&quot;>&lt;Option type=&quot;QString&quot; value=&quot;0&quot; name=&quot;align_dash_pattern&quot;/>&lt;Option type=&quot;QString&quot; value=&quot;square&quot; name=&quot;capstyle&quot;/>&lt;Option type=&quot;QString&quot; value=&quot;5;2&quot; name=&quot;customdash&quot;/>&lt;Option type=&quot;QString&quot; value=&quot;3x:0,0,0,0,0,0&quot; name=&quot;customdash_map_unit_scale&quot;/>&lt;Option type=&quot;QString&quot; value=&quot;MM&quot; name=&quot;customdash_unit&quot;/>&lt;Option type=&quot;QString&quot; value=&quot;0&quot; name=&quot;dash_pattern_offset&quot;/>&lt;Option type=&quot;QString&quot; value=&quot;3x:0,0,0,0,0,0&quot; name=&quot;dash_pattern_offset_map_unit_scale&quot;/>&lt;Option type=&quot;QString&quot; value=&quot;MM&quot; name=&quot;dash_pattern_offset_unit&quot;/>&lt;Option type=&quot;QString&quot; value=&quot;0&quot; name=&quot;draw_inside_polygon&quot;/>&lt;Option type=&quot;QString&quot; value=&quot;bevel&quot; name=&quot;joinstyle&quot;/>&lt;Option type=&quot;QString&quot; value=&quot;60,60,60,255&quot; name=&quot;line_color&quot;/>&lt;Option type=&quot;QString&quot; value=&quot;solid&quot; name=&quot;line_style&quot;/>&lt;Option type=&quot;QString&quot; value=&quot;0.3&quot; name=&quot;line_width&quot;/>&lt;Option type=&quot;QString&quot; value=&quot;MM&quot; name=&quot;line_width_unit&quot;/>&lt;Option type=&quot;QString&quot; value=&quot;0&quot; name=&quot;offset&quot;/>&lt;Option type=&quot;QString&quot; value=&quot;3x:0,0,0,0,0,0&quot; name=&quot;offset_map_unit_scale&quot;/>&lt;Option type=&quot;QString&quot; value=&quot;MM&quot; name=&quot;offset_unit&quot;/>&lt;Option type=&quot;QString&quot; value=&quot;0&quot; name=&quot;ring_filter&quot;/>&lt;Option type=&quot;QString&quot; value=&quot;0&quot; name=&quot;trim_distance_end&quot;/>&lt;Option type=&quot;QString&quot; value=&quot;3x:0,0,0,0,0,0&quot; name=&quot;trim_distance_end_map_unit_scale&quot;/>&lt;Option type=&quot;QString&quot; value=&quot;MM&quot; name=&quot;trim_distance_end_unit&quot;/>&lt;Option type=&quot;QString&quot; value=&quot;0&quot; name=&quot;trim_distance_start&quot;/>&lt;Option type=&quot;QString&quot; value=&quot;3x:0,0,0,0,0,0&quot; name=&quot;trim_distance_start_map_unit_scale&quot;/>&lt;Option type=&quot;QString&quot; value=&quot;MM&quot; name=&quot;trim_distance_start_unit&quot;/>&lt;Option type=&quot;QString&quot; value=&quot;0&quot; name=&quot;tweak_dash_pattern_on_corners&quot;/>&lt;Option type=&quot;QString&quot; value=&quot;0&quot; name=&quot;use_custom_dash&quot;/>&lt;Option type=&quot;QString&quot; value=&quot;3x:0,0,0,0,0,0&quot; name=&quot;width_map_unit_scale&quot;/>&lt;/Option>&lt;prop k=&quot;align_dash_pattern&quot; v=&quot;0&quot;/>&lt;prop k=&quot;capstyle&quot; v=&quot;square&quot;/>&lt;prop k=&quot;customdash&quot; v=&quot;5;2&quot;/>&lt;prop k=&quot;customdash_map_unit_scale&quot; v=&quot;3x:0,0,0,0,0,0&quot;/>&lt;prop k=&quot;customdash_unit&quot; v=&quot;MM&quot;/>&lt;prop k=&quot;dash_pattern_offset&quot; v=&quot;0&quot;/>&lt;prop k=&quot;dash_pattern_offset_map_unit_scale&quot; v=&quot;3x:0,0,0,0,0,0&quot;/>&lt;prop k=&quot;dash_pattern_offset_unit&quot; v=&quot;MM&quot;/>&lt;prop k=&quot;draw_inside_polygon&quot; v=&quot;0&quot;/>&lt;prop k=&quot;joinstyle&quot; v=&quot;bevel&quot;/>&lt;prop k=&quot;line_color&quot; v=&quot;60,60,60,255&quot;/>&lt;prop k=&quot;line_style&quot; v=&quot;solid&quot;/>&lt;prop k=&quot;line_width&quot; v=&quot;0.3&quot;/>&lt;prop k=&quot;line_width_unit&quot; v=&quot;MM&quot;/>&lt;prop k=&quot;offset&quot; v=&quot;0&quot;/>&lt;prop k=&quot;offset_map_unit_scale&quot; v=&quot;3x:0,0,0,0,0,0&quot;/>&lt;prop k=&quot;offset_unit&quot; v=&quot;MM&quot;/>&lt;prop k=&quot;ring_filter&quot; v=&quot;0&quot;/>&lt;prop k=&quot;trim_distance_end&quot; v=&quot;0&quot;/>&lt;prop k=&quot;trim_distance_end_map_unit_scale&quot; v=&quot;3x:0,0,0,0,0,0&quot;/>&lt;prop k=&quot;trim_distance_end_unit&quot; v=&quot;MM&quot;/>&lt;prop k=&quot;trim_distance_start&quot; v=&quot;0&quot;/>&lt;prop k=&quot;trim_distance_start_map_unit_scale&quot; v=&quot;3x:0,0,0,0,0,0&quot;/>&lt;prop k=&quot;trim_distance_start_unit&quot; v=&quot;MM&quot;/>&lt;prop k=&quot;tweak_dash_pattern_on_corners&quot; v=&quot;0&quot;/>&lt;prop k=&quot;use_custom_dash&quot; v=&quot;0&quot;/>&lt;prop k=&quot;width_map_unit_scale&quot; v=&quot;3x:0,0,0,0,0,0&quot;/>&lt;data_defined_properties>&lt;Option type=&quot;Map&quot;>&lt;Option type=&quot;QString&quot; value=&quot;&quot; name=&quot;name&quot;/>&lt;Option name=&quot;properties&quot;/>&lt;Option type=&quot;QString&quot; value=&quot;collection&quot; name=&quot;type&quot;/>&lt;/Option>&lt;/data_defined_properties>&lt;/layer>&lt;/symbol>" name="lineSymbol"/>
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
  <blendMode>6</blendMode>
  <featureBlendMode>0</featureBlendMode>
  <layerOpacity>1</layerOpacity>
  <SingleCategoryDiagramRenderer diagramType="Histogram" attributeLegend="1">
    <DiagramCategory showAxis="1" minimumSize="0" opacity="1" scaleDependency="Area" spacing="5" penColor="#000000" sizeType="MM" penAlpha="255" sizeScale="3x:0,0,0,0,0,0" maxScaleDenominator="1e+08" enabled="0" diagramOrientation="Up" labelPlacementMethod="XHeight" lineSizeScale="3x:0,0,0,0,0,0" backgroundColor="#ffffff" height="15" backgroundAlpha="255" rotationOffset="270" lineSizeType="MM" minScaleDenominator="0" spacingUnitScale="3x:0,0,0,0,0,0" spacingUnit="MM" width="15" scaleBasedVisibility="0" direction="0" penWidth="0" barWidth="5">
      <fontProperties description="MS Shell Dlg 2,8.25,-1,5,50,0,0,0,0,0" style=""/>
      <attribute label="" colorOpacity="1" color="#000000" field=""/>
      <axisSymbol>
        <symbol type="line" clip_to_extent="1" force_rhr="0" name="" alpha="1">
          <data_defined_properties>
            <Option type="Map">
              <Option type="QString" value="" name="name"/>
              <Option name="properties"/>
              <Option type="QString" value="collection" name="type"/>
            </Option>
          </data_defined_properties>
          <layer class="SimpleLine" enabled="1" pass="0" locked="0">
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
            <prop k="align_dash_pattern" v="0"/>
            <prop k="capstyle" v="square"/>
            <prop k="customdash" v="5;2"/>
            <prop k="customdash_map_unit_scale" v="3x:0,0,0,0,0,0"/>
            <prop k="customdash_unit" v="MM"/>
            <prop k="dash_pattern_offset" v="0"/>
            <prop k="dash_pattern_offset_map_unit_scale" v="3x:0,0,0,0,0,0"/>
            <prop k="dash_pattern_offset_unit" v="MM"/>
            <prop k="draw_inside_polygon" v="0"/>
            <prop k="joinstyle" v="bevel"/>
            <prop k="line_color" v="35,35,35,255"/>
            <prop k="line_style" v="solid"/>
            <prop k="line_width" v="0.26"/>
            <prop k="line_width_unit" v="MM"/>
            <prop k="offset" v="0"/>
            <prop k="offset_map_unit_scale" v="3x:0,0,0,0,0,0"/>
            <prop k="offset_unit" v="MM"/>
            <prop k="ring_filter" v="0"/>
            <prop k="trim_distance_end" v="0"/>
            <prop k="trim_distance_end_map_unit_scale" v="3x:0,0,0,0,0,0"/>
            <prop k="trim_distance_end_unit" v="MM"/>
            <prop k="trim_distance_start" v="0"/>
            <prop k="trim_distance_start_map_unit_scale" v="3x:0,0,0,0,0,0"/>
            <prop k="trim_distance_start_unit" v="MM"/>
            <prop k="tweak_dash_pattern_on_corners" v="0"/>
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
      </axisSymbol>
    </DiagramCategory>
  </SingleCategoryDiagramRenderer>
  <DiagramLayerSettings linePlacementFlags="18" priority="0" dist="0" zIndex="0" placement="1" obstacle="0" showAll="1">
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
  <legend type="default-vector" showLabelLegend="0"/>
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
  </fieldConfiguration>
  <aliases>
    <alias index="0" field="layer" name="Original layer"/>
    <alias index="1" field="Group" name=""/>
    <alias index="2" field="Entity" name=""/>
    <alias index="3" field="Period" name=""/>
    <alias index="4" field="Period_no" name=""/>
    <alias index="5" field="SubPeriod" name=""/>
    <alias index="6" field="SubPer_no" name=""/>
    <alias index="7" field="Phase" name=""/>
    <alias index="8" field="Notes" name=""/>
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
  </defaults>
  <constraints>
    <constraint notnull_strength="0" unique_strength="0" constraints="0" field="layer" exp_strength="0"/>
    <constraint notnull_strength="0" unique_strength="0" constraints="0" field="Group" exp_strength="0"/>
    <constraint notnull_strength="0" unique_strength="0" constraints="0" field="Entity" exp_strength="0"/>
    <constraint notnull_strength="0" unique_strength="0" constraints="0" field="Period" exp_strength="0"/>
    <constraint notnull_strength="0" unique_strength="0" constraints="0" field="Period_no" exp_strength="0"/>
    <constraint notnull_strength="0" unique_strength="0" constraints="0" field="SubPeriod" exp_strength="0"/>
    <constraint notnull_strength="0" unique_strength="0" constraints="0" field="SubPer_no" exp_strength="0"/>
    <constraint notnull_strength="0" unique_strength="0" constraints="0" field="Phase" exp_strength="0"/>
    <constraint notnull_strength="0" unique_strength="0" constraints="0" field="Notes" exp_strength="0"/>
  </constraints>
  <constraintExpressions>
    <constraint desc="" exp="" field="layer"/>
    <constraint desc="" exp="" field="Group"/>
    <constraint desc="" exp="" field="Entity"/>
    <constraint desc="" exp="" field="Period"/>
    <constraint desc="" exp="" field="Period_no"/>
    <constraint desc="" exp="" field="SubPeriod"/>
    <constraint desc="" exp="" field="SubPer_no"/>
    <constraint desc="" exp="" field="Phase"/>
    <constraint desc="" exp="" field="Notes"/>
  </constraintExpressions>
  <expressionfields/>
  <attributeactions>
    <defaultAction value="{00000000-0000-0000-0000-000000000000}" key="Canvas"/>
  </attributeactions>
  <attributetableconfig sortExpression="&quot;Period_no&quot;" sortOrder="1" actionWidgetStyle="dropDown">
    <columns>
      <column type="field" width="-1" hidden="0" name="layer"/>
      <column type="field" width="-1" hidden="0" name="Group"/>
      <column type="field" width="100" hidden="0" name="Entity"/>
      <column type="field" width="-1" hidden="0" name="Period"/>
      <column type="field" width="-1" hidden="0" name="Period_no"/>
      <column type="field" width="-1" hidden="0" name="SubPeriod"/>
      <column type="field" width="100" hidden="0" name="SubPer_no"/>
      <column type="field" width="134" hidden="0" name="Phase"/>
      <column type="field" width="-1" hidden="0" name="Notes"/>
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
    <attributeEditorField index="0" showLabel="1" name="layer"/>
    <attributeEditorContainer columnCount="1" groupBox="1" visibilityExpressionEnabled="0" visibilityExpression="" showLabel="1" name="Group">
      <attributeEditorField index="1" showLabel="1" name="Group"/>
    </attributeEditorContainer>
    <attributeEditorContainer columnCount="1" groupBox="1" visibilityExpressionEnabled="0" visibilityExpression="" showLabel="1" name="Entity">
      <attributeEditorField index="2" showLabel="1" name="Entity"/>
    </attributeEditorContainer>
    <attributeEditorContainer columnCount="2" groupBox="1" visibilityExpressionEnabled="0" visibilityExpression="" showLabel="1" name="Period">
      <attributeEditorField index="3" showLabel="1" name="Period"/>
      <attributeEditorField index="4" showLabel="1" name="Period_no"/>
      <attributeEditorField index="5" showLabel="1" name="SubPeriod"/>
      <attributeEditorField index="6" showLabel="1" name="SubPer_no"/>
    </attributeEditorContainer>
    <attributeEditorContainer columnCount="1" groupBox="1" visibilityExpressionEnabled="0" visibilityExpression="" showLabel="1" name="Phase">
      <attributeEditorField index="7" showLabel="1" name="Phase"/>
    </attributeEditorContainer>
    <attributeEditorField index="8" showLabel="1" name="Notes"/>
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
