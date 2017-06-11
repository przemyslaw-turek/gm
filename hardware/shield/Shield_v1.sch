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
<library name="40goldpin_2_54mm">
<packages>
<package name="40_PIN_2.54MM">
<wire x1="-25.4" y1="2.54" x2="-25.4" y2="-2.54" width="0.127" layer="21"/>
<wire x1="-25.4" y1="-2.54" x2="25.4" y2="-2.54" width="0.127" layer="21"/>
<wire x1="25.4" y1="-2.54" x2="25.4" y2="2.54" width="0.127" layer="21"/>
<wire x1="25.4" y1="2.54" x2="-25.4" y2="2.54" width="0.127" layer="21"/>
<text x="-22.225" y="3.175" size="1.27" layer="25" align="bottom-center">&gt;NAME</text>
<pad name="1" x="-24.13" y="-1.27" drill="0.8" shape="square"/>
<pad name="2" x="-24.13" y="1.27" drill="0.8"/>
<pad name="3" x="-21.59" y="-1.27" drill="0.8"/>
<pad name="4" x="-21.59" y="1.27" drill="0.8"/>
<pad name="5" x="-19.05" y="-1.27" drill="0.8"/>
<pad name="7" x="-16.51" y="-1.27" drill="0.8"/>
<pad name="9" x="-13.97" y="-1.27" drill="0.8"/>
<pad name="11" x="-11.43" y="-1.27" drill="0.8"/>
<pad name="13" x="-8.89" y="-1.27" drill="0.8"/>
<pad name="15" x="-6.35" y="-1.27" drill="0.8"/>
<pad name="17" x="-3.81" y="-1.27" drill="0.8"/>
<pad name="19" x="-1.27" y="-1.27" drill="0.8"/>
<pad name="21" x="1.27" y="-1.27" drill="0.8"/>
<pad name="23" x="3.81" y="-1.27" drill="0.8"/>
<pad name="25" x="6.35" y="-1.27" drill="0.8"/>
<pad name="27" x="8.89" y="-1.27" drill="0.8"/>
<pad name="29" x="11.43" y="-1.27" drill="0.8"/>
<pad name="31" x="13.97" y="-1.27" drill="0.8"/>
<pad name="33" x="16.51" y="-1.27" drill="0.8"/>
<pad name="35" x="19.05" y="-1.27" drill="0.8"/>
<pad name="37" x="21.59" y="-1.27" drill="0.8"/>
<pad name="39" x="24.13" y="-1.27" drill="0.8"/>
<pad name="40" x="24.13" y="1.27" drill="0.8"/>
<pad name="38" x="21.59" y="1.27" drill="0.8"/>
<pad name="36" x="19.05" y="1.27" drill="0.8"/>
<pad name="34" x="16.51" y="1.27" drill="0.8"/>
<pad name="32" x="13.97" y="1.27" drill="0.8"/>
<pad name="30" x="11.43" y="1.27" drill="0.8"/>
<pad name="28" x="8.89" y="1.27" drill="0.8"/>
<pad name="26" x="6.35" y="1.27" drill="0.8"/>
<pad name="24" x="3.81" y="1.27" drill="0.8"/>
<pad name="22" x="1.27" y="1.27" drill="0.8"/>
<pad name="20" x="-1.27" y="1.27" drill="0.8"/>
<pad name="18" x="-3.81" y="1.27" drill="0.8"/>
<pad name="16" x="-6.35" y="1.27" drill="0.8"/>
<pad name="14" x="-8.89" y="1.27" drill="0.8"/>
<pad name="12" x="-11.43" y="1.27" drill="0.8"/>
<pad name="10" x="-13.97" y="1.27" drill="0.8"/>
<pad name="8" x="-16.51" y="1.27" drill="0.8"/>
<pad name="6" x="-19.05" y="1.27" drill="0.8"/>
</package>
</packages>
<symbols>
<symbol name="40_PIN_2.54MM">
<pin name="P$1" x="-48.26" y="-10.16" visible="pad" length="middle" swaplevel="1" rot="R90"/>
<pin name="P$2" x="-45.72" y="-5.08" visible="pad" length="middle" swaplevel="1" rot="R90"/>
<pin name="P$3" x="-43.18" y="-10.16" visible="pad" length="middle" swaplevel="1" rot="R90"/>
<pin name="P$4" x="-40.64" y="-5.08" visible="pad" length="middle" swaplevel="1" rot="R90"/>
<pin name="P$5" x="-38.1" y="-10.16" visible="pad" length="middle" swaplevel="1" rot="R90"/>
<pin name="P$6" x="-35.56" y="-5.08" visible="pad" length="middle" swaplevel="1" rot="R90"/>
<pin name="P$7" x="-33.02" y="-10.16" visible="pad" length="middle" swaplevel="1" rot="R90"/>
<pin name="P$8" x="-30.48" y="-5.08" visible="pad" length="middle" swaplevel="1" rot="R90"/>
<pin name="P$9" x="-27.94" y="-10.16" visible="pad" length="middle" swaplevel="1" rot="R90"/>
<pin name="P$10" x="-25.4" y="-5.08" visible="pad" length="middle" swaplevel="1" rot="R90"/>
<pin name="P$11" x="-22.86" y="-10.16" visible="pad" length="middle" swaplevel="1" rot="R90"/>
<pin name="P$12" x="-20.32" y="-5.08" visible="pad" length="middle" swaplevel="1" rot="R90"/>
<pin name="P$13" x="-17.78" y="-10.16" visible="pad" length="middle" swaplevel="1" rot="R90"/>
<pin name="P$14" x="-15.24" y="-5.08" visible="pad" length="middle" swaplevel="1" rot="R90"/>
<pin name="P$15" x="-12.7" y="-10.16" visible="pad" length="middle" swaplevel="1" rot="R90"/>
<pin name="P$16" x="-10.16" y="-5.08" visible="pad" length="middle" swaplevel="1" rot="R90"/>
<pin name="P$17" x="-7.62" y="-10.16" visible="pad" length="middle" swaplevel="1" rot="R90"/>
<pin name="P$18" x="-5.08" y="-5.08" visible="pad" length="middle" swaplevel="1" rot="R90"/>
<pin name="P$19" x="-2.54" y="-10.16" visible="pad" length="middle" swaplevel="1" rot="R90"/>
<pin name="P$20" x="0" y="-5.08" visible="pad" length="middle" swaplevel="1" rot="R90"/>
<pin name="P$21" x="2.54" y="-10.16" visible="pad" length="middle" swaplevel="1" rot="R90"/>
<pin name="P$22" x="5.08" y="-5.08" visible="pad" length="middle" swaplevel="1" rot="R90"/>
<pin name="P$23" x="7.62" y="-10.16" visible="pad" length="middle" swaplevel="1" rot="R90"/>
<pin name="P$24" x="10.16" y="-5.08" visible="pad" length="middle" swaplevel="1" rot="R90"/>
<pin name="P$25" x="12.7" y="-10.16" visible="pad" length="middle" swaplevel="1" rot="R90"/>
<pin name="P$26" x="15.24" y="-5.08" visible="pad" length="middle" swaplevel="1" rot="R90"/>
<pin name="P$27" x="17.78" y="-10.16" visible="pad" length="middle" swaplevel="1" rot="R90"/>
<pin name="P$28" x="20.32" y="-5.08" visible="pad" length="middle" swaplevel="1" rot="R90"/>
<pin name="P$29" x="22.86" y="-10.16" visible="pad" length="middle" swaplevel="1" rot="R90"/>
<pin name="P$30" x="25.4" y="-5.08" visible="pad" length="middle" swaplevel="1" rot="R90"/>
<pin name="P$31" x="27.94" y="-10.16" visible="pad" length="middle" swaplevel="1" rot="R90"/>
<pin name="P$32" x="30.48" y="-5.08" visible="pad" length="middle" swaplevel="1" rot="R90"/>
<pin name="P$33" x="33.02" y="-10.16" visible="pad" length="middle" swaplevel="1" rot="R90"/>
<pin name="P$34" x="35.56" y="-5.08" visible="pad" length="middle" swaplevel="1" rot="R90"/>
<pin name="P$35" x="38.1" y="-10.16" visible="pad" length="middle" swaplevel="1" rot="R90"/>
<pin name="P$36" x="40.64" y="-5.08" visible="pad" length="middle" swaplevel="1" rot="R90"/>
<pin name="P$37" x="43.18" y="-10.16" visible="pad" length="middle" swaplevel="1" rot="R90"/>
<pin name="P$38" x="45.72" y="-5.08" visible="pad" length="middle" swaplevel="1" rot="R90"/>
<pin name="P$39" x="48.26" y="-10.16" visible="pad" length="middle" swaplevel="1" rot="R90"/>
<pin name="P$40" x="50.8" y="-5.08" visible="pad" length="middle" swaplevel="1" rot="R90"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="40_PIN_2.54MM" prefix="IC">
<gates>
<gate name="GP" symbol="40_PIN_2.54MM" x="-2.54" y="-2.54" addlevel="can" swaplevel="1"/>
</gates>
<devices>
<device name="" package="40_PIN_2.54MM">
<connects>
<connect gate="GP" pin="P$1" pad="1"/>
<connect gate="GP" pin="P$10" pad="10"/>
<connect gate="GP" pin="P$11" pad="11"/>
<connect gate="GP" pin="P$12" pad="12"/>
<connect gate="GP" pin="P$13" pad="13"/>
<connect gate="GP" pin="P$14" pad="14"/>
<connect gate="GP" pin="P$15" pad="15"/>
<connect gate="GP" pin="P$16" pad="16"/>
<connect gate="GP" pin="P$17" pad="17"/>
<connect gate="GP" pin="P$18" pad="18"/>
<connect gate="GP" pin="P$19" pad="19"/>
<connect gate="GP" pin="P$2" pad="2"/>
<connect gate="GP" pin="P$20" pad="20"/>
<connect gate="GP" pin="P$21" pad="21"/>
<connect gate="GP" pin="P$22" pad="22"/>
<connect gate="GP" pin="P$23" pad="23"/>
<connect gate="GP" pin="P$24" pad="24"/>
<connect gate="GP" pin="P$25" pad="25"/>
<connect gate="GP" pin="P$26" pad="26"/>
<connect gate="GP" pin="P$27" pad="27"/>
<connect gate="GP" pin="P$28" pad="28"/>
<connect gate="GP" pin="P$29" pad="29"/>
<connect gate="GP" pin="P$3" pad="3"/>
<connect gate="GP" pin="P$30" pad="30"/>
<connect gate="GP" pin="P$31" pad="31"/>
<connect gate="GP" pin="P$32" pad="32"/>
<connect gate="GP" pin="P$33" pad="33"/>
<connect gate="GP" pin="P$34" pad="34"/>
<connect gate="GP" pin="P$35" pad="35"/>
<connect gate="GP" pin="P$36" pad="36"/>
<connect gate="GP" pin="P$37" pad="37"/>
<connect gate="GP" pin="P$38" pad="38"/>
<connect gate="GP" pin="P$39" pad="39"/>
<connect gate="GP" pin="P$4" pad="4"/>
<connect gate="GP" pin="P$40" pad="40"/>
<connect gate="GP" pin="P$5" pad="5"/>
<connect gate="GP" pin="P$6" pad="6"/>
<connect gate="GP" pin="P$7" pad="7"/>
<connect gate="GP" pin="P$8" pad="8"/>
<connect gate="GP" pin="P$9" pad="9"/>
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
<pad name="HV1" x="-6.35" y="5.08" drill="1.2" diameter="1.778"/>
<pad name="HV2" x="-3.81" y="5.08" drill="1.2" diameter="1.778"/>
<pad name="HV" x="-1.27" y="5.08" drill="1.2" diameter="1.778"/>
<pad name="GND1" x="1.27" y="5.08" drill="1.2" diameter="1.778"/>
<pad name="HV3" x="3.81" y="5.08" drill="1.2" diameter="1.778"/>
<pad name="HV4" x="6.35" y="5.08" drill="1.2" diameter="1.778"/>
<pad name="LV1" x="-6.35" y="-5.08" drill="1.2" diameter="1.778"/>
<pad name="LV2" x="-3.81" y="-5.08" drill="1.2" diameter="1.778"/>
<pad name="LV" x="-1.27" y="-5.08" drill="1.2" diameter="1.778"/>
<pad name="GND2" x="1.27" y="-5.08" drill="1.2" diameter="1.778"/>
<pad name="LV3" x="3.81" y="-5.08" drill="1.2" diameter="1.778"/>
<pad name="LV4" x="6.35" y="-5.08" drill="1.2" diameter="1.778"/>
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
<part name="IC17" library="40goldpin_2_54mm" deviceset="40_PIN_2.54MM" device=""/>
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
</plain>
<instances>
<instance part="IC17" gate="GP" x="58.42" y="152.4"/>
<instance part="IC1" gate="G$1" x="12.7" y="88.9" rot="MR180"/>
<instance part="IC2" gate="G$1" x="25.4" y="88.9" rot="MR180"/>
<instance part="IC3" gate="G$1" x="38.1" y="88.9" rot="MR180"/>
<instance part="IC4" gate="G$1" x="55.88" y="88.9" rot="MR180"/>
<instance part="IC5" gate="G$1" x="68.58" y="88.9" rot="MR180"/>
<instance part="IC6" gate="G$1" x="83.82" y="88.9" rot="MR180"/>
<instance part="IC7" gate="G$1" x="99.06" y="88.9" rot="MR180"/>
<instance part="LVL_SHFT" gate="G$1" x="121.92" y="109.22"/>
</instances>
<busses>
</busses>
<nets>
<net name="N$1" class="0">
<segment>
<pinref part="IC17" gate="GP" pin="P$1"/>
<wire x1="10.16" y1="142.24" x2="10.16" y2="116.84" width="0.1524" layer="91"/>
<wire x1="10.16" y1="116.84" x2="10.16" y2="96.52" width="0.1524" layer="91"/>
<wire x1="10.16" y1="116.84" x2="22.86" y2="116.84" width="0.1524" layer="91"/>
<junction x="10.16" y="116.84"/>
<wire x1="22.86" y1="96.52" x2="22.86" y2="116.84" width="0.1524" layer="91"/>
<wire x1="22.86" y1="116.84" x2="35.56" y2="116.84" width="0.1524" layer="91"/>
<junction x="22.86" y="116.84"/>
<wire x1="35.56" y1="96.52" x2="35.56" y2="116.84" width="0.1524" layer="91"/>
<pinref part="IC1" gate="G$1" pin="P$1"/>
<pinref part="IC2" gate="G$1" pin="P$1"/>
<pinref part="IC3" gate="G$1" pin="P$1"/>
</segment>
</net>
<net name="N$2" class="0">
<segment>
<pinref part="IC17" gate="GP" pin="P$2"/>
<wire x1="12.7" y1="147.32" x2="12.7" y2="124.46" width="0.1524" layer="91"/>
<wire x1="12.7" y1="124.46" x2="53.34" y2="124.46" width="0.1524" layer="91"/>
<wire x1="53.34" y1="124.46" x2="53.34" y2="96.52" width="0.1524" layer="91"/>
<wire x1="53.34" y1="124.46" x2="66.04" y2="124.46" width="0.1524" layer="91"/>
<wire x1="66.04" y1="124.46" x2="66.04" y2="96.52" width="0.1524" layer="91"/>
<junction x="53.34" y="124.46"/>
<wire x1="66.04" y1="124.46" x2="81.28" y2="124.46" width="0.1524" layer="91"/>
<wire x1="81.28" y1="124.46" x2="81.28" y2="96.52" width="0.1524" layer="91"/>
<junction x="66.04" y="124.46"/>
<wire x1="81.28" y1="124.46" x2="96.52" y2="124.46" width="0.1524" layer="91"/>
<wire x1="96.52" y1="124.46" x2="96.52" y2="96.52" width="0.1524" layer="91"/>
<junction x="81.28" y="124.46"/>
<pinref part="IC4" gate="G$1" pin="P$1"/>
<pinref part="IC5" gate="G$1" pin="P$1"/>
<pinref part="IC6" gate="G$1" pin="P$1"/>
<pinref part="IC7" gate="G$1" pin="P$1"/>
</segment>
</net>
<net name="N$3" class="0">
<segment>
<wire x1="25.4" y1="121.92" x2="12.7" y2="121.92" width="0.1524" layer="91"/>
<wire x1="12.7" y1="121.92" x2="12.7" y2="96.52" width="0.1524" layer="91"/>
<wire x1="25.4" y1="96.52" x2="25.4" y2="121.92" width="0.1524" layer="91"/>
<wire x1="25.4" y1="121.92" x2="38.1" y2="121.92" width="0.1524" layer="91"/>
<junction x="25.4" y="121.92"/>
<wire x1="25.4" y1="121.92" x2="25.4" y2="127" width="0.1524" layer="91"/>
<pinref part="IC17" gate="GP" pin="P$6"/>
<wire x1="25.4" y1="127" x2="22.86" y2="127" width="0.1524" layer="91"/>
<wire x1="22.86" y1="127" x2="22.86" y2="147.32" width="0.1524" layer="91"/>
<pinref part="IC1" gate="G$1" pin="P$2"/>
<pinref part="IC2" gate="G$1" pin="P$2"/>
<pinref part="IC3" gate="G$1" pin="P$2"/>
<wire x1="38.1" y1="121.92" x2="38.1" y2="96.52" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$4" class="0">
<segment>
<pinref part="IC17" gate="GP" pin="P$20"/>
<wire x1="58.42" y1="147.32" x2="58.42" y2="121.92" width="0.1524" layer="91"/>
<wire x1="58.42" y1="121.92" x2="55.88" y2="121.92" width="0.1524" layer="91"/>
<wire x1="58.42" y1="121.92" x2="68.58" y2="121.92" width="0.1524" layer="91"/>
<junction x="58.42" y="121.92"/>
<pinref part="IC4" gate="G$1" pin="P$2"/>
<wire x1="55.88" y1="121.92" x2="55.88" y2="96.52" width="0.1524" layer="91"/>
<pinref part="IC5" gate="G$1" pin="P$2"/>
<wire x1="68.58" y1="121.92" x2="68.58" y2="96.52" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$5" class="0">
<segment>
<pinref part="IC17" gate="GP" pin="P$25"/>
<wire x1="71.12" y1="142.24" x2="71.12" y2="121.92" width="0.1524" layer="91"/>
<wire x1="71.12" y1="121.92" x2="83.82" y2="121.92" width="0.1524" layer="91"/>
<pinref part="IC7" gate="G$1" pin="P$2"/>
<wire x1="83.82" y1="121.92" x2="99.06" y2="121.92" width="0.1524" layer="91"/>
<wire x1="99.06" y1="121.92" x2="99.06" y2="96.52" width="0.1524" layer="91"/>
<pinref part="IC6" gate="G$1" pin="P$2"/>
<wire x1="83.82" y1="96.52" x2="83.82" y2="121.92" width="0.1524" layer="91"/>
<junction x="83.82" y="121.92"/>
</segment>
</net>
<net name="GND" class="0">
<segment>
<pinref part="IC17" gate="GP" pin="P$39"/>
<wire x1="106.68" y1="142.24" x2="106.68" y2="139.7" width="0.1524" layer="91"/>
<label x="106.68" y="139.7" size="1.016" layer="95" rot="R270" xref="yes"/>
</segment>
<segment>
<pinref part="LVL_SHFT" gate="G$1" pin="GND2"/>
<wire x1="132.08" y1="114.3" x2="134.62" y2="114.3" width="0.1524" layer="91"/>
<label x="134.62" y="114.3" size="1.016" layer="95" xref="yes"/>
</segment>
<segment>
<pinref part="LVL_SHFT" gate="G$1" pin="GND1"/>
<wire x1="111.76" y1="114.3" x2="109.22" y2="114.3" width="0.1524" layer="91"/>
<label x="109.22" y="114.3" size="1.016" layer="95" rot="R180" xref="yes"/>
</segment>
</net>
<net name="3.3V" class="0">
<segment>
<pinref part="LVL_SHFT" gate="G$1" pin="LV"/>
<wire x1="132.08" y1="116.84" x2="134.62" y2="116.84" width="0.1524" layer="91"/>
<label x="134.62" y="116.84" size="1.016" layer="95" xref="yes"/>
</segment>
<segment>
<pinref part="IC17" gate="GP" pin="P$17"/>
<wire x1="50.8" y1="142.24" x2="50.8" y2="139.7" width="0.1524" layer="91"/>
<label x="50.8" y="139.7" size="1.016" layer="95" rot="R270" xref="yes"/>
</segment>
</net>
<net name="5V" class="0">
<segment>
<pinref part="LVL_SHFT" gate="G$1" pin="HV"/>
<wire x1="111.76" y1="116.84" x2="109.22" y2="116.84" width="0.1524" layer="91"/>
<label x="109.22" y="116.84" size="1.016" layer="95" rot="R180" xref="yes"/>
</segment>
<segment>
<pinref part="IC17" gate="GP" pin="P$4"/>
<wire x1="17.78" y1="147.32" x2="17.78" y2="139.7" width="0.1524" layer="91"/>
<label x="17.78" y="139.7" size="1.016" layer="95" rot="R270" xref="yes"/>
</segment>
</net>
<net name="N$6" class="0">
<segment>
<pinref part="IC7" gate="G$1" pin="P$3"/>
<wire x1="101.6" y1="96.52" x2="101.6" y2="106.68" width="0.1524" layer="91"/>
<pinref part="LVL_SHFT" gate="G$1" pin="HV1"/>
<wire x1="101.6" y1="106.68" x2="111.76" y2="106.68" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$7" class="0">
<segment>
<pinref part="LVL_SHFT" gate="G$1" pin="HV2"/>
<pinref part="IC6" gate="G$1" pin="P$3"/>
<wire x1="111.76" y1="104.14" x2="86.36" y2="104.14" width="0.1524" layer="91"/>
<wire x1="86.36" y1="104.14" x2="86.36" y2="96.52" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$8" class="0">
<segment>
<pinref part="LVL_SHFT" gate="G$1" pin="HV3"/>
<pinref part="IC5" gate="G$1" pin="P$3"/>
<wire x1="111.76" y1="101.6" x2="71.12" y2="101.6" width="0.1524" layer="91"/>
<wire x1="71.12" y1="101.6" x2="71.12" y2="96.52" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$9" class="0">
<segment>
<pinref part="LVL_SHFT" gate="G$1" pin="HV4"/>
<pinref part="IC4" gate="G$1" pin="P$3"/>
<wire x1="111.76" y1="99.06" x2="58.42" y2="99.06" width="0.1524" layer="91"/>
<wire x1="58.42" y1="99.06" x2="58.42" y2="96.52" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$10" class="0">
<segment>
<pinref part="LVL_SHFT" gate="G$1" pin="LV1"/>
<wire x1="132.08" y1="106.68" x2="147.32" y2="106.68" width="0.1524" layer="91"/>
<wire x1="147.32" y1="106.68" x2="147.32" y2="134.62" width="0.1524" layer="91"/>
<pinref part="IC17" gate="GP" pin="P$37"/>
<wire x1="147.32" y1="134.62" x2="101.6" y2="134.62" width="0.1524" layer="91"/>
<wire x1="101.6" y1="134.62" x2="101.6" y2="142.24" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$11" class="0">
<segment>
<pinref part="LVL_SHFT" gate="G$1" pin="LV2"/>
<wire x1="132.08" y1="104.14" x2="144.78" y2="104.14" width="0.1524" layer="91"/>
<wire x1="144.78" y1="104.14" x2="144.78" y2="132.08" width="0.1524" layer="91"/>
<pinref part="IC17" gate="GP" pin="P$35"/>
<wire x1="144.78" y1="132.08" x2="96.52" y2="132.08" width="0.1524" layer="91"/>
<wire x1="96.52" y1="132.08" x2="96.52" y2="142.24" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$12" class="0">
<segment>
<pinref part="LVL_SHFT" gate="G$1" pin="LV3"/>
<wire x1="132.08" y1="101.6" x2="142.24" y2="101.6" width="0.1524" layer="91"/>
<wire x1="142.24" y1="101.6" x2="142.24" y2="129.54" width="0.1524" layer="91"/>
<pinref part="IC17" gate="GP" pin="P$31"/>
<wire x1="142.24" y1="129.54" x2="86.36" y2="129.54" width="0.1524" layer="91"/>
<wire x1="86.36" y1="129.54" x2="86.36" y2="142.24" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$13" class="0">
<segment>
<pinref part="LVL_SHFT" gate="G$1" pin="LV4"/>
<wire x1="132.08" y1="99.06" x2="139.7" y2="99.06" width="0.1524" layer="91"/>
<wire x1="139.7" y1="99.06" x2="139.7" y2="127" width="0.1524" layer="91"/>
<pinref part="IC17" gate="GP" pin="P$29"/>
<wire x1="139.7" y1="127" x2="81.28" y2="127" width="0.1524" layer="91"/>
<wire x1="81.28" y1="127" x2="81.28" y2="142.24" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$14" class="0">
<segment>
<pinref part="IC1" gate="G$1" pin="P$3"/>
<wire x1="15.24" y1="96.52" x2="17.78" y2="96.52" width="0.1524" layer="91"/>
<wire x1="17.78" y1="96.52" x2="17.78" y2="129.54" width="0.1524" layer="91"/>
<pinref part="IC17" gate="GP" pin="P$7"/>
<wire x1="17.78" y1="129.54" x2="25.4" y2="129.54" width="0.1524" layer="91"/>
<wire x1="25.4" y1="129.54" x2="25.4" y2="142.24" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$15" class="0">
<segment>
<pinref part="IC2" gate="G$1" pin="P$3"/>
<wire x1="27.94" y1="96.52" x2="27.94" y2="129.54" width="0.1524" layer="91"/>
<pinref part="IC17" gate="GP" pin="P$11"/>
<wire x1="27.94" y1="129.54" x2="35.56" y2="129.54" width="0.1524" layer="91"/>
<wire x1="35.56" y1="129.54" x2="35.56" y2="142.24" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$16" class="0">
<segment>
<pinref part="IC3" gate="G$1" pin="P$3"/>
<pinref part="IC17" gate="GP" pin="P$13"/>
<wire x1="40.64" y1="96.52" x2="40.64" y2="142.24" width="0.1524" layer="91"/>
</segment>
</net>
</nets>
</sheet>
</sheets>
</schematic>
</drawing>
</eagle>
