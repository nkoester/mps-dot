<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:b9b1021c-4a58-4e0c-9959-c3447a899b3c(de.citec.dot.sandbox.sandbox)">
  <persistence version="9" />
  <languages>
    <use id="c1319453-46ac-4ca7-913b-91def4805e4e" name="de.citec.dot" version="0" />
  </languages>
  <imports />
  <registry>
    <language id="c1319453-46ac-4ca7-913b-91def4805e4e" name="de.citec.dot">
      <concept id="8153715261354259836" name="de.citec.dot.structure.NodeIDReference" flags="ng" index="9_6mC">
        <reference id="8153715261354259837" name="nodeID" index="9_6mD" />
      </concept>
      <concept id="8153715261354224721" name="de.citec.dot.structure.Port" flags="ng" index="9_fM5">
        <child id="8153715261355043728" name="portID" index="9A7H4" />
        <child id="8153715261355099011" name="compasElement" index="9TPdn" />
      </concept>
      <concept id="8153715261354172151" name="de.citec.dot.structure.Edge" flags="ng" index="9_oSz">
        <child id="8153715261355742280" name="right" index="9Vois" />
        <child id="8153715261355742252" name="left" index="9VojS" />
        <child id="8153715261356586988" name="attributeList" index="9WesS" />
      </concept>
      <concept id="8153715261354172140" name="de.citec.dot.structure.Node" flags="ng" index="9_oSS">
        <child id="8153715261354224692" name="id" index="9_fNw" />
        <child id="8153715261354224702" name="attributeList" index="9_fNE" />
      </concept>
      <concept id="8153715261354172057" name="de.citec.dot.structure.Graph" flags="ng" index="9_oTd" />
      <concept id="8153715261354172079" name="de.citec.dot.structure.AbstractGraph" flags="ng" index="9_oTV">
        <child id="8153715261354172119" name="statementList" index="9_oS3" />
      </concept>
      <concept id="8153715261354172304" name="de.citec.dot.structure.NodeID" flags="ng" index="9_oX4">
        <child id="8153715261354822509" name="port" index="9ATIT" />
      </concept>
      <concept id="8153715261354172326" name="de.citec.dot.structure.SubgraphID" flags="ng" index="9_oXM" />
      <concept id="8153715261354172183" name="de.citec.dot.structure.StatementList" flags="ng" index="9_oZ3">
        <child id="8153715261354798771" name="statements" index="9B3TB" />
      </concept>
      <concept id="8153715261354172162" name="de.citec.dot.structure.Attribution" flags="ng" index="9_oZm">
        <child id="8153715261355550555" name="attributList" index="9Sbuf" />
      </concept>
      <concept id="8153715261354172204" name="de.citec.dot.structure.AttributeList" flags="ng" index="9_oZS">
        <child id="8153715261354172215" name="attributeElement" index="9_oZz" />
      </concept>
      <concept id="8153715261354115775" name="de.citec.dot.structure.DotSheet" flags="ng" index="9__9F">
        <child id="8153715261354195528" name="graph" index="9_mEs" />
      </concept>
      <concept id="8153715261355043683" name="de.citec.dot.structure.PortID" flags="ng" index="9A7IR" />
      <concept id="8153715261354907734" name="de.citec.dot.structure.AttributeAssignment" flags="ng" index="9A$y2">
        <property id="8153715261354907769" name="value" index="9A$yH" />
        <property id="8153715261354907759" name="variable" index="9A$yV" />
      </concept>
      <concept id="8153715261354769492" name="de.citec.dot.structure.Subgraph" flags="ng" index="9BaM0">
        <child id="8153715261354769507" name="subgraphID" index="9BaMR" />
        <child id="8153715261354769517" name="statementList" index="9BaMT" />
      </concept>
      <concept id="8153715261355098886" name="de.citec.dot.structure.CompassElement" flags="ng" index="9TPfi" />
      <concept id="8153715261355788803" name="de.citec.dot.structure.EdgeExtension" flags="ng" index="9VdFn">
        <child id="8153715261355871778" name="left" index="9UTVQ" />
        <child id="8153715261355788828" name="right" index="9VdF8" />
      </concept>
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ng" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
  </registry>
  <node concept="9__9F" id="74BOdhSGqT1">
    <property role="TrG5h" value="SandboxGraph" />
    <node concept="9_oTd" id="74BOdhSJpsO" role="9_mEs">
      <node concept="9_oZ3" id="74BOdhSJpsR" role="9_oS3">
        <node concept="9A$y2" id="74BOdhSMkSz" role="9B3TB">
          <property role="9A$yV" value="ratio" />
          <property role="9A$yH" value="fill" />
        </node>
        <node concept="9_oZm" id="74BOdhSM10C" role="9B3TB">
          <node concept="9_oZS" id="74BOdhSM10E" role="9Sbuf">
            <node concept="9A$y2" id="74BOdhSM8G3" role="9_oZz">
              <property role="9A$yV" value="color" />
              <property role="9A$yH" value="&quot;0.1 0.1 0.1&quot;" />
            </node>
          </node>
        </node>
        <node concept="9BaM0" id="74BOdhSKUm3" role="9B3TB">
          <node concept="9_oZ3" id="74BOdhSKUm5" role="9BaMT">
            <node concept="9_oSS" id="74BOdhSL1vu" role="9B3TB">
              <node concept="9_oX4" id="74BOdhSL1vw" role="9_fNw">
                <property role="TrG5h" value="subNode01" />
              </node>
            </node>
            <node concept="9_oSS" id="74BOdhSL1wP" role="9B3TB">
              <node concept="9_oX4" id="74BOdhSL1wQ" role="9_fNw">
                <property role="TrG5h" value="subNode02" />
              </node>
            </node>
          </node>
          <node concept="9_oXM" id="74BOdhSKUnW" role="9BaMR">
            <property role="TrG5h" value="somSubGraph01" />
          </node>
        </node>
        <node concept="9_oSS" id="74BOdhSJptc" role="9B3TB">
          <node concept="9_oX4" id="74BOdhSJptd" role="9_fNw">
            <property role="TrG5h" value="node01" />
          </node>
          <node concept="9_oZS" id="74BOdhSJIfQ" role="9_fNE">
            <node concept="9A$y2" id="74BOdhSJIhM" role="9_oZz">
              <property role="9A$yV" value="a" />
              <property role="9A$yH" value="b" />
            </node>
          </node>
        </node>
        <node concept="9_oSS" id="74BOdhSJptW" role="9B3TB">
          <node concept="9_oX4" id="74BOdhSJptY" role="9_fNw">
            <property role="TrG5h" value="node02" />
            <node concept="9_fM5" id="74BOdhSKfjf" role="9ATIT">
              <node concept="9A7IR" id="74BOdhSKfjp" role="9A7H4">
                <property role="TrG5h" value="port01" />
              </node>
              <node concept="9TPfi" id="74BOdhSKfjz" role="9TPdn" />
            </node>
          </node>
          <node concept="9_oZS" id="74BOdhSLQej" role="9_fNE" />
        </node>
        <node concept="9_oSz" id="74BOdhSMTju" role="9B3TB">
          <node concept="9_6mC" id="74BOdhSMWbj" role="9VojS">
            <ref role="9_6mD" node="74BOdhSJptd" resolve="node01" />
          </node>
          <node concept="9VdFn" id="74BOdhSMWbu" role="9Vois">
            <node concept="9BaM0" id="74BOdhSNf9P" role="9VdF8">
              <node concept="9_oZ3" id="74BOdhSNf9R" role="9BaMT">
                <node concept="9_oSS" id="74BOdhSNfab" role="9B3TB">
                  <node concept="9_oX4" id="74BOdhSNfac" role="9_fNw">
                    <property role="TrG5h" value="subNodeAgain" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="9_6mC" id="74BOdhSNf9F" role="9UTVQ">
              <ref role="9_6mD" node="74BOdhSJptY" resolve="node02" />
            </node>
          </node>
          <node concept="9_oZS" id="74BOdhSQ0CH" role="9WesS">
            <node concept="9A$y2" id="74BOdhSQ0Dt" role="9_oZz">
              <property role="9A$yV" value="a" />
              <property role="9A$yH" value="b" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
</model>

