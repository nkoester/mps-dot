<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:5245d403-8164-4aea-a367-59c0012df532(libre.doge.dot.build.entry)">
  <persistence version="9" />
  <languages>
    <use id="798100da-4f0a-421a-b991-71f8c50ce5d2" name="jetbrains.mps.build" version="0" />
    <use id="0cf935df-4699-4e9c-a132-fa109541cba3" name="jetbrains.mps.build.mps" version="7" />
  </languages>
  <imports>
    <import index="ffeo" ref="r:874d959d-e3b4-4d04-b931-ca849af130dd(jetbrains.mps.ide.build)" />
    <import index="90a9" ref="r:fb24ac52-5985-4947-bba9-25be6fd32c1a(de.itemis.mps.extensions.build)" />
    <import index="al5i" ref="r:742f344d-4dc4-4862-992c-4bc94b094870(com.mbeddr.mpsutil.dev.build)" />
  </imports>
  <registry>
    <language id="798100da-4f0a-421a-b991-71f8c50ce5d2" name="jetbrains.mps.build">
      <concept id="5481553824944787378" name="jetbrains.mps.build.structure.BuildSourceProjectRelativePath" flags="ng" index="55IIr" />
      <concept id="7321017245476976379" name="jetbrains.mps.build.structure.BuildRelativePath" flags="ng" index="iG8Mu">
        <child id="7321017245477039051" name="compositePart" index="iGT6I" />
      </concept>
      <concept id="4993211115183325728" name="jetbrains.mps.build.structure.BuildProjectDependency" flags="ng" index="2sgV4H">
        <reference id="5617550519002745380" name="script" index="1l3spb" />
        <child id="4129895186893471026" name="artifacts" index="2JcizS" />
      </concept>
      <concept id="8618885170173601777" name="jetbrains.mps.build.structure.BuildCompositePath" flags="nn" index="2Ry0Ak">
        <property id="8618885170173601779" name="head" index="2Ry0Am" />
        <child id="8618885170173601778" name="tail" index="2Ry0An" />
      </concept>
      <concept id="6647099934206700647" name="jetbrains.mps.build.structure.BuildJavaPlugin" flags="ng" index="10PD9b" />
      <concept id="7389400916848136194" name="jetbrains.mps.build.structure.BuildFolderMacro" flags="ng" index="398rNT">
        <child id="7389400916848144618" name="defaultPath" index="398pKh" />
      </concept>
      <concept id="7389400916848153117" name="jetbrains.mps.build.structure.BuildSourceMacroRelativePath" flags="ng" index="398BVA">
        <reference id="7389400916848153130" name="macro" index="398BVh" />
      </concept>
      <concept id="5617550519002745364" name="jetbrains.mps.build.structure.BuildLayout" flags="ng" index="1l3spV" />
      <concept id="5617550519002745363" name="jetbrains.mps.build.structure.BuildProject" flags="ng" index="1l3spW">
        <property id="4915877860348071612" name="fileName" index="turDy" />
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
      <concept id="5248329904287794596" name="jetbrains.mps.build.structure.BuildInputFiles" flags="ng" index="3LXTmp">
        <child id="5248329904287794598" name="dir" index="3LXTmr" />
        <child id="5248329904287794679" name="selectors" index="3LXTna" />
      </concept>
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ng" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
    <language id="0cf935df-4699-4e9c-a132-fa109541cba3" name="jetbrains.mps.build.mps">
      <concept id="1500819558095907805" name="jetbrains.mps.build.mps.structure.BuildMps_Group" flags="ng" index="2G$12M">
        <child id="1500819558095907806" name="modules" index="2G$12L" />
      </concept>
      <concept id="1265949165890536423" name="jetbrains.mps.build.mps.structure.BuildMpsLayout_ModuleJars" flags="ng" index="L2wRC">
        <reference id="1265949165890536425" name="module" index="L2wRA" />
      </concept>
      <concept id="868032131020265945" name="jetbrains.mps.build.mps.structure.BuildMPSPlugin" flags="ng" index="3b7kt6" />
      <concept id="5253498789149381388" name="jetbrains.mps.build.mps.structure.BuildMps_Module" flags="ng" index="3bQrTs">
        <child id="5253498789149547825" name="sources" index="3bR31x" />
        <child id="5253498789149547704" name="dependencies" index="3bR37C" />
      </concept>
      <concept id="5253498789149585690" name="jetbrains.mps.build.mps.structure.BuildMps_ModuleDependencyOnModule" flags="ng" index="3bR9La">
        <reference id="5253498789149547705" name="module" index="3bR37D" />
      </concept>
      <concept id="4278635856200817744" name="jetbrains.mps.build.mps.structure.BuildMps_ModuleModelRoot" flags="ng" index="1BupzO">
        <property id="8137134783396907368" name="convert2binary" index="1Hdu6h" />
        <property id="8137134783396676838" name="extracted" index="1HemKv" />
        <property id="2889113830911481881" name="deployFolderName" index="3ZfqAx" />
        <child id="8137134783396676835" name="location" index="1HemKq" />
      </concept>
      <concept id="3189788309731840247" name="jetbrains.mps.build.mps.structure.BuildMps_Solution" flags="ng" index="1E1JtA" />
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
  <node concept="1l3spW" id="2$bMr2pDqig">
    <property role="TrG5h" value="de.doge.mps.dot.build.entry" />
    <property role="turDy" value="buildAll.xml" />
    <property role="2DA0ip" value="../../.." />
    <node concept="2sgV4H" id="2qgaZgvNqSG" role="1l3spa">
      <ref role="1l3spb" to="ffeo:3IKDaVZmzS6" resolve="mps" />
      <node concept="398BVA" id="2qgaZgvNqSR" role="2JcizS">
        <ref role="398BVh" node="2$bMr2pDqij" resolve="root.mps" />
      </node>
    </node>
    <node concept="398rNT" id="2$bMr2pDqiY" role="1l3spd">
      <property role="TrG5h" value="root.project" />
      <node concept="55IIr" id="2$bMr2pDqj2" role="398pKh">
        <node concept="2Ry0Ak" id="2$bMr2pDqj5" role="iGT6I" />
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
    <node concept="10PD9b" id="2$bMr2pDqih" role="10PD9s" />
    <node concept="3b7kt6" id="2$bMr2pDqii" role="10PD9s" />
    <node concept="398rNT" id="2$bMr2pDqij" role="1l3spd">
      <property role="TrG5h" value="root.mps" />
      <node concept="398BVA" id="2$bMr2pDqkH" role="398pKh">
        <ref role="398BVh" node="2$bMr2pDqiY" resolve="root.project" />
        <node concept="2Ry0Ak" id="2$bMr2pDqkO" role="iGT6I">
          <property role="2Ry0Am" value="build" />
          <node concept="2Ry0Ak" id="2$bMr2pDqkT" role="2Ry0An">
            <property role="2Ry0Am" value="mps" />
          </node>
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
    <node concept="2sgV4H" id="1Y5vs7yK2HP" role="1l3spa">
      <ref role="1l3spb" to="al5i:3AVJcIMlF8l" resolve="com.mbeddr.platform" />
      <node concept="398BVA" id="2$bMr2pF3Gm" role="2JcizS">
        <ref role="398BVh" node="2$bMr2pEW8X" resolve="root.dependencies" />
        <node concept="2Ry0Ak" id="2$bMr2pF3Gn" role="iGT6I">
          <property role="2Ry0Am" value="de.itemis.mps.extensions" />
          <node concept="2Ry0Ak" id="2$bMr2pF3Go" role="2Ry0An">
            <property role="2Ry0Am" value="" />
          </node>
        </node>
      </node>
    </node>
    <node concept="1l3spV" id="2$bMr2pDqiE" role="1l3spN">
      <node concept="L2wRC" id="2$bMr2pDqlI" role="39821P">
        <ref role="L2wRA" node="2$bMr2pF3BY" resolve="libre.doge.mps.dot.build" />
      </node>
    </node>
    <node concept="2G$12M" id="2$bMr2pDqlh" role="3989C9">
      <property role="TrG5h" value="libre.doge.mps.dot.build" />
      <node concept="1E1JtA" id="2$bMr2pF3BY" role="2G$12L">
        <property role="BnDLt" value="true" />
        <property role="TrG5h" value="libre.doge.mps.dot.build" />
        <property role="3LESm3" value="d7ba70f9-2674-4db6-8c37-518c70d355ae" />
        <node concept="398BVA" id="2$bMr2pDqln" role="3LF7KH">
          <ref role="398BVh" node="2$bMr2pDqnv" resolve="root.module" />
          <node concept="2Ry0Ak" id="2$bMr2pDqly" role="iGT6I">
            <property role="2Ry0Am" value="solutions" />
            <node concept="2Ry0Ak" id="2$bMr2pDqlB" role="2Ry0An">
              <property role="2Ry0Am" value="libre.doge.mps.dot.build" />
              <node concept="2Ry0Ak" id="2$bMr2pF3Ca" role="2Ry0An">
                <property role="2Ry0Am" value="libre.doge.mps.dot.build.msd" />
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="2$bMr2pF3Cc" role="3bR37C">
          <node concept="3bR9La" id="2$bMr2pF3Cd" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:78GwwOvB3tw" resolve="jetbrains.mps.ide.build" />
          </node>
        </node>
        <node concept="1BupzO" id="2$bMr2pF3Co" role="3bR31x">
          <property role="3ZfqAx" value="models" />
          <property role="1Hdu6h" value="true" />
          <property role="1HemKv" value="true" />
          <node concept="3LXTmp" id="2$bMr2pF3Cp" role="1HemKq">
            <node concept="398BVA" id="2$bMr2pF3Ce" role="3LXTmr">
              <ref role="398BVh" node="2$bMr2pDqiY" resolve="root.project" />
              <node concept="2Ry0Ak" id="2$bMr2pF3Cf" role="iGT6I">
                <property role="2Ry0Am" value="mps" />
                <node concept="2Ry0Ak" id="2$bMr2pF3Cg" role="2Ry0An">
                  <property role="2Ry0Am" value="solutions" />
                  <node concept="2Ry0Ak" id="2$bMr2pF3Ch" role="2Ry0An">
                    <property role="2Ry0Am" value="libre.doge.mps.dot.build" />
                    <node concept="2Ry0Ak" id="2$bMr2pF3Ci" role="2Ry0An">
                      <property role="2Ry0Am" value="models" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3qWCbU" id="2$bMr2pF3Cq" role="3LXTna">
              <property role="3qWCbO" value="**/*.mps, **/*.mpsr, **/.model" />
            </node>
          </node>
          <node concept="3LXTmp" id="2qgaZgvOiNs" role="1HemKq">
            <node concept="398BVA" id="2qgaZgvOiNe" role="3LXTmr">
              <ref role="398BVh" node="2$bMr2pDqnv" resolve="root.module" />
              <node concept="2Ry0Ak" id="2qgaZgvOiNf" role="iGT6I">
                <property role="2Ry0Am" value="solutions" />
                <node concept="2Ry0Ak" id="2qgaZgvOiNg" role="2Ry0An">
                  <property role="2Ry0Am" value="libre.doge.mps.dot.build" />
                  <node concept="2Ry0Ak" id="2qgaZgvOiNh" role="2Ry0An">
                    <property role="2Ry0Am" value="models" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3qWCbU" id="2qgaZgvOiNt" role="3LXTna">
              <property role="3qWCbO" value="**/*.mps, **/*.mpsr, **/.model" />
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="2$bMr2pF3Dg" role="3bR37C">
          <node concept="3bR9La" id="2$bMr2pF3Dh" role="1SiIV1">
            <ref role="3bR37D" to="90a9:PE3B26VOkn" resolve="de.itemis.mps.extensions.build" />
          </node>
        </node>
      </node>
    </node>
  </node>
</model>

