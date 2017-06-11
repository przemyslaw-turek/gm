<?xml version="1.0" encoding="utf-8"?>
<!DOCTYPE eagle SYSTEM "eagle.dtd">
<eagle version="7.7.0">
<drawing>
<settings>
<setting alwaysvectorfont="no"/>
<setting verticaltext="up"/>
</settings>
<grid distance="0.1" unitdist="inch" unit="inch" style="lines" multiple="1" display="no" altdistance="0.01" altunitdist="inch" altunit="inch"/>
<layers>
<layer number="1" name="Top" color="4" fill="1" visible="no" active="no"/>
<layer number="16" name="Bottom" color="1" fill="1" visible="no" active="no"/>
<layer number="17" name="Pads" color="2" fill="1" visible="no" active="no"/>
<layer number="18" name="Vias" color="2" fill="1" visible="no" active="no"/>
<layer number="19" name="Unrouted" color="6" fill="1" visible="no" active="no"/>
<layer number="20" name="Dimension" color="15" fill="1" visible="no" active="no"/>
<layer number="21" name="tPlace" color="7" fill="1" visible="no" active="no"/>
<layer number="22" name="bPlace" color="7" fill="1" visible="no" active="no"/>
<layer number="23" name="tOrigins" color="15" fill="1" visible="no" active="no"/>
<layer number="24" name="bOrigins" color="15" fill="1" visible="no" active="no"/>
<layer number="25" name="tNames" color="7" fill="1" visible="no" active="no"/>
<layer number="26" name="bNames" color="7" fill="1" visible="no" active="no"/>
<layer number="27" name="tValues" color="7" fill="1" visible="no" active="no"/>
<layer number="28" name="bValues" color="7" fill="1" visible="no" active="no"/>
<layer number="29" name="tStop" color="7" fill="3" visible="no" active="no"/>
<layer number="30" name="bStop" color="7" fill="6" visible="no" active="no"/>
<layer number="31" name="tCream" color="7" fill="4" visible="no" active="no"/>
<layer number="32" name="bCream" color="7" fill="5" visible="no" active="no"/>
<layer number="33" name="tFinish" color="6" fill="3" visible="no" active="no"/>
<layer number="34" name="bFinish" color="6" fill="6" visible="no" active="no"/>
<layer number="35" name="tGlue" color="7" fill="4" visible="no" active="no"/>
<layer number="36" name="bGlue" color="7" fill="5" visible="no" active="no"/>
<layer number="37" name="tTest" color="7" fill="1" visible="no" active="no"/>
<layer number="38" name="bTest" color="7" fill="1" visible="no" active="no"/>
<layer number="39" name="tKeepout" color="4" fill="11" visible="no" active="no"/>
<layer number="40" name="bKeepout" color="1" fill="11" visible="no" active="no"/>
<layer number="41" name="tRestrict" color="4" fill="10" visible="no" active="no"/>
<layer number="42" name="bRestrict" color="1" fill="10" visible="no" active="no"/>
<layer number="43" name="vRestrict" color="2" fill="10" visible="no" active="no"/>
<layer number="44" name="Drills" color="7" fill="1" visible="no" active="no"/>
<layer number="45" name="Holes" color="7" fill="1" visible="no" active="no"/>
<layer number="46" name="Milling" color="3" fill="1" visible="no" active="no"/>
<layer number="47" name="Measures" color="7" fill="1" visible="no" active="no"/>
<layer number="48" name="Document" color="7" fill="1" visible="no" active="no"/>
<layer number="49" name="Reference" color="7" fill="1" visible="no" active="no"/>
<layer number="51" name="tDocu" color="7" fill="1" visible="no" active="no"/>
<layer number="52" name="bDocu" color="7" fill="1" visible="no" active="no"/>
<layer number="90" name="Modules" color="5" fill="1" visible="yes" active="yes"/>
<layer number="91" name="Nets" color="2" fill="1" visible="yes" active="yes"/>
<layer number="92" name="Busses" color="1" fill="1" visible="yes" active="yes"/>
<layer number="93" name="Pins" color="2" fill="1" visible="no" active="yes"/>
<layer number="94" name="Symbols" color="4" fill="1" visible="yes" active="yes"/>
<layer number="95" name="Names" color="7" fill="1" visible="yes" active="yes"/>
<layer number="96" name="Values" color="7" fill="1" visible="yes" active="yes"/>
<layer number="97" name="Info" color="7" fill="1" visible="yes" active="yes"/>
<layer number="98" name="Guide" color="6" fill="1" visible="yes" active="yes"/>
</layers>
<schematic xreflabel="%F%N/%S.%C%R" xrefpart="/%S.%C%R">
<libraries>
<library name="esp8266">
<packages>
<package name="ESP8266_NODEMCV2">
<pad name="3,3V4" x="17.78" y="13.97" drill="0.8"/>
<pad name="GND5" x="15.24" y="13.97" drill="0.8"/>
<pad name="D10" x="12.7" y="13.97" drill="0.8"/>
<pad name="D9" x="10.16" y="13.97" drill="0.8"/>
<pad name="D8" x="7.62" y="13.97" drill="0.8"/>
<pad name="D7" x="5.08" y="13.97" drill="0.8"/>
<pad name="D6" x="2.54" y="13.97" drill="0.8"/>
<pad name="D5" x="0" y="13.97" drill="0.8"/>
<pad name="GND4" x="-2.54" y="13.97" drill="0.8"/>
<pad name="3,3V3" x="-5.08" y="13.97" drill="0.8"/>
<pad name="D4" x="-7.62" y="13.97" drill="0.8"/>
<pad name="D3" x="-10.16" y="13.97" drill="0.8"/>
<pad name="D2" x="-12.7" y="13.97" drill="0.8"/>
<pad name="D1" x="-15.24" y="13.97" drill="0.8"/>
<pad name="D0" x="-17.78" y="13.97" drill="0.8"/>
<pad name="RSV1" x="-15.24" y="-13.97" drill="0.8"/>
<pad name="RSV2" x="-12.7" y="-13.97" drill="0.8"/>
<pad name="RSV3" x="-10.16" y="-13.97" drill="0.8"/>
<pad name="RSV4" x="-7.62" y="-13.97" drill="0.8"/>
<pad name="RSV5" x="-5.08" y="-13.97" drill="0.8"/>
<pad name="RSV6" x="-2.54" y="-13.97" drill="0.8"/>
<pad name="GND" x="0" y="-13.97" drill="0.8"/>
<pad name="3,3V1" x="2.54" y="-13.97" drill="0.8"/>
<pad name="3,3V2" x="7.62" y="-13.97" drill="0.8"/>
<pad name="GND2" x="5.08" y="-13.97" drill="0.8"/>
<pad name="EN" x="10.16" y="-13.97" drill="0.8"/>
<pad name="RST" x="12.7" y="-13.97" drill="0.8"/>
<pad name="GDN3" x="15.24" y="-13.97" drill="0.8"/>
<pad name="5V" x="17.78" y="-13.97" drill="0.8"/>
<wire x1="30" y1="16" x2="30" y2="-16" width="0.127" layer="21"/>
<wire x1="30" y1="-16" x2="-30" y2="-16" width="0.127" layer="21"/>
<wire x1="-30" y1="-16" x2="-30" y2="16" width="0.127" layer="21"/>
<wire x1="-30" y1="16" x2="30" y2="16" width="0.127" layer="21"/>
<text x="-2.54" y="2.54" size="1.27" layer="25">&gt;NAME</text>
<pad name="A0" x="-17.78" y="-13.97" drill="0.8" shape="square"/>
</package>
</packages>
<symbols>
<symbol name="ESP8266_NODEMCUV2">
<wire x1="-10.16" y1="20.32" x2="-10.16" y2="-20.32" width="0.254" layer="94"/>
<wire x1="-10.16" y1="-20.32" x2="10.16" y2="-20.32" width="0.254" layer="94"/>
<wire x1="10.16" y1="-20.32" x2="10.16" y2="20.32" width="0.254" layer="94"/>
<wire x1="10.16" y1="20.32" x2="-10.16" y2="20.32" width="0.254" layer="94"/>
<text x="-3.048" y="21.59" size="1.27" layer="95">&gt;NAME</text>
<pin name="P$1" x="-15.24" y="17.78" visible="pad" length="middle"/>
<pin name="P$2" x="-15.24" y="15.24" visible="pad" length="middle"/>
<pin name="P$3" x="-15.24" y="12.7" visible="pad" length="middle"/>
<pin name="P$4" x="-15.24" y="10.16" visible="pad" length="middle"/>
<pin name="P$5" x="-15.24" y="7.62" visible="pad" length="middle"/>
<pin name="P$6" x="-15.24" y="5.08" visible="pad" length="middle"/>
<pin name="P$7" x="-15.24" y="2.54" visible="pad" length="middle"/>
<pin name="P$8" x="-15.24" y="0" visible="pad" length="middle"/>
<pin name="P$9" x="-15.24" y="-2.54" visible="pad" length="middle"/>
<pin name="P$10" x="-15.24" y="-5.08" visible="pad" length="middle"/>
<pin name="P$11" x="-15.24" y="-7.62" visible="pad" length="middle"/>
<pin name="P$12" x="-15.24" y="-10.16" visible="pad" length="middle"/>
<pin name="P$13" x="-15.24" y="-12.7" visible="pad" length="middle"/>
<pin name="P$14" x="-15.24" y="-15.24" visible="pad" length="middle"/>
<pin name="P$15" x="-15.24" y="-17.78" visible="pad" length="middle"/>
<pin name="P$16" x="15.24" y="-17.78" visible="pad" length="middle" rot="R180"/>
<pin name="P$17" x="15.24" y="-15.24" visible="pad" length="middle" rot="R180"/>
<pin name="P$18" x="15.24" y="-12.7" visible="pad" length="middle" rot="R180"/>
<pin name="P$19" x="15.24" y="-10.16" visible="pad" length="middle" rot="R180"/>
<pin name="P$20" x="15.24" y="-7.62" visible="pad" length="middle" rot="R180"/>
<pin name="P$21" x="15.24" y="-5.08" visible="pad" length="middle" rot="R180"/>
<pin name="P$22" x="15.24" y="-2.54" visible="pad" length="middle" rot="R180"/>
<pin name="P$23" x="15.24" y="0" visible="pad" length="middle" rot="R180"/>
<pin name="P$24" x="15.24" y="2.54" visible="pad" length="middle" rot="R180"/>
<pin name="P$25" x="15.24" y="5.08" visible="pad" length="middle" rot="R180"/>
<pin name="P$26" x="15.24" y="7.62" visible="pad" length="middle" rot="R180"/>
<pin name="P$27" x="15.24" y="10.16" visible="pad" length="middle" rot="R180"/>
<pin name="P$28" x="15.24" y="12.7" visible="pad" length="middle" rot="R180"/>
<pin name="P$29" x="15.24" y="15.24" visible="pad" length="middle" rot="R180"/>
<pin name="P$30" x="15.24" y="17.78" visible="pad" length="middle" rot="R180"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="ESP8266_NODEMCUV2">
<gates>
<gate name="G$1" symbol="ESP8266_NODEMCUV2" x="0" y="0"/>
</gates>
<devices>
<device name="" package="ESP8266_NODEMCV2">
<connects>
<connect gate="G$1" pin="P$1" pad="A0"/>
<connect gate="G$1" pin="P$10" pad="GND2"/>
<connect gate="G$1" pin="P$11" pad="3,3V2"/>
<connect gate="G$1" pin="P$12" pad="EN"/>
<connect gate="G$1" pin="P$13" pad="RST"/>
<connect gate="G$1" pin="P$14" pad="GDN3"/>
<connect gate="G$1" pin="P$15" pad="5V"/>
<connect gate="G$1" pin="P$16" pad="3,3V4"/>
<connect gate="G$1" pin="P$17" pad="GND5"/>
<connect gate="G$1" pin="P$18" pad="D10"/>
<connect gate="G$1" pin="P$19" pad="D9"/>
<connect gate="G$1" pin="P$2" pad="RSV1"/>
<connect gate="G$1" pin="P$20" pad="D8"/>
<connect gate="G$1" pin="P$21" pad="D7"/>
<connect gate="G$1" pin="P$22" pad="D6"/>
<connect gate="G$1" pin="P$23" pad="D5"/>
<connect gate="G$1" pin="P$24" pad="GND4"/>
<connect gate="G$1" pin="P$25" pad="3,3V3"/>
<connect gate="G$1" pin="P$26" pad="D4"/>
<connect gate="G$1" pin="P$27" pad="D3"/>
<connect gate="G$1" pin="P$28" pad="D2"/>
<connect gate="G$1" pin="P$29" pad="D1"/>
<connect gate="G$1" pin="P$3" pad="RSV2"/>
<connect gate="G$1" pin="P$30" pad="D0"/>
<connect gate="G$1" pin="P$4" pad="RSV3"/>
<connect gate="G$1" pin="P$5" pad="RSV4"/>
<connect gate="G$1" pin="P$6" pad="RSV5"/>
<connect gate="G$1" pin="P$7" pad="RSV6"/>
<connect gate="G$1" pin="P$8" pad="GND"/>
<connect gate="G$1" pin="P$9" pad="3,3V1"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="Screw_connector">
<packages>
<package name="3,5MM_3PIN">
<text x="-3.1496" y="3.754" size="1.27" layer="25">&gt;NAME</text>
<pad name="1" x="-3.5" y="2" drill="1.2" diameter="1.9304"/>
<pad name="2" x="0" y="2" drill="1.2" diameter="1.9304"/>
<pad name="3" x="3.5" y="2" drill="1.2" diameter="1.9304"/>
<circle x="-3.5" y="2" radius="0.9013875" width="0.0508" layer="25"/>
<circle x="0" y="2" radius="0.9013875" width="0.0508" layer="25"/>
<circle x="3.5" y="2" radius="0.9013875" width="0.0508" layer="25"/>
<wire x1="-2.85" y1="2.625" x2="-4.125" y2="1.35" width="0.0508" layer="25"/>
<wire x1="0.65" y1="2.625" x2="-0.625" y2="1.35" width="0.0508" layer="25"/>
<wire x1="4.125" y1="2.625" x2="2.875" y2="1.375" width="0.0508" layer="25"/>
<wire x1="5.25" y1="-1.5" x2="5.25" y2="0.5" width="0.127" layer="21"/>
<wire x1="5.25" y1="0.5" x2="5.25" y2="3.5" width="0.127" layer="21"/>
<wire x1="5.25" y1="3.5" x2="5.25" y2="5.5" width="0.127" layer="21"/>
<wire x1="5.25" y1="5.5" x2="-5.25" y2="5.5" width="0.127" layer="21"/>
<wire x1="-5.25" y1="5.5" x2="-5.25" y2="3.5" width="0.127" layer="21"/>
<wire x1="-5.25" y1="3.5" x2="-5.25" y2="0.5" width="0.127" layer="21"/>
<wire x1="-5.25" y1="0.5" x2="-5.25" y2="-1.5" width="0.127" layer="21"/>
<wire x1="-5.25" y1="-1.5" x2="5.25" y2="-1.5" width="0.127" layer="21"/>
<wire x1="-5.25" y1="3.5" x2="5.25" y2="3.5" width="0.127" layer="21"/>
<wire x1="-5.25" y1="0.5" x2="5.25" y2="0.5" width="0.127" layer="21"/>
</package>
</packages>
<symbols>
<symbol name="3,5MM_3PIN">
<pin name="P$1" x="-2.54" y="-7.62" visible="pad" length="middle" swaplevel="1" rot="R90"/>
<pin name="P$2" x="0" y="-7.62" visible="pad" length="middle" swaplevel="1" rot="R90"/>
<pin name="P$3" x="2.54" y="-7.62" visible="pad" length="middle" swaplevel="1" rot="R90"/>
<text x="-3.556" y="0.762" size="1.27" layer="95">&gt;NAME</text>
</symbol>
</symbols>
<devicesets>
<deviceset name="3,5MM_3PIN" prefix="IC">
<gates>
<gate name="G$1" symbol="3,5MM_3PIN" x="0" y="0" swaplevel="1"/>
</gates>
<devices>
<device name="" package="3,5MM_3PIN">
<connects>
<connect gate="G$1" pin="P$1" pad="1"/>
<connect gate="G$1" pin="P$2" pad="2"/>
<connect gate="G$1" pin="P$3" pad="3"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="level_shifter_MOD12">
<packages>
<package name="LVL_SHIFTER_4CH">
<pad name="HV1" x="-6.35" y="5.08" drill="1"/>
<pad name="HV2" x="-3.81" y="5.08" drill="1"/>
<pad name="HV" x="-1.27" y="5.08" drill="1"/>
<pad name="GND1" x="1.27" y="5.08" drill="1"/>
<pad name="HV3" x="3.81" y="5.08" drill="1"/>
<pad name="HV4" x="6.35" y="5.08" drill="1"/>
<pad name="LV1" x="-6.35" y="-5.08" drill="1"/>
<pad name="LV2" x="-3.81" y="-5.08" drill="1"/>
<pad name="LV" x="-1.27" y="-5.08" drill="1"/>
<pad name="GND2" x="1.27" y="-5.08" drill="1"/>
<pad name="LV3" x="3.81" y="-5.08" drill="1"/>
<pad name="LV4" x="6.35" y="-5.08" drill="1"/>
<wire x1="-7.235" y1="5.965" x2="7.235" y2="5.965" width="0.127" layer="21"/>
<wire x1="7.235" y1="5.965" x2="7.235" y2="-5.965" width="0.127" layer="21"/>
<wire x1="7.235" y1="-5.965" x2="-7.235" y2="-5.965" width="0.127" layer="21"/>
<wire x1="-7.235" y1="-5.965" x2="-7.235" y2="5.965" width="0.127" layer="21"/>
<text x="-2.54" y="1.27" size="1.27" layer="25">&gt;NAME</text>
</package>
</packages>
<symbols>
<symbol name="LVL_SHIFTER_4CH">
<pin name="HV1" x="-10.16" y="-2.54" visible="pad" length="middle"/>
<pin name="HV2" x="-10.16" y="-5.08" visible="pad" length="middle"/>
<pin name="HV3" x="-10.16" y="-7.62" visible="pad" length="middle"/>
<pin name="HV4" x="-10.16" y="-10.16" visible="pad" length="middle"/>
<pin name="LV1" x="10.16" y="-2.54" visible="pad" length="middle" rot="R180"/>
<pin name="LV2" x="10.16" y="-5.08" visible="pad" length="middle" rot="R180"/>
<pin name="LV3" x="10.16" y="-7.62" visible="pad" length="middle" rot="R180"/>
<pin name="LV4" x="10.16" y="-10.16" visible="pad" length="middle" rot="R180"/>
<pin name="HV" x="-10.16" y="7.62" visible="pad" length="middle"/>
<pin name="LV" x="10.16" y="7.62" visible="pad" length="middle" rot="R180"/>
<pin name="GND1" x="-10.16" y="5.08" visible="pad" length="middle"/>
<pin name="GND2" x="10.16" y="5.08" visible="pad" length="middle" rot="R180"/>
<wire x1="-5.08" y1="10.16" x2="5.08" y2="10.16" width="0.254" layer="94"/>
<wire x1="5.08" y1="10.16" x2="5.08" y2="-12.7" width="0.254" layer="94"/>
<wire x1="5.08" y1="-12.7" x2="-5.08" y2="-12.7" width="0.254" layer="94"/>
<wire x1="-5.08" y1="-12.7" x2="-5.08" y2="10.16" width="0.254" layer="94"/>
<text x="-2.54" y="2.54" size="1.27" layer="95">&gt;NAME</text>
</symbol>
</symbols>
<devicesets>
<deviceset name="LVL_SHIFTER_4CH">
<gates>
<gate name="G$1" symbol="LVL_SHIFTER_4CH" x="0" y="0"/>
</gates>
<devices>
<device name="" package="LVL_SHIFTER_4CH">
<connects>
<connect gate="G$1" pin="GND1" pad="GND1"/>
<connect gate="G$1" pin="GND2" pad="GND2"/>
<connect gate="G$1" pin="HV" pad="HV"/>
<connect gate="G$1" pin="HV1" pad="HV1"/>
<connect gate="G$1" pin="HV2" pad="HV2"/>
<connect gate="G$1" pin="HV3" pad="HV3"/>
<connect gate="G$1" pin="HV4" pad="HV4"/>
<connect gate="G$1" pin="LV" pad="LV"/>
<connect gate="G$1" pin="LV1" pad="LV1"/>
<connect gate="G$1" pin="LV2" pad="LV2"/>
<connect gate="G$1" pin="LV3" pad="LV3"/>
<connect gate="G$1" pin="LV4" pad="LV4"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
</libraries>
<attributes>
</attributes>
<variantdefs>
</variantdefs>
<classes>
<class number="0" name="default" width="0" drill="0">
</class>
</classes>
<parts>
<part name="ESP" library="esp8266" deviceset="ESP8266_NODEMCUV2" device=""/>
<part name="IC1" library="Screw_connector" deviceset="3,5MM_3PIN" device=""/>
<part name="IC2" library="Screw_connector" deviceset="3,5MM_3PIN" device=""/>
<part name="IC3" library="Screw_connector" deviceset="3,5MM_3PIN" device=""/>
<part name="IC4" library="Screw_connector" deviceset="3,5MM_3PIN" device=""/>
<part name="IC5" library="Screw_connector" deviceset="3,5MM_3PIN" device=""/>
<part name="IC6" library="Screw_connector" deviceset="3,5MM_3PIN" device=""/>
<part name="IC7" library="Screw_connector" deviceset="3,5MM_3PIN" device=""/>
<part name="LVL_SHFT" library="level_shifter_MOD12" deviceset="LVL_SHIFTER_4CH" device=""/>
</parts>
<sheets>
<sheet>
<plain>
<wire x1="35.56" y1="17.78" x2="40.64" y2="17.78" width="0.1524" layer="94" curve="-180"/>
</plain>
<instances>
<instance part="ESP" gate="G$1" x="38.1" y="38.1" smashed="yes" rot="R180">
<attribute name="NAME" x="39.37" y="36.322" size="1.27" layer="95" rot="R180"/>
</instance>
<instance part="IC1" gate="G$1" x="-55.88" y="7.62" rot="MR270"/>
<instance part="IC2" gate="G$1" x="-55.88" y="17.78" rot="MR270"/>
<instance part="IC3" gate="G$1" x="-55.88" y="27.94" rot="MR270"/>
<instance part="IC4" gate="G$1" x="-55.88" y="38.1" rot="MR270"/>
<instance part="IC5" gate="G$1" x="-7.62" y="-2.54" rot="MR180"/>
<instance part="IC6" gate="G$1" x="2.54" y="-2.54" rot="MR180"/>
<instance part="IC7" gate="G$1" x="12.7" y="-2.54" rot="MR180"/>
<instance part="LVL_SHFT" gate="G$1" x="-15.24" y="33.02" smashed="yes">
<attribute name="NAME" x="-19.304" y="34.798" size="1.27" layer="95"/>
</instance>
</instances>
<busses>
</busses>
<nets>
<net name="5V" class="0">
<segment>
<pinref part="IC1" gate="G$1" pin="P$1"/>
<wire x1="-48.26" y1="10.16" x2="-43.18" y2="10.16" width="0.1524" layer="91"/>
<wire x1="-43.18" y1="10.16" x2="-43.18" y2="20.32" width="0.1524" layer="91"/>
<pinref part="IC2" gate="G$1" pin="P$1"/>
<wire x1="-43.18" y1="20.32" x2="-48.26" y2="20.32" width="0.1524" layer="91"/>
<wire x1="-43.18" y1="20.32" x2="-43.18" y2="30.48" width="0.1524" layer="91"/>
<junction x="-43.18" y="20.32"/>
<pinref part="IC3" gate="G$1" pin="P$1"/>
<wire x1="-43.18" y1="30.48" x2="-48.26" y2="30.48" width="0.1524" layer="91"/>
<pinref part="IC4" gate="G$1" pin="P$1"/>
<wire x1="-48.26" y1="40.64" x2="-43.18" y2="40.64" width="0.1524" layer="91"/>
<wire x1="-43.18" y1="40.64" x2="-43.18" y2="30.48" width="0.1524" layer="91"/>
<junction x="-43.18" y="30.48"/>
<pinref part="LVL_SHFT" gate="G$1" pin="HV"/>
<wire x1="-43.18" y1="40.64" x2="-25.4" y2="40.64" width="0.1524" layer="91"/>
<junction x="-43.18" y="40.64"/>
<wire x1="-43.18" y1="40.64" x2="-43.18" y2="43.18" width="0.1524" layer="91"/>
<label x="-43.18" y="43.18" size="1.016" layer="95" rot="R90" xref="yes"/>
</segment>
<segment>
<pinref part="ESP" gate="G$1" pin="P$15"/>
<wire x1="53.34" y1="55.88" x2="58.42" y2="55.88" width="0.1524" layer="91"/>
<label x="58.42" y="55.88" size="1.016" layer="95" xref="yes"/>
</segment>
</net>
<net name="N$1" class="0">
<segment>
<pinref part="IC4" gate="G$1" pin="P$3"/>
<wire x1="-48.26" y1="35.56" x2="-30.48" y2="35.56" width="0.1524" layer="91"/>
<wire x1="-30.48" y1="35.56" x2="-30.48" y2="30.48" width="0.1524" layer="91"/>
<pinref part="LVL_SHFT" gate="G$1" pin="HV1"/>
<wire x1="-30.48" y1="30.48" x2="-25.4" y2="30.48" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$2" class="0">
<segment>
<pinref part="LVL_SHFT" gate="G$1" pin="HV2"/>
<wire x1="-25.4" y1="27.94" x2="-33.02" y2="27.94" width="0.1524" layer="91"/>
<wire x1="-33.02" y1="27.94" x2="-33.02" y2="25.4" width="0.1524" layer="91"/>
<pinref part="IC3" gate="G$1" pin="P$3"/>
<wire x1="-33.02" y1="25.4" x2="-48.26" y2="25.4" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$3" class="0">
<segment>
<pinref part="LVL_SHFT" gate="G$1" pin="HV3"/>
<wire x1="-25.4" y1="25.4" x2="-30.48" y2="25.4" width="0.1524" layer="91"/>
<wire x1="-30.48" y1="25.4" x2="-30.48" y2="15.24" width="0.1524" layer="91"/>
<pinref part="IC2" gate="G$1" pin="P$3"/>
<wire x1="-30.48" y1="15.24" x2="-48.26" y2="15.24" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$4" class="0">
<segment>
<pinref part="IC1" gate="G$1" pin="P$3"/>
<wire x1="-48.26" y1="5.08" x2="-27.94" y2="5.08" width="0.1524" layer="91"/>
<wire x1="-27.94" y1="5.08" x2="-27.94" y2="22.86" width="0.1524" layer="91"/>
<pinref part="LVL_SHFT" gate="G$1" pin="HV4"/>
<wire x1="-27.94" y1="22.86" x2="-25.4" y2="22.86" width="0.1524" layer="91"/>
</segment>
</net>
<net name="3.3V" class="0">
<segment>
<pinref part="IC5" gate="G$1" pin="P$1"/>
<wire x1="-10.16" y1="5.08" x2="-10.16" y2="17.78" width="0.1524" layer="91"/>
<wire x1="-10.16" y1="17.78" x2="0" y2="17.78" width="0.1524" layer="91"/>
<wire x1="0" y1="17.78" x2="10.16" y2="17.78" width="0.1524" layer="91"/>
<pinref part="IC6" gate="G$1" pin="P$1"/>
<wire x1="0" y1="5.08" x2="0" y2="17.78" width="0.1524" layer="91"/>
<junction x="0" y="17.78"/>
<pinref part="IC7" gate="G$1" pin="P$1"/>
<wire x1="10.16" y1="17.78" x2="10.16" y2="5.08" width="0.1524" layer="91"/>
<wire x1="0" y1="17.78" x2="0" y2="20.32" width="0.1524" layer="91"/>
<wire x1="0" y1="20.32" x2="2.54" y2="20.32" width="0.1524" layer="91"/>
<label x="2.54" y="20.32" size="1.016" layer="95" xref="yes"/>
</segment>
<segment>
<pinref part="ESP" gate="G$1" pin="P$9"/>
<wire x1="53.34" y1="40.64" x2="58.42" y2="40.64" width="0.1524" layer="91"/>
<label x="58.42" y="40.64" size="1.016" layer="95" xref="yes"/>
</segment>
</net>
<net name="N$12" class="0">
<segment>
<pinref part="ESP" gate="G$1" pin="P$28"/>
<wire x1="15.24" y1="25.4" x2="22.86" y2="25.4" width="0.1524" layer="91"/>
<pinref part="IC5" gate="G$1" pin="P$3"/>
<wire x1="-5.08" y1="5.08" x2="-5.08" y2="12.7" width="0.1524" layer="91"/>
<wire x1="-5.08" y1="12.7" x2="15.24" y2="12.7" width="0.1524" layer="91"/>
<wire x1="15.24" y1="25.4" x2="15.24" y2="12.7" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$15" class="0">
<segment>
<pinref part="ESP" gate="G$1" pin="P$29"/>
<wire x1="22.86" y1="22.86" x2="17.78" y2="22.86" width="0.1524" layer="91"/>
<wire x1="17.78" y1="22.86" x2="17.78" y2="10.16" width="0.1524" layer="91"/>
<pinref part="IC6" gate="G$1" pin="P$3"/>
<wire x1="17.78" y1="10.16" x2="5.08" y2="10.16" width="0.1524" layer="91"/>
<wire x1="5.08" y1="10.16" x2="5.08" y2="5.08" width="0.1524" layer="91"/>
</segment>
</net>
<net name="GND2" class="0">
<segment>
<pinref part="IC5" gate="G$1" pin="P$2"/>
<wire x1="-7.62" y1="5.08" x2="-7.62" y2="15.24" width="0.1524" layer="91"/>
<pinref part="IC6" gate="G$1" pin="P$2"/>
<wire x1="-7.62" y1="15.24" x2="2.54" y2="15.24" width="0.1524" layer="91"/>
<wire x1="2.54" y1="15.24" x2="2.54" y2="5.08" width="0.1524" layer="91"/>
<pinref part="IC7" gate="G$1" pin="P$2"/>
<wire x1="2.54" y1="15.24" x2="12.7" y2="15.24" width="0.1524" layer="91"/>
<wire x1="12.7" y1="15.24" x2="12.7" y2="5.08" width="0.1524" layer="91"/>
<junction x="2.54" y="15.24"/>
<wire x1="12.7" y1="15.24" x2="12.7" y2="20.32" width="0.1524" layer="91"/>
<junction x="12.7" y="15.24"/>
<label x="12.7" y="20.32" size="1.016" layer="95" rot="R90" xref="yes"/>
</segment>
<segment>
<pinref part="ESP" gate="G$1" pin="P$8"/>
<wire x1="53.34" y1="38.1" x2="58.42" y2="38.1" width="0.1524" layer="91"/>
<label x="58.42" y="38.1" size="1.016" layer="95" xref="yes"/>
</segment>
</net>
<net name="N$8" class="0">
<segment>
<pinref part="ESP" gate="G$1" pin="P$30"/>
<wire x1="20.32" y1="20.32" x2="22.86" y2="20.32" width="0.1524" layer="91"/>
<pinref part="IC7" gate="G$1" pin="P$3"/>
<wire x1="15.24" y1="5.08" x2="15.24" y2="7.62" width="0.1524" layer="91"/>
<wire x1="15.24" y1="7.62" x2="20.32" y2="7.62" width="0.1524" layer="91"/>
<wire x1="20.32" y1="7.62" x2="20.32" y2="20.32" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$5" class="0">
<segment>
<pinref part="LVL_SHFT" gate="G$1" pin="LV1"/>
<wire x1="-5.08" y1="30.48" x2="15.24" y2="30.48" width="0.1524" layer="91"/>
<wire x1="15.24" y1="30.48" x2="15.24" y2="38.1" width="0.1524" layer="91"/>
<pinref part="ESP" gate="G$1" pin="P$23"/>
<wire x1="15.24" y1="38.1" x2="22.86" y2="38.1" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$6" class="0">
<segment>
<pinref part="LVL_SHFT" gate="G$1" pin="LV2"/>
<wire x1="-5.08" y1="27.94" x2="5.08" y2="27.94" width="0.1524" layer="91"/>
<wire x1="5.08" y1="27.94" x2="5.08" y2="45.72" width="0.1524" layer="91"/>
<pinref part="ESP" gate="G$1" pin="P$20"/>
<wire x1="5.08" y1="45.72" x2="22.86" y2="45.72" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$7" class="0">
<segment>
<pinref part="LVL_SHFT" gate="G$1" pin="LV3"/>
<wire x1="-5.08" y1="25.4" x2="2.54" y2="25.4" width="0.1524" layer="91"/>
<wire x1="2.54" y1="25.4" x2="2.54" y2="48.26" width="0.1524" layer="91"/>
<pinref part="ESP" gate="G$1" pin="P$19"/>
<wire x1="2.54" y1="48.26" x2="22.86" y2="48.26" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$10" class="0">
<segment>
<pinref part="LVL_SHFT" gate="G$1" pin="LV4"/>
<wire x1="-5.08" y1="22.86" x2="0" y2="22.86" width="0.1524" layer="91"/>
<wire x1="0" y1="22.86" x2="0" y2="50.8" width="0.1524" layer="91"/>
<pinref part="ESP" gate="G$1" pin="P$18"/>
<wire x1="0" y1="50.8" x2="22.86" y2="50.8" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$11" class="0">
<segment>
<pinref part="LVL_SHFT" gate="G$1" pin="LV"/>
<wire x1="-2.54" y1="40.64" x2="-5.08" y2="40.64" width="0.1524" layer="91"/>
<pinref part="ESP" gate="G$1" pin="P$25"/>
<wire x1="22.86" y1="33.02" x2="-2.54" y2="33.02" width="0.1524" layer="91"/>
<wire x1="-2.54" y1="33.02" x2="-2.54" y2="40.64" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$9" class="0">
<segment>
<pinref part="ESP" gate="G$1" pin="P$24"/>
<wire x1="12.7" y1="35.56" x2="22.86" y2="35.56" width="0.1524" layer="91"/>
<wire x1="12.7" y1="38.1" x2="12.7" y2="35.56" width="0.1524" layer="91"/>
<pinref part="LVL_SHFT" gate="G$1" pin="GND2"/>
<wire x1="-5.08" y1="38.1" x2="12.7" y2="38.1" width="0.1524" layer="91"/>
</segment>
</net>
<net name="GND1" class="0">
<segment>
<pinref part="ESP" gate="G$1" pin="P$17"/>
<wire x1="22.86" y1="53.34" x2="20.32" y2="53.34" width="0.1524" layer="91"/>
<label x="20.32" y="53.34" size="1.016" layer="95" rot="R180" xref="yes"/>
</segment>
<segment>
<pinref part="IC4" gate="G$1" pin="P$2"/>
<wire x1="-48.26" y1="38.1" x2="-38.1" y2="38.1" width="0.1524" layer="91"/>
<wire x1="-38.1" y1="38.1" x2="-38.1" y2="43.18" width="0.1524" layer="91"/>
<wire x1="-38.1" y1="38.1" x2="-38.1" y2="27.94" width="0.1524" layer="91"/>
<junction x="-38.1" y="38.1"/>
<pinref part="IC3" gate="G$1" pin="P$2"/>
<wire x1="-38.1" y1="27.94" x2="-48.26" y2="27.94" width="0.1524" layer="91"/>
<wire x1="-38.1" y1="27.94" x2="-38.1" y2="17.78" width="0.1524" layer="91"/>
<junction x="-38.1" y="27.94"/>
<pinref part="IC2" gate="G$1" pin="P$2"/>
<wire x1="-38.1" y1="17.78" x2="-48.26" y2="17.78" width="0.1524" layer="91"/>
<wire x1="-38.1" y1="17.78" x2="-38.1" y2="7.62" width="0.1524" layer="91"/>
<junction x="-38.1" y="17.78"/>
<pinref part="IC1" gate="G$1" pin="P$2"/>
<wire x1="-38.1" y1="7.62" x2="-48.26" y2="7.62" width="0.1524" layer="91"/>
<label x="-38.1" y="43.18" size="1.016" layer="95" rot="R90" xref="yes"/>
<pinref part="LVL_SHFT" gate="G$1" pin="GND1"/>
<wire x1="-25.4" y1="38.1" x2="-38.1" y2="38.1" width="0.1524" layer="91"/>
</segment>
</net>
</nets>
</sheet>
</sheets>
</schematic>
</drawing>
</eagle>
