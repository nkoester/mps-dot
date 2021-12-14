<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:c75759de-514f-4cab-9d3b-0f9adbc70c25(libre.doge.mps.dot.structure)">
  <persistence version="9" />
  <languages>
    <use id="c72da2b9-7cce-4447-8389-f407dc1158b7" name="jetbrains.mps.lang.structure" version="9" />
    <devkit ref="78434eb8-b0e5-444b-850d-e7c4ad2da9ab(jetbrains.mps.devkit.aspect.structure)" />
  </languages>
  <imports>
    <import index="tpck" ref="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" implicit="true" />
  </imports>
  <registry>
    <language id="c72da2b9-7cce-4447-8389-f407dc1158b7" name="jetbrains.mps.lang.structure">
      <concept id="3348158742936976480" name="jetbrains.mps.lang.structure.structure.EnumerationMemberDeclaration" flags="ng" index="25R33">
        <property id="1421157252384165432" name="memberId" index="3tVfz5" />
        <property id="672037151186491528" name="presentation" index="1L1pqM" />
        <reference id="899069222106091871" name="oldMember" index="2wpffI" />
      </concept>
      <concept id="3348158742936976479" name="jetbrains.mps.lang.structure.structure.EnumerationDeclaration" flags="ng" index="25R3W">
        <reference id="1075010451642646892" name="defaultMember" index="1H5jkz" />
        <child id="3348158742936976577" name="members" index="25R1y" />
      </concept>
      <concept id="6491077959632463275" name="jetbrains.mps.lang.structure.structure.EnumPropertyMigrationInfo" flags="ng" index="3l_iC">
        <child id="6491077959632463286" name="oldProperty" index="3l_iP" />
      </concept>
      <concept id="1082978164218" name="jetbrains.mps.lang.structure.structure.DataTypeDeclaration" flags="ng" index="AxPO6">
        <property id="7791109065626895363" name="datatypeId" index="3F6X1D" />
      </concept>
      <concept id="1082978164219" name="jetbrains.mps.lang.structure.structure.EnumerationDataTypeDeclaration_Old" flags="ng" index="AxPO7">
        <property id="1197591154882" name="memberIdentifierPolicy" index="3lZH7k" />
        <reference id="1083171729157" name="memberDataType" index="M4eZT" />
        <child id="1083172003582" name="member" index="M5hS2" />
      </concept>
      <concept id="1588368162884797030" name="jetbrains.mps.lang.structure.structure.EnumMigrationInfo" flags="ng" index="2JgGob">
        <property id="6491077959634662372" name="valueOpMigration" index="3scbB" />
        <property id="6491077959634650670" name="nameOpMigration" index="3sfsH" />
        <child id="6491077959632451996" name="oldEnum" index="3lCyv" />
      </concept>
      <concept id="1083171877298" name="jetbrains.mps.lang.structure.structure.EnumerationMemberDeclaration_Old" flags="ig" index="M4N5e">
        <property id="1192116978809" name="javaIdentifier" index="2fHolG" />
        <property id="1083923523172" name="externalValue" index="1uS6qo" />
        <property id="1083923523171" name="internalValue" index="1uS6qv" />
      </concept>
      <concept id="1169125787135" name="jetbrains.mps.lang.structure.structure.AbstractConceptDeclaration" flags="ig" index="PkWjJ">
        <property id="6714410169261853888" name="conceptId" index="EcuMT" />
        <property id="4628067390765956807" name="final" index="R5$K2" />
        <property id="4628067390765956802" name="abstract" index="R5$K7" />
        <child id="1071489727083" name="linkDeclaration" index="1TKVEi" />
        <child id="1071489727084" name="propertyDeclaration" index="1TKVEl" />
      </concept>
      <concept id="1169125989551" name="jetbrains.mps.lang.structure.structure.InterfaceConceptDeclaration" flags="ig" index="PlHQZ">
        <child id="1169127546356" name="extends" index="PrDN$" />
      </concept>
      <concept id="1169127622168" name="jetbrains.mps.lang.structure.structure.InterfaceConceptReference" flags="ig" index="PrWs8">
        <reference id="1169127628841" name="intfc" index="PrY4T" />
      </concept>
      <concept id="1071489090640" name="jetbrains.mps.lang.structure.structure.ConceptDeclaration" flags="ig" index="1TIwiD">
        <property id="1096454100552" name="rootable" index="19KtqR" />
        <reference id="1071489389519" name="extends" index="1TJDcQ" />
        <child id="1169129564478" name="implements" index="PzmwI" />
      </concept>
      <concept id="1071489288299" name="jetbrains.mps.lang.structure.structure.PropertyDeclaration" flags="ig" index="1TJgyi">
        <property id="241647608299431129" name="propertyId" index="IQ2nx" />
        <reference id="1082985295845" name="dataType" index="AX2Wp" />
      </concept>
      <concept id="1071489288298" name="jetbrains.mps.lang.structure.structure.LinkDeclaration" flags="ig" index="1TJgyj">
        <property id="1071599776563" name="role" index="20kJfa" />
        <property id="1071599893252" name="sourceCardinality" index="20lbJX" />
        <property id="1071599937831" name="metaClass" index="20lmBu" />
        <property id="241647608299431140" name="linkId" index="IQ2ns" />
        <reference id="1071599976176" name="target" index="20lvS9" />
      </concept>
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1133920641626" name="jetbrains.mps.lang.core.structure.BaseConcept" flags="ng" index="2VYdi">
        <property id="1193676396447" name="virtualPackage" index="3GE5qa" />
        <child id="5169995583184591170" name="smodelAttribute" index="lGtFl" />
      </concept>
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ng" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
  </registry>
  <node concept="1TIwiD" id="74BOdhSGoaZ">
    <property role="EcuMT" value="8153715261354115775" />
    <property role="TrG5h" value="DotSheet" />
    <property role="19KtqR" value="true" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyj" id="74BOdhSGFD8" role="1TKVEi">
      <property role="IQ2ns" value="8153715261354195528" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="graph" />
      <ref role="20lvS9" node="74BOdhSG_UJ" resolve="AbstractGraph" />
    </node>
    <node concept="PrWs8" id="74BOdhSO08P" role="PzmwI">
      <ref role="PrY4T" to="tpck:h0TrEE$" resolve="INamedConcept" />
    </node>
  </node>
  <node concept="1TIwiD" id="74BOdhSG_Up">
    <property role="EcuMT" value="8153715261354172057" />
    <property role="TrG5h" value="Graph" />
    <ref role="1TJDcQ" node="74BOdhSG_UJ" resolve="AbstractGraph" />
  </node>
  <node concept="1TIwiD" id="74BOdhSG_U$">
    <property role="EcuMT" value="8153715261354172068" />
    <property role="TrG5h" value="Digraph" />
    <ref role="1TJDcQ" node="74BOdhSG_UJ" resolve="AbstractGraph" />
  </node>
  <node concept="1TIwiD" id="74BOdhSG_UJ">
    <property role="EcuMT" value="8153715261354172079" />
    <property role="TrG5h" value="AbstractGraph" />
    <property role="R5$K7" value="true" />
    <property role="R5$K2" value="false" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyj" id="74BOdhSH0Xi" role="1TKVEi">
      <property role="IQ2ns" value="8153715261354282834" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="id" />
      <ref role="20lvS9" node="74BOdhSH0WR" resolve="GraphID" />
    </node>
    <node concept="1TJgyj" id="74BOdhSG_Vn" role="1TKVEi">
      <property role="IQ2ns" value="8153715261354172119" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="statementList" />
      <property role="20lbJX" value="fLJekj4/_1" />
      <ref role="20lvS9" node="74BOdhSG_Wn" resolve="StatementList" />
    </node>
    <node concept="1TJgyi" id="74BOdhSG_UU" role="1TKVEl">
      <property role="IQ2nx" value="8153715261354172090" />
      <property role="TrG5h" value="isStrict" />
      <ref role="AX2Wp" to="tpck:fKAQMTB" resolve="boolean" />
    </node>
  </node>
  <node concept="1TIwiD" id="74BOdhSG_VG">
    <property role="EcuMT" value="8153715261354172140" />
    <property role="TrG5h" value="Node" />
    <property role="3GE5qa" value="statements" />
    <ref role="1TJDcQ" node="74BOdhSIYU$" resolve="AbstractStatement" />
    <node concept="1TJgyj" id="74BOdhSGMKO" role="1TKVEi">
      <property role="IQ2ns" value="8153715261354224692" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="id" />
      <property role="20lbJX" value="fLJekj4/_1" />
      <ref role="20lvS9" node="74BOdhSG_Yg" resolve="NodeID" />
    </node>
    <node concept="1TJgyj" id="74BOdhSGMKY" role="1TKVEi">
      <property role="IQ2ns" value="8153715261354224702" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="attributeList" />
      <property role="20lbJX" value="fLJekj5/_0__n" />
      <ref role="20lvS9" node="74BOdhSG_WG" resolve="AttributeList" />
    </node>
    <node concept="PrWs8" id="74BOdhSGDiT" role="PzmwI">
      <ref role="PrY4T" node="74BOdhSGDig" resolve="IStatement" />
    </node>
    <node concept="PrWs8" id="6kz3fYY1nzj" role="PzmwI">
      <ref role="PrY4T" node="6kz3fYY1nlj" resolve="IIDElement" />
    </node>
  </node>
  <node concept="1TIwiD" id="74BOdhSG_VR">
    <property role="EcuMT" value="8153715261354172151" />
    <property role="TrG5h" value="Edge" />
    <property role="3GE5qa" value="statements" />
    <ref role="1TJDcQ" node="74BOdhSIYU$" resolve="AbstractStatement" />
    <node concept="1TJgyj" id="74BOdhSM_gG" role="1TKVEi">
      <property role="IQ2ns" value="8153715261355742252" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="left" />
      <property role="20lbJX" value="fLJekj4/_1" />
      <ref role="20lvS9" node="74BOdhSMKBE" resolve="IEdgeLeftElement" />
    </node>
    <node concept="1TJgyj" id="74BOdhSM_h8" role="1TKVEi">
      <property role="IQ2ns" value="8153715261355742280" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="right" />
      <property role="20lbJX" value="fLJekj4/_1" />
      <ref role="20lvS9" node="74BOdhSIRM0" resolve="IEdgeElement" />
    </node>
    <node concept="1TJgyj" id="74BOdhSPNvG" role="1TKVEi">
      <property role="IQ2ns" value="8153715261356586988" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="attributeList" />
      <property role="20lbJX" value="fLJekj5/_0__n" />
      <ref role="20lvS9" node="74BOdhSG_WG" resolve="AttributeList" />
    </node>
    <node concept="1TJgyi" id="58ZMa6mNoLD" role="1TKVEl">
      <property role="TrG5h" value="operator" />
      <property role="IQ2nx" value="8153715261355675433" />
      <ref role="AX2Wp" node="58ZMa6mN646" resolve="EdgeOperators" />
      <node concept="3l_iC" id="58ZMa6mNoLE" role="lGtFl">
        <node concept="1TJgyi" id="74BOdhSMkWD" role="3l_iP">
          <property role="IQ2nx" value="8153715261355675433" />
          <property role="TrG5h" value="operator" />
          <ref role="AX2Wp" node="74BOdhSMkW6" resolve="EdgeOperators" />
        </node>
      </node>
    </node>
    <node concept="PrWs8" id="74BOdhSGDiJ" role="PzmwI">
      <ref role="PrY4T" node="74BOdhSGDig" resolve="IStatement" />
    </node>
  </node>
  <node concept="1TIwiD" id="74BOdhSG_W2">
    <property role="EcuMT" value="8153715261354172162" />
    <property role="TrG5h" value="Attribution" />
    <property role="3GE5qa" value="statements.attributes" />
    <ref role="1TJDcQ" node="74BOdhSIYU$" resolve="AbstractStatement" />
    <node concept="1TJgyj" id="74BOdhSLQtr" role="1TKVEi">
      <property role="IQ2ns" value="8153715261355550555" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="attributList" />
      <property role="20lbJX" value="fLJekj4/_1" />
      <ref role="20lvS9" node="74BOdhSG_WG" resolve="AttributeList" />
    </node>
    <node concept="1TJgyi" id="58ZMa6mNoLF" role="1TKVEl">
      <property role="TrG5h" value="attributionType" />
      <property role="IQ2nx" value="8153715261355550545" />
      <ref role="AX2Wp" node="58ZMa6mN641" resolve="AttributionTypes" />
      <node concept="3l_iC" id="58ZMa6mNoLG" role="lGtFl">
        <node concept="1TJgyi" id="74BOdhSLQth" role="3l_iP">
          <property role="IQ2nx" value="8153715261355550545" />
          <property role="TrG5h" value="attributionType" />
          <ref role="AX2Wp" node="74BOdhSLQs8" resolve="AttributionTypes" />
        </node>
      </node>
    </node>
    <node concept="PrWs8" id="74BOdhSGDi_" role="PzmwI">
      <ref role="PrY4T" node="74BOdhSGDig" resolve="IStatement" />
    </node>
  </node>
  <node concept="1TIwiD" id="74BOdhSG_Wn">
    <property role="EcuMT" value="8153715261354172183" />
    <property role="TrG5h" value="StatementList" />
    <property role="3GE5qa" value="statements" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyj" id="74BOdhSIYUN" role="1TKVEi">
      <property role="IQ2ns" value="8153715261354798771" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="statements" />
      <property role="20lbJX" value="fLJekj5/_0__n" />
      <ref role="20lvS9" node="74BOdhSIYU$" resolve="AbstractStatement" />
    </node>
  </node>
  <node concept="1TIwiD" id="74BOdhSG_WG">
    <property role="EcuMT" value="8153715261354172204" />
    <property role="TrG5h" value="AttributeList" />
    <property role="3GE5qa" value="statements.attributes" />
    <ref role="1TJDcQ" node="74BOdhSJ_xk" resolve="AbstractAttributeElement" />
    <node concept="1TJgyj" id="74BOdhSG_WR" role="1TKVEi">
      <property role="IQ2ns" value="8153715261354172215" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="attributeElement" />
      <property role="20lbJX" value="fLJekj5/_0__n" />
      <ref role="20lvS9" node="74BOdhSJ_xk" resolve="AbstractAttributeElement" />
    </node>
  </node>
  <node concept="1TIwiD" id="74BOdhSG_Yg">
    <property role="EcuMT" value="8153715261354172304" />
    <property role="3GE5qa" value="ids" />
    <property role="TrG5h" value="NodeID" />
    <ref role="1TJDcQ" node="74BOdhSG_Yr" resolve="ID" />
    <node concept="1TJgyj" id="74BOdhSJ4HH" role="1TKVEi">
      <property role="IQ2ns" value="8153715261354822509" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="port" />
      <ref role="20lvS9" node="74BOdhSGMLh" resolve="Port" />
    </node>
  </node>
  <node concept="1TIwiD" id="74BOdhSG_Yr">
    <property role="EcuMT" value="8153715261354172315" />
    <property role="3GE5qa" value="ids" />
    <property role="TrG5h" value="ID" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="PrWs8" id="74BOdhSGVmc" role="PzmwI">
      <ref role="PrY4T" to="tpck:h0TrEE$" resolve="INamedConcept" />
    </node>
  </node>
  <node concept="1TIwiD" id="74BOdhSG_YA">
    <property role="EcuMT" value="8153715261354172326" />
    <property role="3GE5qa" value="ids" />
    <property role="TrG5h" value="SubgraphID" />
    <ref role="1TJDcQ" node="74BOdhSG_Yr" resolve="ID" />
  </node>
  <node concept="PlHQZ" id="74BOdhSGDig">
    <property role="EcuMT" value="8153715261354185872" />
    <property role="3GE5qa" value="statements" />
    <property role="TrG5h" value="IStatement" />
  </node>
  <node concept="1TIwiD" id="74BOdhSGMLh">
    <property role="EcuMT" value="8153715261354224721" />
    <property role="TrG5h" value="Port" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyj" id="74BOdhSJUIg" role="1TKVEi">
      <property role="IQ2ns" value="8153715261355043728" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="portID" />
      <ref role="20lvS9" node="74BOdhSJUHz" resolve="PortID" />
    </node>
    <node concept="1TJgyj" id="74BOdhSK8e3" role="1TKVEi">
      <property role="IQ2ns" value="8153715261355099011" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="compasElement" />
      <ref role="20lvS9" node="74BOdhSK8c6" resolve="CompassElement" />
    </node>
  </node>
  <node concept="1TIwiD" id="74BOdhSGVlW">
    <property role="EcuMT" value="8153715261354259836" />
    <property role="TrG5h" value="NodeIDReference" />
    <property role="3GE5qa" value="ids" />
    <node concept="1TJgyj" id="74BOdhSSZJT" role="1TKVEi">
      <property role="IQ2ns" value="8153715261357423609" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="port" />
      <ref role="20lvS9" node="74BOdhSGMLh" resolve="Port" />
    </node>
    <node concept="1TJgyj" id="74BOdhSGVlX" role="1TKVEi">
      <property role="20lbJX" value="fLJekj4/_1" />
      <property role="IQ2ns" value="8153715261354259837" />
      <property role="20kJfa" value="nodeID" />
      <ref role="20lvS9" node="74BOdhSG_Yg" resolve="NodeID" />
    </node>
    <node concept="PrWs8" id="74BOdhSMQn5" role="PzmwI">
      <ref role="PrY4T" node="74BOdhSMKBE" resolve="IEdgeLeftElement" />
    </node>
  </node>
  <node concept="1TIwiD" id="74BOdhSH0VD">
    <property role="EcuMT" value="8153715261354282729" />
    <property role="TrG5h" value="SubgraphIDReference" />
    <property role="3GE5qa" value="ids" />
    <node concept="1TJgyj" id="74BOdhSH0VE" role="1TKVEi">
      <property role="20lbJX" value="fLJekj4/_1" />
      <property role="IQ2ns" value="8153715261354282730" />
      <property role="20kJfa" value="subgraphID" />
      <ref role="20lvS9" node="74BOdhSG_YA" resolve="SubgraphID" />
    </node>
  </node>
  <node concept="1TIwiD" id="74BOdhSH0WR">
    <property role="EcuMT" value="8153715261354282807" />
    <property role="3GE5qa" value="ids" />
    <property role="TrG5h" value="GraphID" />
    <ref role="1TJDcQ" node="74BOdhSG_Yr" resolve="ID" />
  </node>
  <node concept="1TIwiD" id="74BOdhSH0X2">
    <property role="EcuMT" value="8153715261354282818" />
    <property role="TrG5h" value="GraphIDReference" />
    <property role="3GE5qa" value="ids" />
    <node concept="1TJgyj" id="74BOdhSH0X3" role="1TKVEi">
      <property role="20lbJX" value="fLJekj4/_1" />
      <property role="IQ2ns" value="8153715261354282819" />
      <property role="20kJfa" value="graphID" />
      <ref role="20lvS9" node="74BOdhSH0WR" resolve="GraphID" />
    </node>
  </node>
  <node concept="1TIwiD" id="74BOdhSIRLk">
    <property role="EcuMT" value="8153715261354769492" />
    <property role="TrG5h" value="Subgraph" />
    <property role="3GE5qa" value="statements" />
    <ref role="1TJDcQ" node="74BOdhSIYU$" resolve="AbstractStatement" />
    <node concept="1TJgyj" id="74BOdhSIRLz" role="1TKVEi">
      <property role="IQ2ns" value="8153715261354769507" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="subgraphID" />
      <ref role="20lvS9" node="74BOdhSG_YA" resolve="SubgraphID" />
    </node>
    <node concept="1TJgyj" id="74BOdhSIRLH" role="1TKVEi">
      <property role="IQ2ns" value="8153715261354769517" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="statementList" />
      <property role="20lbJX" value="fLJekj4/_1" />
      <ref role="20lvS9" node="74BOdhSG_Wn" resolve="StatementList" />
    </node>
    <node concept="PrWs8" id="74BOdhSMQng" role="PzmwI">
      <ref role="PrY4T" node="74BOdhSMKBE" resolve="IEdgeLeftElement" />
    </node>
    <node concept="PrWs8" id="74BOdhSKRKE" role="PzmwI">
      <ref role="PrY4T" node="74BOdhSGDig" resolve="IStatement" />
    </node>
    <node concept="PrWs8" id="6kz3fYY1qR1" role="PzmwI">
      <ref role="PrY4T" node="6kz3fYY1nlj" resolve="IIDElement" />
    </node>
  </node>
  <node concept="PlHQZ" id="74BOdhSIRM0">
    <property role="EcuMT" value="8153715261354769536" />
    <property role="3GE5qa" value="statements" />
    <property role="TrG5h" value="IEdgeElement" />
  </node>
  <node concept="1TIwiD" id="74BOdhSIYU$">
    <property role="EcuMT" value="8153715261354798756" />
    <property role="3GE5qa" value="statements" />
    <property role="TrG5h" value="AbstractStatement" />
    <property role="R5$K7" value="true" />
    <property role="R5$K2" value="false" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
  </node>
  <node concept="1TIwiD" id="74BOdhSJpxm">
    <property role="EcuMT" value="8153715261354907734" />
    <property role="TrG5h" value="AttributeAssignment" />
    <property role="3GE5qa" value="statements.attributes" />
    <ref role="1TJDcQ" node="74BOdhSJ_xk" resolve="AbstractAttributeElement" />
    <node concept="1TJgyi" id="74BOdhSJpxJ" role="1TKVEl">
      <property role="IQ2nx" value="8153715261354907759" />
      <property role="TrG5h" value="variable" />
      <ref role="AX2Wp" to="tpck:fKAOsGN" resolve="string" />
    </node>
    <node concept="1TJgyi" id="74BOdhSJpxT" role="1TKVEl">
      <property role="IQ2nx" value="8153715261354907769" />
      <property role="TrG5h" value="value" />
      <ref role="AX2Wp" to="tpck:fKAOsGN" resolve="string" />
    </node>
  </node>
  <node concept="1TIwiD" id="74BOdhSJ_xk">
    <property role="EcuMT" value="8153715261354956884" />
    <property role="TrG5h" value="AbstractAttributeElement" />
    <property role="R5$K7" value="true" />
    <property role="R5$K2" value="false" />
    <property role="3GE5qa" value="statements.attributes" />
    <ref role="1TJDcQ" node="74BOdhSIYU$" resolve="AbstractStatement" />
  </node>
  <node concept="1TIwiD" id="74BOdhSJUHz">
    <property role="EcuMT" value="8153715261355043683" />
    <property role="3GE5qa" value="ids" />
    <property role="TrG5h" value="PortID" />
    <ref role="1TJDcQ" node="74BOdhSG_Yr" resolve="ID" />
  </node>
  <node concept="1TIwiD" id="74BOdhSJUHW">
    <property role="EcuMT" value="8153715261355043708" />
    <property role="TrG5h" value="PortIDReference" />
    <property role="3GE5qa" value="ids" />
    <node concept="1TJgyj" id="74BOdhSJUHX" role="1TKVEi">
      <property role="20lbJX" value="fLJekj4/_1" />
      <property role="IQ2ns" value="8153715261355043709" />
      <property role="20kJfa" value="portID" />
      <ref role="20lvS9" node="74BOdhSJUHz" resolve="PortID" />
    </node>
  </node>
  <node concept="1TIwiD" id="74BOdhSK8c6">
    <property role="EcuMT" value="8153715261355098886" />
    <property role="TrG5h" value="CompassElement" />
    <property role="3GE5qa" value="statements" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyi" id="58ZMa6mNoLH" role="1TKVEl">
      <property role="TrG5h" value="compasElement" />
      <property role="IQ2nx" value="8153715261355099001" />
      <ref role="AX2Wp" node="58ZMa6mN61q" resolve="CompassElementEnum" />
      <node concept="3l_iC" id="58ZMa6mNoLI" role="lGtFl">
        <node concept="1TJgyi" id="74BOdhSK8dT" role="3l_iP">
          <property role="IQ2nx" value="8153715261355099001" />
          <property role="TrG5h" value="compasElement" />
          <ref role="AX2Wp" node="74BOdhSJUIH" resolve="CompassElementEnum" />
        </node>
      </node>
    </node>
  </node>
  <node concept="PlHQZ" id="74BOdhSMKBE">
    <property role="EcuMT" value="8153715261355788778" />
    <property role="3GE5qa" value="statements" />
    <property role="TrG5h" value="IEdgeLeftElement" />
    <node concept="PrWs8" id="74BOdhSMKBT" role="PrDN$">
      <ref role="PrY4T" node="74BOdhSIRM0" resolve="IEdgeElement" />
    </node>
  </node>
  <node concept="1TIwiD" id="74BOdhSMKC3">
    <property role="EcuMT" value="8153715261355788803" />
    <property role="TrG5h" value="EdgeExtension" />
    <property role="3GE5qa" value="statements" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyj" id="74BOdhSN4Sy" role="1TKVEi">
      <property role="IQ2ns" value="8153715261355871778" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="left" />
      <property role="20lbJX" value="fLJekj4/_1" />
      <ref role="20lvS9" node="74BOdhSMKBE" resolve="IEdgeLeftElement" />
    </node>
    <node concept="1TJgyj" id="74BOdhSMKCs" role="1TKVEi">
      <property role="IQ2ns" value="8153715261355788828" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="right" />
      <property role="20lbJX" value="fLJekj4/_1" />
      <ref role="20lvS9" node="74BOdhSIRM0" resolve="IEdgeElement" />
    </node>
    <node concept="1TJgyi" id="58ZMa6mNoLJ" role="1TKVEl">
      <property role="TrG5h" value="operator" />
      <property role="IQ2nx" value="8153715261355788818" />
      <ref role="AX2Wp" node="58ZMa6mN646" resolve="EdgeOperators" />
      <node concept="3l_iC" id="58ZMa6mNoLK" role="lGtFl">
        <node concept="1TJgyi" id="74BOdhSMKCi" role="3l_iP">
          <property role="IQ2nx" value="8153715261355788818" />
          <property role="TrG5h" value="operator" />
          <ref role="AX2Wp" node="74BOdhSMkW6" resolve="EdgeOperators" />
        </node>
      </node>
    </node>
    <node concept="PrWs8" id="74BOdhSMQmU" role="PzmwI">
      <ref role="PrY4T" node="74BOdhSIRM0" resolve="IEdgeElement" />
    </node>
  </node>
  <node concept="PlHQZ" id="6kz3fYY1nlj">
    <property role="EcuMT" value="7287682914559817043" />
    <property role="3GE5qa" value="statements" />
    <property role="TrG5h" value="IIDElement" />
  </node>
  <node concept="25R3W" id="58ZMa6mN61q">
    <property role="TrG5h" value="CompassElementEnum" />
    <property role="3GE5qa" value="statements" />
    <property role="3F6X1D" value="8153715261355043757" />
    <ref role="1H5jkz" node="58ZMa6mN61s" resolve="c" />
    <node concept="2JgGob" id="58ZMa6mN61r" role="lGtFl">
      <property role="3scbB" value="5CkWgdpp3fo/by_custom_methods" />
      <property role="3sfsH" value="5CkWgdpp0p1/by_name" />
      <node concept="AxPO7" id="74BOdhSJUIH" role="3lCyv">
        <property role="TrG5h" value="CompassElementEnum" />
        <property role="3GE5qa" value="statements" />
        <property role="3F6X1D" value="8153715261355043757" />
        <ref role="M4eZT" to="tpck:fKAOsGN" resolve="string" />
        <node concept="M4N5e" id="74BOdhSJUNZ" role="M5hS2">
          <property role="1uS6qo" value="c" />
        </node>
        <node concept="M4N5e" id="74BOdhSJUII" role="M5hS2">
          <property role="1uS6qo" value="n" />
        </node>
        <node concept="M4N5e" id="74BOdhSJUIX" role="M5hS2">
          <property role="1uS6qo" value="ne" />
        </node>
        <node concept="M4N5e" id="74BOdhSJUJg" role="M5hS2">
          <property role="1uS6qo" value="e" />
        </node>
        <node concept="M4N5e" id="74BOdhSJUJG" role="M5hS2">
          <property role="1uS6qo" value="se" />
        </node>
        <node concept="M4N5e" id="74BOdhSJUKh" role="M5hS2">
          <property role="1uS6qo" value="s" />
        </node>
        <node concept="M4N5e" id="74BOdhSJUKZ" role="M5hS2">
          <property role="1uS6qo" value="sw" />
        </node>
        <node concept="M4N5e" id="74BOdhSJULQ" role="M5hS2">
          <property role="1uS6qo" value="w" />
        </node>
        <node concept="M4N5e" id="74BOdhSJUMQ" role="M5hS2">
          <property role="1uS6qo" value="nw" />
        </node>
        <node concept="M4N5e" id="74BOdhSJUPh" role="M5hS2">
          <property role="1uS6qo" value="_" />
        </node>
      </node>
    </node>
    <node concept="25R33" id="58ZMa6mN61s" role="25R1y">
      <property role="TrG5h" value="c" />
      <property role="3tVfz5" value="8153715261355044095" />
      <ref role="2wpffI" node="74BOdhSJUNZ" />
    </node>
    <node concept="25R33" id="58ZMa6mN61t" role="25R1y">
      <property role="TrG5h" value="n" />
      <property role="3tVfz5" value="8153715261355043758" />
      <ref role="2wpffI" node="74BOdhSJUII" />
    </node>
    <node concept="25R33" id="58ZMa6mN61u" role="25R1y">
      <property role="TrG5h" value="ne" />
      <property role="3tVfz5" value="8153715261355043773" />
      <ref role="2wpffI" node="74BOdhSJUIX" />
    </node>
    <node concept="25R33" id="58ZMa6mN61v" role="25R1y">
      <property role="TrG5h" value="e" />
      <property role="3tVfz5" value="8153715261355043792" />
      <ref role="2wpffI" node="74BOdhSJUJg" />
    </node>
    <node concept="25R33" id="58ZMa6mN61w" role="25R1y">
      <property role="TrG5h" value="se" />
      <property role="3tVfz5" value="8153715261355043820" />
      <ref role="2wpffI" node="74BOdhSJUJG" />
    </node>
    <node concept="25R33" id="58ZMa6mN61x" role="25R1y">
      <property role="TrG5h" value="s" />
      <property role="3tVfz5" value="8153715261355043857" />
      <ref role="2wpffI" node="74BOdhSJUKh" />
    </node>
    <node concept="25R33" id="58ZMa6mN61y" role="25R1y">
      <property role="TrG5h" value="sw" />
      <property role="3tVfz5" value="8153715261355043903" />
      <ref role="2wpffI" node="74BOdhSJUKZ" />
    </node>
    <node concept="25R33" id="58ZMa6mN61z" role="25R1y">
      <property role="TrG5h" value="w" />
      <property role="3tVfz5" value="8153715261355043958" />
      <ref role="2wpffI" node="74BOdhSJULQ" />
    </node>
    <node concept="25R33" id="58ZMa6mN61$" role="25R1y">
      <property role="TrG5h" value="nw" />
      <property role="3tVfz5" value="8153715261355044022" />
      <ref role="2wpffI" node="74BOdhSJUMQ" />
    </node>
    <node concept="25R33" id="58ZMa6mN61_" role="25R1y">
      <property role="TrG5h" value="_" />
      <property role="3tVfz5" value="8153715261355044177" />
      <ref role="2wpffI" node="74BOdhSJUPh" />
    </node>
  </node>
  <node concept="25R3W" id="58ZMa6mN641">
    <property role="TrG5h" value="AttributionTypes" />
    <property role="3GE5qa" value="statements.attributes" />
    <property role="3F6X1D" value="8153715261355550472" />
    <ref role="1H5jkz" node="58ZMa6mN643" resolve="graph" />
    <node concept="2JgGob" id="58ZMa6mN642" role="lGtFl">
      <property role="3scbB" value="5CkWgdpp3eY/string_name" />
      <property role="3sfsH" value="5CkWgdpp0p1/by_name" />
      <node concept="AxPO7" id="74BOdhSLQs8" role="3lCyv">
        <property role="TrG5h" value="AttributionTypes" />
        <property role="3GE5qa" value="statements.attributes" />
        <property role="3lZH7k" value="hrlZj6Q/derive_from_internal_value" />
        <property role="3F6X1D" value="8153715261355550472" />
        <ref role="M4eZT" to="tpck:fKAOsGN" resolve="string" />
        <node concept="M4N5e" id="74BOdhSLQs9" role="M5hS2">
          <property role="1uS6qo" value="graph" />
          <property role="1uS6qv" value="graph" />
        </node>
        <node concept="M4N5e" id="74BOdhSLQso" role="M5hS2">
          <property role="1uS6qo" value="node" />
          <property role="1uS6qv" value="node" />
        </node>
        <node concept="M4N5e" id="74BOdhSLQsF" role="M5hS2">
          <property role="1uS6qo" value="edge" />
          <property role="1uS6qv" value="edge" />
        </node>
      </node>
    </node>
    <node concept="25R33" id="58ZMa6mN643" role="25R1y">
      <property role="TrG5h" value="graph" />
      <property role="3tVfz5" value="8153715261355550473" />
      <ref role="2wpffI" node="74BOdhSLQs9" />
    </node>
    <node concept="25R33" id="58ZMa6mN644" role="25R1y">
      <property role="TrG5h" value="node" />
      <property role="3tVfz5" value="8153715261355550488" />
      <ref role="2wpffI" node="74BOdhSLQso" />
    </node>
    <node concept="25R33" id="58ZMa6mN645" role="25R1y">
      <property role="TrG5h" value="edge" />
      <property role="3tVfz5" value="8153715261355550507" />
      <ref role="2wpffI" node="74BOdhSLQsF" />
    </node>
  </node>
  <node concept="25R3W" id="58ZMa6mN646">
    <property role="TrG5h" value="EdgeOperators" />
    <property role="3GE5qa" value="statements" />
    <property role="3F6X1D" value="8153715261355675398" />
    <ref role="1H5jkz" node="58ZMa6mN648" resolve="directed" />
    <node concept="2JgGob" id="58ZMa6mN647" role="lGtFl">
      <property role="3scbB" value="5CkWgdpp3eZ/string_presentation" />
      <property role="3sfsH" value="5CkWgdpp0p1/by_name" />
      <node concept="AxPO7" id="74BOdhSMkW6" role="3lCyv">
        <property role="TrG5h" value="EdgeOperators" />
        <property role="3lZH7k" value="hrlZpEz/custom" />
        <property role="3GE5qa" value="statements" />
        <property role="3F6X1D" value="8153715261355675398" />
        <ref role="M4eZT" to="tpck:fKAOsGN" resolve="string" />
        <node concept="M4N5e" id="74BOdhSMkW7" role="M5hS2">
          <property role="1uS6qo" value="-&gt;" />
          <property role="2fHolG" value="directed" />
          <property role="1uS6qv" value="-&gt;" />
        </node>
        <node concept="M4N5e" id="74BOdhSMkWm" role="M5hS2">
          <property role="1uS6qo" value="--" />
          <property role="2fHolG" value="undirected" />
          <property role="1uS6qv" value="--" />
        </node>
      </node>
    </node>
    <node concept="25R33" id="58ZMa6mN648" role="25R1y">
      <property role="TrG5h" value="directed" />
      <property role="1L1pqM" value="-&gt;" />
      <property role="3tVfz5" value="8153715261355675399" />
      <ref role="2wpffI" node="74BOdhSMkW7" />
    </node>
    <node concept="25R33" id="58ZMa6mN649" role="25R1y">
      <property role="TrG5h" value="undirected" />
      <property role="1L1pqM" value="--" />
      <property role="3tVfz5" value="8153715261355675414" />
      <ref role="2wpffI" node="74BOdhSMkWm" />
    </node>
  </node>
</model>

