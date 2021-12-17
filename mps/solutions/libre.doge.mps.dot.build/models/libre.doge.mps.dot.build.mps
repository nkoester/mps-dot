<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:fb506ffe-646a-4e5d-af6a-0f0988c60cde(libre.doge.mps.dot.build)">
  <persistence version="9" />
  <languages>
    <use id="798100da-4f0a-421a-b991-71f8c50ce5d2" name="jetbrains.mps.build" version="0" />
    <use id="0cf935df-4699-4e9c-a132-fa109541cba3" name="jetbrains.mps.build.mps" version="7" />
    <use id="479c7a8c-02f9-43b5-9139-d910cb22f298" name="jetbrains.mps.core.xml" version="0" />
  </languages>
  <imports>
    <import index="ffeo" ref="r:874d959d-e3b4-4d04-b931-ca849af130dd(jetbrains.mps.ide.build)" />
    <import index="90a9" ref="r:fb24ac52-5985-4947-bba9-25be6fd32c1a(de.itemis.mps.extensions.build)" />
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
      <concept id="8654221991637384182" name="jetbrains.mps.build.structure.BuildFileIncludesSelector" flags="ng" index="3qWCbU">
        <property id="8654221991637384184" name="pattern" index="3qWCbO" />
      </concept>
      <concept id="4701820937132344003" name="jetbrains.mps.build.structure.BuildLayout_Container" flags="ng" index="1y1bJS">
        <child id="7389400916848037006" name="children" index="39821P" />
      </concept>
      <concept id="841011766566059607" name="jetbrains.mps.build.structure.BuildStringNotEmpty" flags="ng" index="3_J27D" />
      <concept id="5248329904287794596" name="jetbrains.mps.build.structure.BuildInputFiles" flags="ng" index="3LXTmp">
        <child id="5248329904287794598" name="dir" index="3LXTmr" />
        <child id="5248329904287794679" name="selectors" index="3LXTna" />
      </concept>
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
        <child id="3570488090019868128" name="packagingType" index="pUk7w" />
      </concept>
      <concept id="6592112598314499036" name="jetbrains.mps.build.mps.structure.BuildMps_IdeaPluginModule" flags="ng" index="m$_yB">
        <reference id="6592112598314499037" name="target" index="m$_yA" />
      </concept>
      <concept id="6592112598314499027" name="jetbrains.mps.build.mps.structure.BuildMps_IdeaPluginDependency" flags="ng" index="m$_yC">
        <reference id="6592112598314499066" name="target" index="m$_y1" />
      </concept>
      <concept id="3570488090019868065" name="jetbrains.mps.build.mps.structure.BuildMpsLayout_AutoPluginLayoutType" flags="ng" index="pUk6x" />
      <concept id="1500819558095907805" name="jetbrains.mps.build.mps.structure.BuildMps_Group" flags="ng" index="2G$12M">
        <child id="1500819558095907806" name="modules" index="2G$12L" />
      </concept>
      <concept id="868032131020265945" name="jetbrains.mps.build.mps.structure.BuildMPSPlugin" flags="ng" index="3b7kt6" />
      <concept id="5253498789149381388" name="jetbrains.mps.build.mps.structure.BuildMps_Module" flags="ng" index="3bQrTs">
        <child id="5253498789149547825" name="sources" index="3bR31x" />
        <child id="5253498789149547704" name="dependencies" index="3bR37C" />
      </concept>
      <concept id="5253498789149585690" name="jetbrains.mps.build.mps.structure.BuildMps_ModuleDependencyOnModule" flags="ng" index="3bR9La">
        <reference id="5253498789149547705" name="module" index="3bR37D" />
      </concept>
      <concept id="763829979718664966" name="jetbrains.mps.build.mps.structure.BuildMps_ModuleResources" flags="ng" index="3rtmxn">
        <child id="763829979718664967" name="files" index="3rtmxm" />
      </concept>
      <concept id="5507251971038816436" name="jetbrains.mps.build.mps.structure.BuildMps_Generator" flags="ng" index="1yeLz9" />
      <concept id="4278635856200817744" name="jetbrains.mps.build.mps.structure.BuildMps_ModuleModelRoot" flags="ng" index="1BupzO">
        <property id="8137134783396907368" name="convert2binary" index="1Hdu6h" />
        <property id="8137134783396676838" name="extracted" index="1HemKv" />
        <property id="2889113830911481881" name="deployFolderName" index="3ZfqAx" />
        <child id="8137134783396676835" name="location" index="1HemKq" />
      </concept>
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
      <concept id="322010710375832954" name="jetbrains.mps.build.mps.structure.BuildMps_DevKitExportSolution" flags="ng" index="3LEDTM">
        <reference id="322010710375832955" name="solution" index="3LEDTN" />
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
    <property role="TrG5h" value="de.doge.mps.dot.build" />
    <property role="2DA0ip" value="../../../build" />
    <node concept="398rNT" id="2$bMr2pDqiY" role="1l3spd">
      <property role="TrG5h" value="root.project" />
      <node concept="55IIr" id="2$bMr2pDqj2" role="398pKh">
        <node concept="2Ry0Ak" id="2$bMr2pDqj5" role="iGT6I">
          <property role="2Ry0Am" value=".." />
        </node>
      </node>
    </node>
    <node concept="398rNT" id="2$bMr2pDqjd" role="1l3spd">
      <property role="TrG5h" value="root.build" />
      <node concept="398BVA" id="2$bMr2pDqjk" role="398pKh">
        <ref role="398BVh" node="2$bMr2pDqiY" resolve="root.project" />
        <node concept="2Ry0Ak" id="2$bMr2pDqjp" role="iGT6I">
          <property role="2Ry0Am" value="build" />
        </node>
      </node>
    </node>
    <node concept="398rNT" id="2$bMr2pDqij" role="1l3spd">
      <property role="TrG5h" value="root.mps" />
      <node concept="398BVA" id="2$bMr2pDqjF" role="398pKh">
        <ref role="398BVh" node="2$bMr2pDqjd" resolve="root.build" />
        <node concept="2Ry0Ak" id="2$bMr2pDqjK" role="iGT6I">
          <property role="2Ry0Am" value="mps" />
        </node>
      </node>
    </node>
    <node concept="398rNT" id="2$bMr2pDqnv" role="1l3spd">
      <property role="TrG5h" value="root.module" />
      <node concept="398BVA" id="2$bMr2pDqnK" role="398pKh">
        <ref role="398BVh" node="2$bMr2pDqiY" resolve="root.project" />
        <node concept="2Ry0Ak" id="2$bMr2pDqnP" role="iGT6I">
          <property role="2Ry0Am" value="mps" />
        </node>
      </node>
    </node>
    <node concept="398rNT" id="2$bMr2pEW8X" role="1l3spd">
      <property role="TrG5h" value="root.dependencies" />
      <node concept="398BVA" id="2$bMr2pEW8Y" role="398pKh">
        <ref role="398BVh" node="2$bMr2pDqiY" resolve="root.project" />
        <node concept="2Ry0Ak" id="2$bMr2pEW8Z" role="iGT6I">
          <property role="2Ry0Am" value="mps" />
          <node concept="2Ry0Ak" id="2$bMr2pEW9q" role="2Ry0An">
            <property role="2Ry0Am" value="dependencies" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2kB4xC" id="2$bMr2pDqy7" role="1l3spd">
      <property role="TrG5h" value="prefix.name" />
      <node concept="aVJcg" id="2$bMr2pDqyt" role="aVJcv">
        <node concept="NbPM2" id="2$bMr2pDqys" role="aVJcq">
          <node concept="3Mxwew" id="2$bMr2pDqyr" role="3MwsjC">
            <property role="3MwjfP" value="libre.doge.mps" />
          </node>
        </node>
      </node>
    </node>
    <node concept="10PD9b" id="74BOdhSGtEs" role="10PD9s" />
    <node concept="3b7kt6" id="74BOdhSGtEt" role="10PD9s" />
    <node concept="2kB4xC" id="78xf10wcBY1" role="1l3spd">
      <property role="TrG5h" value="current.version" />
      <node concept="aVJcg" id="78xf10wcBY2" role="aVJcv">
        <node concept="NbPM2" id="78xf10wcBY3" role="aVJcq">
          <node concept="3Mxwew" id="78xf10wcBY4" role="3MwsjC">
            <property role="3MwjfP" value="2020.3" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2sgV4H" id="74BOdhSGtEv" role="1l3spa">
      <ref role="1l3spb" to="ffeo:3IKDaVZmzS6" resolve="mps" />
      <node concept="398BVA" id="74BOdhSGtEw" role="2JcizS">
        <ref role="398BVh" node="2$bMr2pDqij" resolve="root.mps" />
      </node>
    </node>
    <node concept="2sgV4H" id="74BOdhSN_2j" role="1l3spa">
      <ref role="1l3spb" to="ffeo:5D1dJ7xWer5" resolve="mpsCore" />
      <node concept="398BVA" id="74BOdhSN_2X" role="2JcizS">
        <ref role="398BVh" node="2$bMr2pDqij" resolve="root.mps" />
      </node>
    </node>
    <node concept="2sgV4H" id="6ucYLjotvKQ" role="1l3spa">
      <ref role="1l3spb" to="90a9:2Xjt3l56m0V" resolve="de.itemis.mps.extensions" />
      <node concept="398BVA" id="2$bMr2pEW9v" role="2JcizS">
        <ref role="398BVh" node="2$bMr2pEW8X" resolve="root.dependencies" />
        <node concept="2Ry0Ak" id="2$bMr2pEW9$" role="iGT6I">
          <property role="2Ry0Am" value="de.itemis.mps.extensions" />
          <node concept="2Ry0Ak" id="2$bMr2pEW9B" role="2Ry0An">
            <property role="2Ry0Am" value="" />
          </node>
        </node>
      </node>
    </node>
    <node concept="1l3spV" id="74BOdhSGtEL" role="1l3spN">
      <node concept="3981dG" id="2$bMr2pDqC8" role="39821P">
        <node concept="3_J27D" id="2$bMr2pDqCa" role="Nbhlr">
          <node concept="3Mxwew" id="2$bMr2pDqD9" role="3MwsjC">
            <property role="3MwjfP" value="libre.doge.mps.dot.zip" />
          </node>
        </node>
        <node concept="m$_wl" id="2$bMr2pDqCS" role="39821P">
          <ref role="m_rDy" node="74BOdhSGtEC" resolve="libre.doge.mps.dot" />
          <node concept="pUk6x" id="2$bMr2pDqCW" role="pUk7w" />
        </node>
      </node>
    </node>
    <node concept="m$_wf" id="74BOdhSGtEC" role="3989C9">
      <property role="m$_wk" value="libre.doge.mps.dot" />
      <node concept="2pNNFK" id="4J0OvZJgW_f" role="20twgj">
        <property role="2pNNFO" value="vendor" />
        <node concept="2pNUuL" id="4J0OvZJgW_Q" role="2pNNFR">
          <property role="2pNUuO" value="email" />
          <node concept="2pMdtt" id="4J0OvZJgW_T" role="2pMdts">
            <property role="2pMdty" value="nkoester@posteo.de" />
          </node>
        </node>
        <node concept="2pNUuL" id="4J0OvZJgW_Z" role="2pNNFR">
          <property role="2pNUuO" value="url" />
          <node concept="2pMdtt" id="4J0OvZJgWA6" role="2pMdts" />
        </node>
        <node concept="3o6iSG" id="4J0OvZJgW_K" role="3o6s8t">
          <property role="3o6i5n" value="nkoester" />
        </node>
      </node>
      <node concept="3_J27D" id="74BOdhSGtED" role="m$_yQ">
        <node concept="3Mxwew" id="74BOdhSGtEE" role="3MwsjC">
          <property role="3MwjfP" value="libre.doge.mps.dot" />
        </node>
      </node>
      <node concept="3_J27D" id="74BOdhSGtEF" role="m$_w8">
        <node concept="3Mxwey" id="6kz3fYZDZ21" role="3MwsjC">
          <ref role="3Mxwex" node="78xf10wcBY1" resolve="current.version" />
        </node>
      </node>
      <node concept="m$f5U" id="74BOdhSGtEH" role="m$_yh">
        <ref role="m$f5T" node="74BOdhSGtEB" resolve="libre.doge.mps.dot" />
      </node>
      <node concept="m$_yB" id="2$bMr2pElHA" role="m$_yh">
        <ref role="m$_yA" node="2$bMr2pElCI" resolve="libre.doge.mps.dot.plaintextgen" />
      </node>
      <node concept="m$_yB" id="2$bMr2pDqxI" role="m$_yh">
        <ref role="m$_yA" node="2$bMr2pDqtJ" resolve="libre.doge.mps.dot.genplan" />
      </node>
      <node concept="m$_yB" id="58ZMa6mQDjG" role="m$_yh">
        <ref role="m$_yA" node="58ZMa6mPPqA" resolve="libre.doge.mps.dot.devkit" />
      </node>
      <node concept="m$_yC" id="74BOdhSGtEI" role="m$_yJ">
        <ref role="m$_y1" to="ffeo:4k71ibbKLe8" resolve="jetbrains.mps.core" />
      </node>
      <node concept="m$_yC" id="74BOdhSN_3O" role="m$_yJ">
        <ref role="m$_y1" to="ffeo:5HVSRHdVm9a" resolve="jetbrains.mps.build" />
      </node>
      <node concept="3_J27D" id="74BOdhSGtEJ" role="m_cZH">
        <node concept="3Mxwew" id="74BOdhSGtEK" role="3MwsjC">
          <property role="3MwjfP" value="libre.doge.mps.dot" />
        </node>
      </node>
    </node>
    <node concept="2G$12M" id="74BOdhSGtEB" role="3989C9">
      <property role="TrG5h" value="libre.doge.mps.dot" />
      <node concept="1E1JtD" id="58ZMa6mOVsp" role="2G$12L">
        <property role="BnDLt" value="true" />
        <property role="TrG5h" value="libre.doge.mps.dot" />
        <property role="3LESm3" value="c1319453-46ac-4ca7-913b-91def4805e4e" />
        <node concept="398BVA" id="2$bMr2pDqmS" role="3LF7KH">
          <ref role="398BVh" node="2$bMr2pDqnv" resolve="root.module" />
          <node concept="2Ry0Ak" id="2$bMr2pDqn5" role="iGT6I">
            <property role="2Ry0Am" value="languages" />
            <node concept="2Ry0Ak" id="2$bMr2pDqn6" role="2Ry0An">
              <property role="2Ry0Am" value="libre.doge.mps.dot" />
              <node concept="2Ry0Ak" id="2$bMr2pDqn7" role="2Ry0An">
                <property role="2Ry0Am" value="libre.doge.mps.dot.mpl" />
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="58ZMa6mOVsA" role="3bR37C">
          <node concept="3bR9La" id="58ZMa6mOVsB" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:mXGwHwhVPj" resolve="JDK" />
          </node>
        </node>
        <node concept="1SiIV0" id="58ZMa6mOVsC" role="3bR37C">
          <node concept="3bR9La" id="58ZMa6mOVsD" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:7Kfy9QB6KYb" resolve="jetbrains.mps.baseLanguage" />
          </node>
        </node>
        <node concept="1SiIV0" id="58ZMa6mOVsE" role="3bR37C">
          <node concept="3bR9La" id="58ZMa6mOVsF" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:7Kfy9QB6LfQ" resolve="jetbrains.mps.kernel" />
          </node>
        </node>
        <node concept="1BupzO" id="58ZMa6mOVsK" role="3bR31x">
          <property role="3ZfqAx" value="models" />
          <property role="1Hdu6h" value="true" />
          <property role="1HemKv" value="true" />
          <node concept="3LXTmp" id="2$bMr2pDqqN" role="1HemKq">
            <node concept="398BVA" id="2$bMr2pDqq_" role="3LXTmr">
              <ref role="398BVh" node="2$bMr2pDqnv" resolve="root.module" />
              <node concept="2Ry0Ak" id="2$bMr2pDqqA" role="iGT6I">
                <property role="2Ry0Am" value="languages" />
                <node concept="2Ry0Ak" id="2$bMr2pDqqB" role="2Ry0An">
                  <property role="2Ry0Am" value="libre.doge.mps.dot" />
                  <node concept="2Ry0Ak" id="2$bMr2pDqqC" role="2Ry0An">
                    <property role="2Ry0Am" value="models" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3qWCbU" id="2$bMr2pDqqO" role="3LXTna">
              <property role="3qWCbO" value="**/*.mps, **/*.mpsr, **/.model" />
            </node>
          </node>
        </node>
        <node concept="3rtmxn" id="2$bMr2pFurp" role="3bR31x">
          <node concept="3LXTmp" id="2$bMr2pFurq" role="3rtmxm">
            <node concept="398BVA" id="2$bMr2pFurr" role="3LXTmr">
              <ref role="398BVh" node="2$bMr2pDqnv" resolve="root.module" />
              <node concept="2Ry0Ak" id="2$bMr2pFurs" role="iGT6I">
                <property role="2Ry0Am" value="languages" />
                <node concept="2Ry0Ak" id="2$bMr2pFurt" role="2Ry0An">
                  <property role="2Ry0Am" value="libre.doge.mps.dot" />
                </node>
              </node>
            </node>
            <node concept="3qWCbU" id="2$bMr2pFurv" role="3LXTna">
              <property role="3qWCbO" value="icons/**" />
            </node>
          </node>
        </node>
      </node>
      <node concept="1E1JtD" id="2$bMr2pElCI" role="2G$12L">
        <property role="BnDLt" value="true" />
        <property role="TrG5h" value="libre.doge.mps.dot.plaintextgen" />
        <property role="3LESm3" value="de08ce63-db43-4eb1-bab6-26bd8eae3b16" />
        <node concept="398BVA" id="2$bMr2pElDq" role="3LF7KH">
          <ref role="398BVh" node="2$bMr2pDqnv" resolve="root.module" />
          <node concept="2Ry0Ak" id="2$bMr2pElDw" role="iGT6I">
            <property role="2Ry0Am" value="languages" />
            <node concept="2Ry0Ak" id="2$bMr2pElD_" role="2Ry0An">
              <property role="2Ry0Am" value="libre.doge.mps.dot.plaintextgen" />
              <node concept="2Ry0Ak" id="2$bMr2pElDE" role="2Ry0An">
                <property role="2Ry0Am" value="libre.doge.mps.dot.plaintextgen.mpl" />
              </node>
            </node>
          </node>
        </node>
        <node concept="1BupzO" id="2$bMr2pElE8" role="3bR31x">
          <property role="3ZfqAx" value="models" />
          <property role="1Hdu6h" value="true" />
          <property role="1HemKv" value="true" />
          <node concept="3LXTmp" id="2$bMr2pElE9" role="1HemKq">
            <node concept="398BVA" id="2$bMr2pElDU" role="3LXTmr">
              <ref role="398BVh" node="2$bMr2pDqnv" resolve="root.module" />
              <node concept="2Ry0Ak" id="2$bMr2pElDV" role="iGT6I">
                <property role="2Ry0Am" value="languages" />
                <node concept="2Ry0Ak" id="2$bMr2pElDW" role="2Ry0An">
                  <property role="2Ry0Am" value="libre.doge.mps.dot.plaintextgen" />
                  <node concept="2Ry0Ak" id="2$bMr2pElDX" role="2Ry0An">
                    <property role="2Ry0Am" value="models" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3qWCbU" id="2$bMr2pElEa" role="3LXTna">
              <property role="3qWCbO" value="**/*.mps, **/*.mpsr, **/.model" />
            </node>
          </node>
        </node>
        <node concept="1yeLz9" id="2$bMr2pElEb" role="1TViLv">
          <property role="TrG5h" value="libre.doge.mps.dot.plaintextgen#01" />
          <property role="3LESm3" value="642a2f17-597e-416d-90c9-340143c8ce2e" />
          <node concept="1SiIV0" id="2$bMr2pElEc" role="3bR37C">
            <node concept="3bR9La" id="2$bMr2pElEd" role="1SiIV1">
              <ref role="3bR37D" node="58ZMa6mOVsp" resolve="libre.doge.mps.dot" />
            </node>
          </node>
          <node concept="1BupzO" id="2$bMr2pElEv" role="3bR31x">
            <property role="3ZfqAx" value="generator/template" />
            <property role="1Hdu6h" value="true" />
            <property role="1HemKv" value="true" />
            <node concept="3LXTmp" id="2$bMr2pElEw" role="1HemKq">
              <node concept="398BVA" id="2$bMr2pElEe" role="3LXTmr">
                <ref role="398BVh" node="2$bMr2pDqnv" resolve="root.module" />
                <node concept="2Ry0Ak" id="2$bMr2pElEf" role="iGT6I">
                  <property role="2Ry0Am" value="languages" />
                  <node concept="2Ry0Ak" id="2$bMr2pElEg" role="2Ry0An">
                    <property role="2Ry0Am" value="libre.doge.mps.dot.plaintextgen" />
                    <node concept="2Ry0Ak" id="2$bMr2pElEh" role="2Ry0An">
                      <property role="2Ry0Am" value="generator" />
                      <node concept="2Ry0Ak" id="2$bMr2pElEi" role="2Ry0An">
                        <property role="2Ry0Am" value="template" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3qWCbU" id="2$bMr2pElEx" role="3LXTna">
                <property role="3qWCbO" value="**/*.mps, **/*.mpsr, **/.model" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3rtmxn" id="2$bMr2pFuqW" role="3bR31x">
          <node concept="3LXTmp" id="2$bMr2pFuqX" role="3rtmxm">
            <node concept="398BVA" id="2$bMr2pFuqY" role="3LXTmr">
              <ref role="398BVh" node="2$bMr2pDqnv" resolve="root.module" />
              <node concept="2Ry0Ak" id="2$bMr2pFuqZ" role="iGT6I">
                <property role="2Ry0Am" value="languages" />
                <node concept="2Ry0Ak" id="2$bMr2pFur0" role="2Ry0An">
                  <property role="2Ry0Am" value="libre.doge.mps.dot.plaintextgen" />
                </node>
              </node>
            </node>
            <node concept="3qWCbU" id="2$bMr2pFur2" role="3LXTna">
              <property role="3qWCbO" value="icons/**" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3LEwk6" id="58ZMa6mPPqA" role="2G$12L">
        <property role="BnDLt" value="true" />
        <property role="TrG5h" value="libre.doge.mps.dot.devkit" />
        <property role="3LESm3" value="c5093ec9-39ec-4fce-8f7a-67baf9750637" />
        <node concept="398BVA" id="2$bMr2pDqqp" role="3LF7KH">
          <ref role="398BVh" node="2$bMr2pDqnv" resolve="root.module" />
          <node concept="2Ry0Ak" id="2$bMr2pDqqu" role="iGT6I">
            <property role="2Ry0Am" value="devkits" />
            <node concept="2Ry0Ak" id="2$bMr2pDqqv" role="2Ry0An">
              <property role="2Ry0Am" value="libre.doge.mps.dot.devkit" />
              <node concept="2Ry0Ak" id="2$bMr2pDqqw" role="2Ry0An">
                <property role="2Ry0Am" value="libre.doge.mps.dot.devkit.devkit" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3LEDTy" id="58ZMa6mPPr3" role="3LEDUa">
          <ref role="3LEDTV" node="58ZMa6mOVsp" resolve="libre.doge.mps.dot" />
        </node>
        <node concept="3LEDTM" id="2$bMr2pDqxk" role="3LEDUa">
          <ref role="3LEDTN" node="2$bMr2pDqtJ" resolve="libre.doge.mps.dot.genplan" />
        </node>
        <node concept="3LEDTy" id="2$bMr2pElGj" role="3LEDUa">
          <ref role="3LEDTV" node="2$bMr2pElCI" resolve="libre.doge.mps.dot.plaintextgen" />
        </node>
      </node>
      <node concept="1E1JtA" id="2$bMr2pDqtJ" role="2G$12L">
        <property role="BnDLt" value="true" />
        <property role="TrG5h" value="libre.doge.mps.dot.genplan" />
        <property role="3LESm3" value="88b29dc3-c215-4247-960a-12e2b6b00045" />
        <node concept="398BVA" id="2$bMr2pDqv5" role="3LF7KH">
          <ref role="398BVh" node="2$bMr2pDqnv" resolve="root.module" />
          <node concept="2Ry0Ak" id="2$bMr2pDqvb" role="iGT6I">
            <property role="2Ry0Am" value="solutions" />
            <node concept="2Ry0Ak" id="2$bMr2pDqvg" role="2Ry0An">
              <property role="2Ry0Am" value="libre.doge.mps.dot.genplan" />
              <node concept="2Ry0Ak" id="2$bMr2pDqvl" role="2Ry0An">
                <property role="2Ry0Am" value="libre.doge.mps.dot.genplan.msd" />
              </node>
            </node>
          </node>
        </node>
        <node concept="1BupzO" id="2$bMr2pDqwi" role="3bR31x">
          <property role="3ZfqAx" value="models" />
          <property role="1Hdu6h" value="true" />
          <property role="1HemKv" value="true" />
          <node concept="3LXTmp" id="2$bMr2pDqwj" role="1HemKq">
            <node concept="398BVA" id="2$bMr2pDqw4" role="3LXTmr">
              <ref role="398BVh" node="2$bMr2pDqnv" resolve="root.module" />
              <node concept="2Ry0Ak" id="2$bMr2pDqw5" role="iGT6I">
                <property role="2Ry0Am" value="solutions" />
                <node concept="2Ry0Ak" id="2$bMr2pDqw6" role="2Ry0An">
                  <property role="2Ry0Am" value="libre.doge.mps.dot.genplan" />
                  <node concept="2Ry0Ak" id="2$bMr2pDqw7" role="2Ry0An">
                    <property role="2Ry0Am" value="models" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3qWCbU" id="2$bMr2pDqwk" role="3LXTna">
              <property role="3qWCbO" value="**/*.mps, **/*.mpsr, **/.model" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
</model>

