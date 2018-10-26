<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:fb506ffe-646a-4e5d-af6a-0f0988c60cde(de.citec.dot.build)">
  <persistence version="9" />
  <languages>
    <use id="798100da-4f0a-421a-b991-71f8c50ce5d2" name="jetbrains.mps.build" version="0" />
    <use id="0cf935df-4699-4e9c-a132-fa109541cba3" name="jetbrains.mps.build.mps" version="5" />
    <use id="479c7a8c-02f9-43b5-9139-d910cb22f298" name="jetbrains.mps.core.xml" version="0" />
  </languages>
  <imports>
    <import index="ffeo" ref="r:874d959d-e3b4-4d04-b931-ca849af130dd(jetbrains.mps.ide.build)" />
    <import index="g0to" ref="r:32ef34b8-6ceb-4dea-9d30-d0460dfd5538(com.dslfoundry.plaintextgen.build)" />
  </imports>
  <registry>
    <language id="479c7a8c-02f9-43b5-9139-d910cb22f298" name="jetbrains.mps.core.xml">
      <concept id="6666499814681541919" name="jetbrains.mps.core.xml.structure.XmlTextValue" flags="ng" index="2pMdtt">
        <property id="6666499814681541920" name="text" index="2pMdty" />
      </concept>
      <concept id="6666499814681415858" name="jetbrains.mps.core.xml.structure.XmlElement" flags="ng" index="2pNNFK">
        <property id="6666499814681415862" name="tagName" index="2pNNFO" />
        <child id="6666499814681415861" name="attributes" index="2pNNFR" />
        <child id="1622293396948928802" name="content" index="3o6s8t" />
      </concept>
      <concept id="6666499814681447923" name="jetbrains.mps.core.xml.structure.XmlAttribute" flags="ng" index="2pNUuL">
        <property id="6666499814681447926" name="attrName" index="2pNUuO" />
        <child id="6666499814681541918" name="value" index="2pMdts" />
      </concept>
      <concept id="1622293396948952339" name="jetbrains.mps.core.xml.structure.XmlText" flags="nn" index="3o6iSG">
        <property id="1622293396948953704" name="value" index="3o6i5n" />
      </concept>
    </language>
    <language id="798100da-4f0a-421a-b991-71f8c50ce5d2" name="jetbrains.mps.build">
      <concept id="5481553824944787378" name="jetbrains.mps.build.structure.BuildSourceProjectRelativePath" flags="ng" index="55IIr" />
      <concept id="2755237150521975431" name="jetbrains.mps.build.structure.BuildVariableMacroInitWithString" flags="ng" index="aVJcg">
        <child id="2755237150521975437" name="value" index="aVJcq" />
      </concept>
      <concept id="7321017245476976379" name="jetbrains.mps.build.structure.BuildRelativePath" flags="ng" index="iG8Mu">
        <child id="7321017245477039051" name="compositePart" index="iGT6I" />
      </concept>
      <concept id="3767587139141066978" name="jetbrains.mps.build.structure.BuildVariableMacro" flags="ng" index="2kB4xC">
        <child id="2755237150521975432" name="initialValue" index="aVJcv" />
      </concept>
      <concept id="4993211115183325728" name="jetbrains.mps.build.structure.BuildProjectDependency" flags="ng" index="2sgV4H">
        <reference id="5617550519002745380" name="script" index="1l3spb" />
        <child id="4129895186893471026" name="artifacts" index="2JcizS" />
      </concept>
      <concept id="4380385936562003279" name="jetbrains.mps.build.structure.BuildString" flags="ng" index="NbPM2">
        <child id="4903714810883783243" name="parts" index="3MwsjC" />
      </concept>
      <concept id="8618885170173601777" name="jetbrains.mps.build.structure.BuildCompositePath" flags="nn" index="2Ry0Ak">
        <property id="8618885170173601779" name="head" index="2Ry0Am" />
        <child id="8618885170173601778" name="tail" index="2Ry0An" />
      </concept>
      <concept id="6647099934206700647" name="jetbrains.mps.build.structure.BuildJavaPlugin" flags="ng" index="10PD9b" />
      <concept id="7389400916848050071" name="jetbrains.mps.build.structure.BuildLayout_Zip" flags="ng" index="3981dG" />
      <concept id="7389400916848050060" name="jetbrains.mps.build.structure.BuildLayout_NamedContainer" flags="ng" index="3981dR">
        <child id="4380385936562148502" name="containerName" index="Nbhlr" />
      </concept>
      <concept id="7389400916848136194" name="jetbrains.mps.build.structure.BuildFolderMacro" flags="ng" index="398rNT">
        <child id="7389400916848144618" name="defaultPath" index="398pKh" />
      </concept>
      <concept id="7389400916848153117" name="jetbrains.mps.build.structure.BuildSourceMacroRelativePath" flags="ng" index="398BVA">
        <reference id="7389400916848153130" name="macro" index="398BVh" />
      </concept>
      <concept id="5617550519002745364" name="jetbrains.mps.build.structure.BuildLayout" flags="ng" index="1l3spV" />
      <concept id="5617550519002745363" name="jetbrains.mps.build.structure.BuildProject" flags="ng" index="1l3spW">
        <property id="5204048710541015587" name="internalBaseDirectory" index="2DA0ip" />
        <child id="6647099934206700656" name="plugins" index="10PD9s" />
        <child id="7389400916848080626" name="parts" index="3989C9" />
        <child id="5617550519002745381" name="dependencies" index="1l3spa" />
        <child id="5617550519002745378" name="macros" index="1l3spd" />
        <child id="5617550519002745372" name="layout" index="1l3spN" />
      </concept>
      <concept id="4701820937132344003" name="jetbrains.mps.build.structure.BuildLayout_Container" flags="ng" index="1y1bJS">
        <child id="7389400916848037006" name="children" index="39821P" />
      </concept>
      <concept id="841011766566059607" name="jetbrains.mps.build.structure.BuildStringNotEmpty" flags="ng" index="3_J27D" />
      <concept id="4903714810883702019" name="jetbrains.mps.build.structure.BuildTextStringPart" flags="ng" index="3Mxwew">
        <property id="4903714810883755350" name="text" index="3MwjfP" />
      </concept>
      <concept id="4903714810883702017" name="jetbrains.mps.build.structure.BuildVarRefStringPart" flags="ng" index="3Mxwey">
        <reference id="4903714810883702018" name="macro" index="3Mxwex" />
      </concept>
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ng" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
    <language id="0cf935df-4699-4e9c-a132-fa109541cba3" name="jetbrains.mps.build.mps">
      <concept id="6592112598314586625" name="jetbrains.mps.build.mps.structure.BuildMps_IdeaPluginGroup" flags="ng" index="m$f5U">
        <reference id="6592112598314586626" name="group" index="m$f5T" />
      </concept>
      <concept id="6592112598314498932" name="jetbrains.mps.build.mps.structure.BuildMps_IdeaPlugin" flags="ng" index="m$_wf">
        <property id="6592112598314498927" name="id" index="m$_wk" />
        <child id="1359186315025500371" name="xml" index="20twgj" />
        <child id="6592112598314498931" name="version" index="m$_w8" />
        <child id="6592112598314499050" name="content" index="m$_yh" />
        <child id="6592112598314499028" name="dependencies" index="m$_yJ" />
        <child id="6592112598314499021" name="name" index="m$_yQ" />
        <child id="6592112598314855574" name="containerName" index="m_cZH" />
      </concept>
      <concept id="6592112598314498926" name="jetbrains.mps.build.mps.structure.BuildMpsLayout_Plugin" flags="ng" index="m$_wl">
        <reference id="6592112598314801433" name="plugin" index="m_rDy" />
      </concept>
      <concept id="6592112598314499027" name="jetbrains.mps.build.mps.structure.BuildMps_IdeaPluginDependency" flags="ng" index="m$_yC">
        <reference id="6592112598314499066" name="target" index="m$_y1" />
      </concept>
      <concept id="1500819558095907805" name="jetbrains.mps.build.mps.structure.BuildMps_Group" flags="ng" index="2G$12M">
        <child id="1500819558095907806" name="modules" index="2G$12L" />
      </concept>
      <concept id="868032131020265945" name="jetbrains.mps.build.mps.structure.BuildMPSPlugin" flags="ng" index="3b7kt6" />
      <concept id="5253498789149381388" name="jetbrains.mps.build.mps.structure.BuildMps_Module" flags="ng" index="3bQrTs">
        <property id="1500819558096356884" name="doNotCompile" index="2GAjPV" />
        <child id="5253498789149547704" name="dependencies" index="3bR37C" />
      </concept>
      <concept id="5253498789149585690" name="jetbrains.mps.build.mps.structure.BuildMps_ModuleDependencyOnModule" flags="ng" index="3bR9La">
        <property id="5253498789149547713" name="reexport" index="3bR36h" />
        <reference id="5253498789149547705" name="module" index="3bR37D" />
      </concept>
      <concept id="5507251971038816436" name="jetbrains.mps.build.mps.structure.BuildMps_Generator" flags="ng" index="1yeLz9" />
      <concept id="3189788309731840247" name="jetbrains.mps.build.mps.structure.BuildMps_Solution" flags="ng" index="1E1JtA" />
      <concept id="3189788309731840248" name="jetbrains.mps.build.mps.structure.BuildMps_Language" flags="ng" index="1E1JtD">
        <child id="9200313594498201639" name="generator" index="1TViLv" />
      </concept>
      <concept id="322010710375794190" name="jetbrains.mps.build.mps.structure.BuildMps_DevKit" flags="ng" index="3LEwk6">
        <child id="322010710375832962" name="exports" index="3LEDUa" />
      </concept>
      <concept id="322010710375832938" name="jetbrains.mps.build.mps.structure.BuildMps_DevKitExportLanguage" flags="ng" index="3LEDTy">
        <reference id="322010710375832947" name="language" index="3LEDTV" />
      </concept>
      <concept id="322010710375871467" name="jetbrains.mps.build.mps.structure.BuildMps_AbstractModule" flags="ng" index="3LEN3z">
        <property id="8369506495128725901" name="compact" index="BnDLt" />
        <property id="322010710375892619" name="uuid" index="3LESm3" />
        <child id="322010710375956261" name="path" index="3LF7KH" />
      </concept>
      <concept id="7259033139236285166" name="jetbrains.mps.build.mps.structure.BuildMps_ExtractedModuleDependency" flags="nn" index="1SiIV0">
        <child id="7259033139236285167" name="dependency" index="1SiIV1" />
      </concept>
    </language>
  </registry>
  <node concept="1l3spW" id="74BOdhSGtEr">
    <property role="TrG5h" value="de.citec.dot" />
    <property role="2DA0ip" value="../../" />
    <node concept="10PD9b" id="74BOdhSGtEs" role="10PD9s" />
    <node concept="3b7kt6" id="74BOdhSGtEt" role="10PD9s" />
    <node concept="398rNT" id="74BOdhSGtEu" role="1l3spd">
      <property role="TrG5h" value="mps_home" />
    </node>
    <node concept="2kB4xC" id="78xf10wcBY1" role="1l3spd">
      <property role="TrG5h" value="current_version" />
      <node concept="aVJcg" id="78xf10wcBY2" role="aVJcv">
        <node concept="NbPM2" id="78xf10wcBY3" role="aVJcq">
          <node concept="3Mxwew" id="78xf10wcBY4" role="3MwsjC">
            <property role="3MwjfP" value="2018.2" />
          </node>
        </node>
      </node>
    </node>
    <node concept="398rNT" id="7$T_6mLQSdn" role="1l3spd">
      <property role="TrG5h" value="plaintextgen_home" />
      <node concept="55IIr" id="7$T_6mLQSf6" role="398pKh">
        <node concept="2Ry0Ak" id="7$T_6mLQSfO" role="iGT6I">
          <property role="2Ry0Am" value=".." />
          <node concept="2Ry0Ak" id="7$T_6mLQSgg" role="2Ry0An">
            <property role="2Ry0Am" value="mps-plaintextgen" />
            <node concept="2Ry0Ak" id="7$T_6mLQSh1" role="2Ry0An">
              <property role="2Ry0Am" value="build" />
              <node concept="2Ry0Ak" id="7$T_6mLQShM" role="2Ry0An">
                <property role="2Ry0Am" value="artifacts" />
                <node concept="2Ry0Ak" id="7$T_6mLQSiz" role="2Ry0An">
                  <property role="2Ry0Am" value="com.dslfoundry.plaintextgen" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2sgV4H" id="74BOdhSGtEv" role="1l3spa">
      <ref role="1l3spb" to="ffeo:3IKDaVZmzS6" resolve="mps" />
      <node concept="398BVA" id="74BOdhSGtEw" role="2JcizS">
        <ref role="398BVh" node="74BOdhSGtEu" resolve="mps_home" />
      </node>
    </node>
    <node concept="2sgV4H" id="74BOdhSN_2j" role="1l3spa">
      <ref role="1l3spb" to="ffeo:5D1dJ7xWer5" resolve="mpsCore" />
      <node concept="398BVA" id="74BOdhSN_2X" role="2JcizS">
        <ref role="398BVh" node="74BOdhSGtEu" resolve="mps_home" />
      </node>
    </node>
    <node concept="2sgV4H" id="7$T_6mLQSc5" role="1l3spa">
      <ref role="1l3spb" to="g0to:2NTGYE$JTGH" resolve="com.dslfoundry.plaintextgen" />
      <node concept="398BVA" id="7$T_6mLQSjk" role="2JcizS">
        <ref role="398BVh" node="7$T_6mLQSdn" resolve="plaintextgen_home" />
      </node>
    </node>
    <node concept="1l3spV" id="74BOdhSGtEL" role="1l3spN">
      <node concept="3981dG" id="74BOdhSGtEM" role="39821P">
        <node concept="3_J27D" id="74BOdhSGtEN" role="Nbhlr">
          <node concept="3Mxwew" id="74BOdhSGtEO" role="3MwsjC">
            <property role="3MwjfP" value="de.citec.dot-" />
          </node>
          <node concept="3Mxwey" id="74BOdhSGz0l" role="3MwsjC">
            <ref role="3Mxwex" to="ffeo:5HVSRHdVf2d" resolve="version" />
          </node>
          <node concept="3Mxwew" id="74BOdhSGz1A" role="3MwsjC">
            <property role="3MwjfP" value="--" />
          </node>
          <node concept="3Mxwey" id="74BOdhSGz2o" role="3MwsjC">
            <ref role="3Mxwex" to="ffeo:3IKDaVZnAxg" resolve="build.number" />
          </node>
          <node concept="3Mxwew" id="74BOdhSGz0k" role="3MwsjC">
            <property role="3MwjfP" value=".zip" />
          </node>
        </node>
        <node concept="m$_wl" id="74BOdhSGtEP" role="39821P">
          <ref role="m_rDy" node="74BOdhSGtEC" resolve="de.citec.dot" />
        </node>
      </node>
    </node>
    <node concept="m$_wf" id="74BOdhSGtEC" role="3989C9">
      <property role="m$_wk" value="de.citec.dot" />
      <node concept="2pNNFK" id="7hyLc6Vva35" role="20twgj">
        <property role="2pNNFO" value="idea-version" />
        <node concept="2pNUuL" id="7hyLc6Vva36" role="2pNNFR">
          <property role="2pNUuO" value="until-build" />
          <node concept="2pMdtt" id="7hyLc6Vva37" role="2pMdts">
            <property role="2pMdty" value="183.0" />
          </node>
        </node>
        <node concept="2pNUuL" id="7hyLc6Vva38" role="2pNNFR">
          <property role="2pNUuO" value="since-build" />
          <node concept="2pMdtt" id="7hyLc6Vva39" role="2pMdts">
            <property role="2pMdty" value="182.0" />
          </node>
        </node>
      </node>
      <node concept="2pNNFK" id="4J0OvZJgW_f" role="20twgj">
        <property role="2pNNFO" value="vendor" />
        <node concept="2pNUuL" id="4J0OvZJgW_Q" role="2pNNFR">
          <property role="2pNUuO" value="email" />
          <node concept="2pMdtt" id="4J0OvZJgW_T" role="2pMdts">
            <property role="2pMdty" value="nkoester@techfak.uni-bielefeld.de" />
          </node>
        </node>
        <node concept="2pNUuL" id="4J0OvZJgW_Z" role="2pNNFR">
          <property role="2pNUuO" value="url" />
          <node concept="2pMdtt" id="4J0OvZJgWA6" role="2pMdts">
            <property role="2pMdty" value="https://ekvv.uni-bielefeld.de/pers_publ/publ/PersonDetail.jsp?personId=45612304" />
          </node>
        </node>
        <node concept="3o6iSG" id="4J0OvZJgW_K" role="3o6s8t">
          <property role="3o6i5n" value="nkoester" />
        </node>
      </node>
      <node concept="3_J27D" id="74BOdhSGtED" role="m$_yQ">
        <node concept="3Mxwew" id="74BOdhSGtEE" role="3MwsjC">
          <property role="3MwjfP" value="de.citec.dot" />
        </node>
      </node>
      <node concept="3_J27D" id="74BOdhSGtEF" role="m$_w8">
        <node concept="3Mxwew" id="74BOdhSGtEG" role="3MwsjC">
          <property role="3MwjfP" value="1.0" />
        </node>
      </node>
      <node concept="m$f5U" id="74BOdhSGtEH" role="m$_yh">
        <ref role="m$f5T" node="74BOdhSGtEB" resolve="de.citec.dot" />
      </node>
      <node concept="m$_yC" id="74BOdhSGtEI" role="m$_yJ">
        <ref role="m$_y1" to="ffeo:4k71ibbKLe8" resolve="jetbrains.mps.core" />
      </node>
      <node concept="m$_yC" id="74BOdhSN_3O" role="m$_yJ">
        <ref role="m$_y1" to="ffeo:5HVSRHdVm9a" resolve="jetbrains.mps.build" />
      </node>
      <node concept="m$_yC" id="74BOdhSUbI_" role="m$_yJ">
        <ref role="m$_y1" to="g0to:2NTGYE$JTH6" resolve="com.dslfoundry.plaintextgen" />
      </node>
      <node concept="3_J27D" id="74BOdhSGtEJ" role="m_cZH">
        <node concept="3Mxwew" id="74BOdhSGtEK" role="3MwsjC">
          <property role="3MwjfP" value="de.citec.dot" />
        </node>
      </node>
    </node>
    <node concept="2G$12M" id="74BOdhSGtEB" role="3989C9">
      <property role="TrG5h" value="de.citec.dot" />
      <node concept="1E1JtD" id="74BOdhSGtEA" role="2G$12L">
        <property role="BnDLt" value="true" />
        <property role="TrG5h" value="de.citec.dot" />
        <property role="3LESm3" value="c1319453-46ac-4ca7-913b-91def4805e4e" />
        <property role="2GAjPV" value="false" />
        <node concept="55IIr" id="74BOdhSGtEx" role="3LF7KH">
          <node concept="2Ry0Ak" id="74BOdhSGtEy" role="iGT6I">
            <property role="2Ry0Am" value="languages" />
            <node concept="2Ry0Ak" id="74BOdhSGtEz" role="2Ry0An">
              <property role="2Ry0Am" value="de.citec.dot" />
              <node concept="2Ry0Ak" id="74BOdhSGtE$" role="2Ry0An">
                <property role="2Ry0Am" value="de.citec.dot.mpl" />
              </node>
            </node>
          </node>
        </node>
        <node concept="1yeLz9" id="74BOdhSGtEQ" role="1TViLv">
          <property role="TrG5h" value="de.citec.dot#01" />
          <property role="3LESm3" value="a94ffe14-4a14-42d7-8add-413e93398d31" />
          <property role="2GAjPV" value="false" />
        </node>
        <node concept="1SiIV0" id="74BOdhSNpgI" role="3bR37C">
          <node concept="3bR9La" id="74BOdhSNpgJ" role="1SiIV1">
            <property role="3bR36h" value="false" />
            <ref role="3bR37D" to="ffeo:7Kfy9QB6KYb" resolve="jetbrains.mps.baseLanguage" />
          </node>
        </node>
      </node>
      <node concept="1E1JtD" id="74BOdhSUaao" role="2G$12L">
        <property role="BnDLt" value="true" />
        <property role="TrG5h" value="de.citec.dot.plaintextgen" />
        <property role="3LESm3" value="de08ce63-db43-4eb1-bab6-26bd8eae3b16" />
        <property role="2GAjPV" value="false" />
        <node concept="55IIr" id="74BOdhSUaar" role="3LF7KH">
          <node concept="2Ry0Ak" id="74BOdhSUadq" role="iGT6I">
            <property role="2Ry0Am" value="languages" />
            <node concept="2Ry0Ak" id="74BOdhSUae9" role="2Ry0An">
              <property role="2Ry0Am" value="de.citec.dot.plaintextgen" />
              <node concept="2Ry0Ak" id="74BOdhSUaeS" role="2Ry0An">
                <property role="2Ry0Am" value="de.citec.dot.plaintextgen.mpl" />
              </node>
            </node>
          </node>
        </node>
        <node concept="1yeLz9" id="74BOdhSUafo" role="1TViLv">
          <property role="TrG5h" value="de.citec.dot.plaintextgen#01" />
          <property role="3LESm3" value="642a2f17-597e-416d-90c9-340143c8ce2e" />
          <property role="2GAjPV" value="false" />
          <node concept="1SiIV0" id="74BOdhSUafp" role="3bR37C">
            <node concept="3bR9La" id="74BOdhSUafq" role="1SiIV1">
              <property role="3bR36h" value="false" />
              <ref role="3bR37D" node="74BOdhSGtEA" resolve="de.citec.dot" />
            </node>
          </node>
        </node>
      </node>
      <node concept="1E1JtA" id="74BOdhSN$Ue" role="2G$12L">
        <property role="BnDLt" value="true" />
        <property role="TrG5h" value="de.citec.dot.build" />
        <property role="3LESm3" value="d7ba70f9-2674-4db6-8c37-518c70d355ae" />
        <property role="2GAjPV" value="false" />
        <node concept="55IIr" id="74BOdhSN$Uh" role="3LF7KH">
          <node concept="2Ry0Ak" id="74BOdhSN$YJ" role="iGT6I">
            <property role="2Ry0Am" value="solutions" />
            <node concept="2Ry0Ak" id="74BOdhSN$Zm" role="2Ry0An">
              <property role="2Ry0Am" value="de.citec.dot.build" />
              <node concept="2Ry0Ak" id="74BOdhSN$ZX" role="2Ry0An">
                <property role="2Ry0Am" value="de.citec.dot.build.msd" />
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="74BOdhSN_0p" role="3bR37C">
          <node concept="3bR9La" id="74BOdhSN_0q" role="1SiIV1">
            <property role="3bR36h" value="false" />
            <ref role="3bR37D" to="ffeo:78GwwOvB3tw" resolve="jetbrains.mps.ide.build" />
          </node>
        </node>
        <node concept="1SiIV0" id="74BOdhSUbK4" role="3bR37C">
          <node concept="3bR9La" id="74BOdhSUbK5" role="1SiIV1">
            <property role="3bR36h" value="false" />
            <ref role="3bR37D" to="g0to:5rkDY7YkAIz" resolve="com.dslfoundry.plaintextgen.build" />
          </node>
        </node>
      </node>
      <node concept="3LEwk6" id="74BOdhSUg4a" role="2G$12L">
        <property role="BnDLt" value="true" />
        <property role="TrG5h" value="de.citec.dot.devkit" />
        <property role="3LESm3" value="c5093ec9-39ec-4fce-8f7a-67baf9750637" />
        <node concept="55IIr" id="74BOdhSUg4d" role="3LF7KH">
          <node concept="2Ry0Ak" id="74BOdhSUg9s" role="iGT6I">
            <property role="2Ry0Am" value="devkits" />
            <node concept="2Ry0Ak" id="74BOdhSUgat" role="2Ry0An">
              <property role="2Ry0Am" value="de.citec.dot.devkit" />
              <node concept="2Ry0Ak" id="74BOdhSUgcP" role="2Ry0An">
                <property role="2Ry0Am" value="de.citec.dot.devkit.devkit" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3LEDTy" id="74BOdhSUgdF" role="3LEDUa">
          <ref role="3LEDTV" node="74BOdhSGtEA" resolve="de.citec.dot" />
        </node>
        <node concept="3LEDTy" id="74BOdhSUgdG" role="3LEDUa">
          <ref role="3LEDTV" to="g0to:2NTGYE$JTGY" resolve="com.dslfoundry.plaintextgen" />
        </node>
        <node concept="3LEDTy" id="NpdUR6VAtP" role="3LEDUa">
          <ref role="3LEDTV" node="74BOdhSUaao" resolve="de.citec.dot.plaintextgen" />
        </node>
      </node>
    </node>
  </node>
</model>

