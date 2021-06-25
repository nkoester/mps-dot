<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:7c5db4a3-1e7e-4955-a55f-17d6c2fa4d9e(libre.doge.mps.dot.editor)">
  <persistence version="9" />
  <languages>
    <use id="18bc6592-03a6-4e29-a83a-7ff23bde13ba" name="jetbrains.mps.lang.editor" version="14" />
    <devkit ref="fbc25dd2-5da4-483a-8b19-70928e1b62d7(jetbrains.mps.devkit.general-purpose)" />
  </languages>
  <imports>
    <import index="tpen" ref="r:00000000-0000-4000-0000-011c895902c3(jetbrains.mps.baseLanguage.editor)" />
    <import index="fvm2" ref="r:c75759de-514f-4cab-9d3b-0f9adbc70c25(libre.doge.mps.dot.structure)" implicit="true" />
    <import index="tpck" ref="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" implicit="true" />
  </imports>
  <registry>
    <language id="18bc6592-03a6-4e29-a83a-7ff23bde13ba" name="jetbrains.mps.lang.editor">
      <concept id="1071666914219" name="jetbrains.mps.lang.editor.structure.ConceptEditorDeclaration" flags="ig" index="24kQdi" />
      <concept id="1140524381322" name="jetbrains.mps.lang.editor.structure.CellModel_ListWithRole" flags="ng" index="2czfm3">
        <child id="1140524464360" name="cellLayout" index="2czzBx" />
      </concept>
      <concept id="1106270549637" name="jetbrains.mps.lang.editor.structure.CellLayout_Horizontal" flags="nn" index="2iRfu4" />
      <concept id="1106270571710" name="jetbrains.mps.lang.editor.structure.CellLayout_Vertical" flags="nn" index="2iRkQZ" />
      <concept id="1142886221719" name="jetbrains.mps.lang.editor.structure.QueryFunction_NodeCondition" flags="in" index="pkWqt" />
      <concept id="1142886811589" name="jetbrains.mps.lang.editor.structure.ConceptFunctionParameter_node" flags="nn" index="pncrf" />
      <concept id="1237385578942" name="jetbrains.mps.lang.editor.structure.IndentLayoutOnNewLineStyleClassItem" flags="ln" index="pVoyu" />
      <concept id="1080736578640" name="jetbrains.mps.lang.editor.structure.BaseEditorComponent" flags="ig" index="2wURMF">
        <child id="1080736633877" name="cellModel" index="2wV5jI" />
      </concept>
      <concept id="8383079901754291618" name="jetbrains.mps.lang.editor.structure.CellModel_NextEditor" flags="ng" index="B$lHz" />
      <concept id="1186414536763" name="jetbrains.mps.lang.editor.structure.BooleanStyleSheetItem" flags="ln" index="VOi$J">
        <property id="1186414551515" name="flag" index="VOm3f" />
      </concept>
      <concept id="1233758997495" name="jetbrains.mps.lang.editor.structure.PunctuationLeftStyleClassItem" flags="ln" index="11L4FC" />
      <concept id="1233759184865" name="jetbrains.mps.lang.editor.structure.PunctuationRightStyleClassItem" flags="ln" index="11LMrY" />
      <concept id="1088013125922" name="jetbrains.mps.lang.editor.structure.CellModel_RefCell" flags="sg" stub="730538219795941030" index="1iCGBv">
        <child id="1088186146602" name="editorComponent" index="1sWHZn" />
      </concept>
      <concept id="1381004262292414836" name="jetbrains.mps.lang.editor.structure.ICellStyle" flags="ng" index="1k5N5V">
        <reference id="1381004262292426837" name="parentStyleClass" index="1k5W1q" />
      </concept>
      <concept id="1088185857835" name="jetbrains.mps.lang.editor.structure.InlineEditorComponent" flags="ig" index="1sVBvm" />
      <concept id="1139848536355" name="jetbrains.mps.lang.editor.structure.CellModel_WithRole" flags="ng" index="1$h60E">
        <property id="1140017977771" name="readOnly" index="1Intyy" />
        <reference id="1140103550593" name="relationDeclaration" index="1NtTu8" />
      </concept>
      <concept id="1073389214265" name="jetbrains.mps.lang.editor.structure.EditorCellModel" flags="ng" index="3EYTF0">
        <child id="1142887637401" name="renderingCondition" index="pqm2j" />
      </concept>
      <concept id="1073389446423" name="jetbrains.mps.lang.editor.structure.CellModel_Collection" flags="sn" stub="3013115976261988961" index="3EZMnI">
        <child id="1106270802874" name="cellLayout" index="2iSdaV" />
        <child id="1073389446424" name="childCellModel" index="3EZMnx" />
      </concept>
      <concept id="1073389577006" name="jetbrains.mps.lang.editor.structure.CellModel_Constant" flags="sn" stub="3610246225209162225" index="3F0ifn">
        <property id="1073389577007" name="text" index="3F0ifm" />
      </concept>
      <concept id="1073389658414" name="jetbrains.mps.lang.editor.structure.CellModel_Property" flags="sg" stub="730538219796134133" index="3F0A7n" />
      <concept id="1219418625346" name="jetbrains.mps.lang.editor.structure.IStyleContainer" flags="ng" index="3F0Thp">
        <child id="1219418656006" name="styleItem" index="3F10Kt" />
      </concept>
      <concept id="1073389882823" name="jetbrains.mps.lang.editor.structure.CellModel_RefNode" flags="sg" stub="730538219795960754" index="3F1sOY" />
      <concept id="1073390211982" name="jetbrains.mps.lang.editor.structure.CellModel_RefNodeList" flags="sg" stub="2794558372793454595" index="3F2HdR" />
      <concept id="1198256887712" name="jetbrains.mps.lang.editor.structure.CellModel_Indent" flags="ng" index="3XFhqQ" />
      <concept id="1166049232041" name="jetbrains.mps.lang.editor.structure.AbstractComponent" flags="ng" index="1XWOmA">
        <reference id="1166049300910" name="conceptDeclaration" index="1XX52x" />
      </concept>
    </language>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1197027756228" name="jetbrains.mps.baseLanguage.structure.DotExpression" flags="nn" index="2OqwBi">
        <child id="1197027771414" name="operand" index="2Oq$k0" />
        <child id="1197027833540" name="operation" index="2OqNvi" />
      </concept>
      <concept id="1137021947720" name="jetbrains.mps.baseLanguage.structure.ConceptFunction" flags="in" index="2VMwT0">
        <child id="1137022507850" name="body" index="2VODD2" />
      </concept>
      <concept id="1068580123155" name="jetbrains.mps.baseLanguage.structure.ExpressionStatement" flags="nn" index="3clFbF">
        <child id="1068580123156" name="expression" index="3clFbG" />
      </concept>
      <concept id="1068580123136" name="jetbrains.mps.baseLanguage.structure.StatementList" flags="sn" stub="5293379017992965193" index="3clFbS">
        <child id="1068581517665" name="statement" index="3cqZAp" />
      </concept>
    </language>
    <language id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel">
      <concept id="1172008320231" name="jetbrains.mps.lang.smodel.structure.Node_IsNotNullOperation" flags="nn" index="3x8VRR" />
      <concept id="1138056143562" name="jetbrains.mps.lang.smodel.structure.SLinkAccess" flags="nn" index="3TrEf2">
        <reference id="1138056516764" name="link" index="3Tt5mk" />
      </concept>
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1133920641626" name="jetbrains.mps.lang.core.structure.BaseConcept" flags="ng" index="2VYdi">
        <property id="1193676396447" name="virtualPackage" index="3GE5qa" />
      </concept>
    </language>
  </registry>
  <node concept="24kQdi" id="74BOdhSGVlY">
    <property role="3GE5qa" value="ids" />
    <ref role="1XX52x" to="fvm2:74BOdhSGVlW" resolve="NodeIDReference" />
    <node concept="3EZMnI" id="74BOdhSSZS2" role="2wV5jI">
      <node concept="2iRfu4" id="74BOdhSSZS3" role="2iSdaV" />
      <node concept="1iCGBv" id="74BOdhSGVlZ" role="3EZMnx">
        <ref role="1NtTu8" to="fvm2:74BOdhSGVlX" resolve="nodeID" />
        <node concept="1sVBvm" id="74BOdhSGVm0" role="1sWHZn">
          <node concept="3F0A7n" id="74BOdhSGVm1" role="2wV5jI">
            <property role="1Intyy" value="true" />
            <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
          </node>
        </node>
      </node>
      <node concept="3F0ifn" id="74BOdhSSZYp" role="3EZMnx">
        <property role="3F0ifm" value=" " />
        <node concept="11L4FC" id="74BOdhST20U" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="11LMrY" id="74BOdhST2o8" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="pkWqt" id="74BOdhSSZZ8" role="pqm2j">
          <node concept="3clFbS" id="74BOdhSSZZ9" role="2VODD2">
            <node concept="3clFbF" id="74BOdhST06O" role="3cqZAp">
              <node concept="2OqwBi" id="74BOdhST1h6" role="3clFbG">
                <node concept="2OqwBi" id="74BOdhST0x1" role="2Oq$k0">
                  <node concept="pncrf" id="74BOdhST06N" role="2Oq$k0" />
                  <node concept="3TrEf2" id="74BOdhST0SF" role="2OqNvi">
                    <ref role="3Tt5mk" to="fvm2:74BOdhSSZJT" resolve="port" />
                  </node>
                </node>
                <node concept="3x8VRR" id="74BOdhST1DJ" role="2OqNvi" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3F1sOY" id="74BOdhSSZUn" role="3EZMnx">
        <ref role="1NtTu8" to="fvm2:74BOdhSSZJT" resolve="port" />
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="74BOdhSH0VF">
    <property role="3GE5qa" value="ids" />
    <ref role="1XX52x" to="fvm2:74BOdhSH0VD" resolve="SubgraphIDReference" />
    <node concept="1iCGBv" id="74BOdhSH0VG" role="2wV5jI">
      <ref role="1NtTu8" to="fvm2:74BOdhSH0VE" resolve="subgraphID" />
      <node concept="1sVBvm" id="74BOdhSH0VH" role="1sWHZn">
        <node concept="3F0A7n" id="74BOdhSH0VI" role="2wV5jI">
          <property role="1Intyy" value="true" />
          <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
        </node>
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="74BOdhSH0X4">
    <property role="3GE5qa" value="ids" />
    <ref role="1XX52x" to="fvm2:74BOdhSH0X2" resolve="GraphIDReference" />
    <node concept="1iCGBv" id="74BOdhSH0X5" role="2wV5jI">
      <ref role="1NtTu8" to="fvm2:74BOdhSH0X3" resolve="graphID" />
      <node concept="1sVBvm" id="74BOdhSH0X6" role="1sWHZn">
        <node concept="3F0A7n" id="74BOdhSH0X7" role="2wV5jI">
          <property role="1Intyy" value="true" />
          <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
        </node>
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="74BOdhSH0XP">
    <property role="3GE5qa" value="statements" />
    <ref role="1XX52x" to="fvm2:74BOdhSG_Wn" resolve="StatementList" />
    <node concept="3EZMnI" id="74BOdhSJ0xv" role="2wV5jI">
      <node concept="2iRkQZ" id="74BOdhSJ0xw" role="2iSdaV" />
      <node concept="3F2HdR" id="74BOdhSJ0GX" role="3EZMnx">
        <ref role="1NtTu8" to="fvm2:74BOdhSIYUN" resolve="statements" />
        <node concept="2iRkQZ" id="74BOdhSJ0GZ" role="2czzBx" />
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="74BOdhSINVl">
    <property role="3GE5qa" value="statements" />
    <ref role="1XX52x" to="fvm2:74BOdhSGDig" resolve="IStatement" />
    <node concept="3EZMnI" id="74BOdhSINVK" role="2wV5jI">
      <node concept="2iRfu4" id="74BOdhSINVL" role="2iSdaV" />
      <node concept="B$lHz" id="74BOdhSINV_" role="3EZMnx" />
      <node concept="3F0ifn" id="74BOdhSINWD" role="3EZMnx">
        <property role="3F0ifm" value=";" />
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="74BOdhSJ4FX">
    <property role="3GE5qa" value="statements" />
    <ref role="1XX52x" to="fvm2:74BOdhSG_VG" resolve="Node" />
    <node concept="3EZMnI" id="74BOdhSJ4Gd" role="2wV5jI">
      <node concept="2iRfu4" id="74BOdhSJ4Ge" role="2iSdaV" />
      <node concept="3F1sOY" id="74BOdhSJ4Hf" role="3EZMnx">
        <ref role="1NtTu8" to="fvm2:74BOdhSGMKO" resolve="id" />
      </node>
      <node concept="3F2HdR" id="74BOdhSJet8" role="3EZMnx">
        <ref role="1NtTu8" to="fvm2:74BOdhSGMKY" resolve="attributeList" />
        <node concept="2iRfu4" id="74BOdhSJeta" role="2czzBx" />
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="74BOdhSJ9vr">
    <property role="3GE5qa" value="ids" />
    <ref role="1XX52x" to="fvm2:74BOdhSG_Yg" resolve="NodeID" />
    <node concept="3EZMnI" id="74BOdhSJ9vF" role="2wV5jI">
      <node concept="2iRfu4" id="74BOdhSJ9vG" role="2iSdaV" />
      <node concept="3F0A7n" id="74BOdhSJ9wh" role="3EZMnx">
        <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
      </node>
      <node concept="3F1sOY" id="74BOdhSJ9wJ" role="3EZMnx">
        <ref role="1NtTu8" to="fvm2:74BOdhSJ4HH" resolve="port" />
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="74BOdhSJelv">
    <property role="3GE5qa" value="statements.attributes" />
    <ref role="1XX52x" to="fvm2:74BOdhSG_WG" resolve="AttributeList" />
    <node concept="3EZMnI" id="74BOdhSJelJ" role="2wV5jI">
      <node concept="2iRfu4" id="74BOdhSJelK" role="2iSdaV" />
      <node concept="3F0ifn" id="74BOdhSJeqU" role="3EZMnx">
        <property role="3F0ifm" value="[" />
      </node>
      <node concept="3F2HdR" id="74BOdhSJes5" role="3EZMnx">
        <ref role="1NtTu8" to="fvm2:74BOdhSG_WR" resolve="attributeElement" />
        <node concept="2iRkQZ" id="74BOdhSJIio" role="2czzBx" />
      </node>
      <node concept="3F0ifn" id="74BOdhSJeqa" role="3EZMnx">
        <property role="3F0ifm" value="]" />
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="74BOdhSJuT0">
    <property role="3GE5qa" value="statements.attributes" />
    <ref role="1XX52x" to="fvm2:74BOdhSJpxm" resolve="AttributeAssignment" />
    <node concept="3EZMnI" id="74BOdhSJuTg" role="2wV5jI">
      <node concept="2iRfu4" id="74BOdhSJuTh" role="2iSdaV" />
      <node concept="3F0A7n" id="74BOdhSNKBf" role="3EZMnx">
        <ref role="1NtTu8" to="fvm2:74BOdhSJpxJ" resolve="variable" />
      </node>
      <node concept="3F0ifn" id="74BOdhSNKCh" role="3EZMnx">
        <property role="3F0ifm" value="=" />
      </node>
      <node concept="3F0A7n" id="74BOdhSNKD_" role="3EZMnx">
        <ref role="1NtTu8" to="fvm2:74BOdhSJpxT" resolve="value" />
      </node>
      <node concept="3F0ifn" id="74BOdhSJN4v" role="3EZMnx">
        <property role="3F0ifm" value=";" />
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="74BOdhSJUHY">
    <property role="3GE5qa" value="ids" />
    <ref role="1XX52x" to="fvm2:74BOdhSJUHW" resolve="PortIDReference" />
    <node concept="1iCGBv" id="74BOdhSJUHZ" role="2wV5jI">
      <ref role="1NtTu8" to="fvm2:74BOdhSJUHX" resolve="portID" />
      <node concept="1sVBvm" id="74BOdhSJUI0" role="1sWHZn">
        <node concept="3F0A7n" id="74BOdhSJUI1" role="2wV5jI">
          <property role="1Intyy" value="true" />
          <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
        </node>
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="74BOdhSJV2C">
    <ref role="1XX52x" to="fvm2:74BOdhSGMLh" resolve="Port" />
    <node concept="3EZMnI" id="74BOdhSJV2S" role="2wV5jI">
      <node concept="2iRfu4" id="74BOdhSJV2T" role="2iSdaV" />
      <node concept="3F0ifn" id="74BOdhSTXxk" role="3EZMnx">
        <property role="3F0ifm" value=":" />
      </node>
      <node concept="3F1sOY" id="74BOdhSJV3u" role="3EZMnx">
        <ref role="1NtTu8" to="fvm2:74BOdhSJUIg" resolve="portID" />
      </node>
      <node concept="3F0ifn" id="74BOdhSJV4G" role="3EZMnx">
        <property role="3F0ifm" value=":" />
        <node concept="pkWqt" id="74BOdhSTXxU" role="pqm2j">
          <node concept="3clFbS" id="74BOdhSTXxV" role="2VODD2">
            <node concept="3clFbF" id="74BOdhSTXDA" role="3cqZAp">
              <node concept="2OqwBi" id="74BOdhSTYv_" role="3clFbG">
                <node concept="2OqwBi" id="74BOdhSTXQk" role="2Oq$k0">
                  <node concept="pncrf" id="74BOdhSTXD_" role="2Oq$k0" />
                  <node concept="3TrEf2" id="74BOdhSTYa$" role="2OqNvi">
                    <ref role="3Tt5mk" to="fvm2:74BOdhSK8e3" resolve="compasElement" />
                  </node>
                </node>
                <node concept="3x8VRR" id="74BOdhSTYRS" role="2OqNvi" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3F1sOY" id="74BOdhSK8f4" role="3EZMnx">
        <ref role="1NtTu8" to="fvm2:74BOdhSK8e3" resolve="compasElement" />
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="74BOdhSK21$">
    <property role="3GE5qa" value="ids" />
    <ref role="1XX52x" to="fvm2:74BOdhSJUHz" resolve="PortID" />
    <node concept="3F0A7n" id="74BOdhSK21O" role="2wV5jI">
      <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
    </node>
  </node>
  <node concept="24kQdi" id="74BOdhSKfk6">
    <property role="3GE5qa" value="statements" />
    <ref role="1XX52x" to="fvm2:74BOdhSK8c6" resolve="CompassElement" />
    <node concept="3F0A7n" id="74BOdhSKfkm" role="2wV5jI">
      <ref role="1k5W1q" to="tpen:hgVSdfU" resolve="StringLiteral" />
      <ref role="1NtTu8" to="fvm2:58ZMa6mNoLH" resolve="compasElement" />
    </node>
  </node>
  <node concept="24kQdi" id="74BOdhSKJMl">
    <property role="3GE5qa" value="statements" />
    <ref role="1XX52x" to="fvm2:74BOdhSIRLk" resolve="Subgraph" />
    <node concept="3EZMnI" id="74BOdhSKJM_" role="2wV5jI">
      <node concept="2iRfu4" id="74BOdhSKJMA" role="2iSdaV" />
      <node concept="3F0ifn" id="74BOdhSKJNb" role="3EZMnx">
        <property role="3F0ifm" value="subgraph" />
      </node>
      <node concept="3F1sOY" id="74BOdhSKJOE" role="3EZMnx">
        <ref role="1NtTu8" to="fvm2:74BOdhSIRLz" resolve="subgraphID" />
      </node>
      <node concept="3F0ifn" id="74BOdhSNBRS" role="3EZMnx">
        <property role="3F0ifm" value="{" />
      </node>
      <node concept="3F1sOY" id="74BOdhSKJPq" role="3EZMnx">
        <ref role="1NtTu8" to="fvm2:74BOdhSIRLH" resolve="statementList" />
      </node>
      <node concept="3F0ifn" id="74BOdhSNBTc" role="3EZMnx">
        <property role="3F0ifm" value="}" />
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="74BOdhSKUp8">
    <property role="3GE5qa" value="ids" />
    <ref role="1XX52x" to="fvm2:74BOdhSG_Yr" resolve="ID" />
    <node concept="3F0A7n" id="74BOdhSKUpo" role="2wV5jI">
      <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
    </node>
  </node>
  <node concept="24kQdi" id="74BOdhSL1B_">
    <ref role="1XX52x" to="fvm2:74BOdhSG_UJ" resolve="AbstractGraph" />
    <node concept="3EZMnI" id="74BOdhSL1BP" role="2wV5jI">
      <node concept="3EZMnI" id="74BOdhSL8Yc" role="3EZMnx">
        <node concept="2iRfu4" id="74BOdhSL8Yd" role="2iSdaV" />
        <node concept="3F1sOY" id="74BOdhSL1CM" role="3EZMnx">
          <ref role="1NtTu8" to="fvm2:74BOdhSH0Xi" resolve="id" />
        </node>
        <node concept="3F0ifn" id="74BOdhSOsx1" role="3EZMnx">
          <property role="3F0ifm" value="(" />
        </node>
        <node concept="3F0ifn" id="74BOdhSOLgL" role="3EZMnx">
          <property role="3F0ifm" value="strict:" />
        </node>
        <node concept="3F0A7n" id="74BOdhSOszD" role="3EZMnx">
          <ref role="1NtTu8" to="fvm2:74BOdhSG_UU" resolve="isStrict" />
        </node>
        <node concept="3F0ifn" id="74BOdhSOs$X" role="3EZMnx">
          <property role="3F0ifm" value=")" />
        </node>
      </node>
      <node concept="3F0ifn" id="74BOdhSOstB" role="3EZMnx" />
      <node concept="3EZMnI" id="74BOdhSLgGo" role="3EZMnx">
        <node concept="2iRfu4" id="74BOdhSLgGp" role="2iSdaV" />
        <node concept="3XFhqQ" id="74BOdhSLvxO" role="3EZMnx" />
        <node concept="3F1sOY" id="74BOdhSL1Ck" role="3EZMnx">
          <ref role="1NtTu8" to="fvm2:74BOdhSG_Vn" resolve="statementList" />
          <node concept="pVoyu" id="74BOdhSLo8$" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
        </node>
      </node>
      <node concept="2iRkQZ" id="74BOdhSL1BS" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="74BOdhSLAQN">
    <ref role="1XX52x" to="fvm2:74BOdhSGoaZ" resolve="DotSheet" />
    <node concept="3EZMnI" id="74BOdhSLAR3" role="2wV5jI">
      <node concept="2iRkQZ" id="74BOdhSLAR4" role="2iSdaV" />
      <node concept="3EZMnI" id="74BOdhSO0bh" role="3EZMnx">
        <node concept="2iRfu4" id="74BOdhSO0bi" role="2iSdaV" />
        <node concept="3F0ifn" id="74BOdhSLARD" role="3EZMnx">
          <property role="3F0ifm" value="DotFile Sheet:" />
        </node>
        <node concept="3F0A7n" id="74BOdhSO0cR" role="3EZMnx">
          <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
        </node>
      </node>
      <node concept="3F0ifn" id="74BOdhSLARO" role="3EZMnx" />
      <node concept="3EZMnI" id="74BOdhSLItz" role="3EZMnx">
        <node concept="2iRfu4" id="74BOdhSLIt$" role="2iSdaV" />
        <node concept="3XFhqQ" id="74BOdhSLIBF" role="3EZMnx" />
        <node concept="3F1sOY" id="74BOdhSLASz" role="3EZMnx">
          <ref role="1NtTu8" to="fvm2:74BOdhSGFD8" resolve="graph" />
        </node>
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="74BOdhSLT2T">
    <property role="3GE5qa" value="statements.attributes" />
    <ref role="1XX52x" to="fvm2:74BOdhSG_W2" resolve="Attribution" />
    <node concept="3EZMnI" id="74BOdhSLT39" role="2wV5jI">
      <node concept="2iRfu4" id="74BOdhSLT3a" role="2iSdaV" />
      <node concept="3F0A7n" id="74BOdhSLT3J" role="3EZMnx">
        <ref role="1k5W1q" to="tpen:hgVSdfU" resolve="StringLiteral" />
        <ref role="1NtTu8" to="fvm2:58ZMa6mNoLF" resolve="attributionType" />
      </node>
      <node concept="3F1sOY" id="74BOdhSLT4d" role="3EZMnx">
        <ref role="1NtTu8" to="fvm2:74BOdhSLQtr" resolve="attributList" />
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="74BOdhSMnHy">
    <property role="3GE5qa" value="statements" />
    <ref role="1XX52x" to="fvm2:74BOdhSG_VR" resolve="Edge" />
    <node concept="3EZMnI" id="74BOdhSMnHM" role="2wV5jI">
      <node concept="2iRfu4" id="74BOdhSMnHN" role="2iSdaV" />
      <node concept="3F1sOY" id="74BOdhSMC72" role="3EZMnx">
        <ref role="1NtTu8" to="fvm2:74BOdhSM_gG" resolve="left" />
      </node>
      <node concept="3F0A7n" id="74BOdhSMnLu" role="3EZMnx">
        <ref role="1NtTu8" to="fvm2:58ZMa6mNoLD" resolve="operator" />
      </node>
      <node concept="3F1sOY" id="74BOdhSMC8v" role="3EZMnx">
        <ref role="1NtTu8" to="fvm2:74BOdhSM_h8" resolve="right" />
      </node>
      <node concept="3F2HdR" id="74BOdhSPNMb" role="3EZMnx">
        <ref role="1NtTu8" to="fvm2:74BOdhSPNvG" resolve="attributeList" />
        <node concept="2iRfu4" id="74BOdhSPNMd" role="2czzBx" />
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="74BOdhSMWcc">
    <property role="3GE5qa" value="statements" />
    <ref role="1XX52x" to="fvm2:74BOdhSMKC3" resolve="EdgeExtension" />
    <node concept="3EZMnI" id="74BOdhSMWcs" role="2wV5jI">
      <node concept="2iRfu4" id="74BOdhSMWct" role="2iSdaV" />
      <node concept="3F1sOY" id="74BOdhSN4Th" role="3EZMnx">
        <ref role="1NtTu8" to="fvm2:74BOdhSN4Sy" resolve="left" />
      </node>
      <node concept="3F0A7n" id="74BOdhSMWd2" role="3EZMnx">
        <ref role="1NtTu8" to="fvm2:58ZMa6mNoLJ" resolve="operator" />
      </node>
      <node concept="3F1sOY" id="74BOdhSMWdw" role="3EZMnx">
        <ref role="1NtTu8" to="fvm2:74BOdhSMKCs" resolve="right" />
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="74BOdhSOARd">
    <ref role="1XX52x" to="fvm2:74BOdhSG_Up" resolve="Graph" />
    <node concept="3EZMnI" id="74BOdhSOARC" role="2wV5jI">
      <node concept="2iRfu4" id="74BOdhSOARD" role="2iSdaV" />
      <node concept="3F0ifn" id="74BOdhSOARt" role="3EZMnx">
        <property role="3F0ifm" value="graph" />
      </node>
      <node concept="B$lHz" id="74BOdhSOASx" role="3EZMnx" />
    </node>
  </node>
  <node concept="24kQdi" id="74BOdhSSAJh">
    <ref role="1XX52x" to="fvm2:74BOdhSG_U$" resolve="Digraph" />
    <node concept="3EZMnI" id="74BOdhSSAJx" role="2wV5jI">
      <node concept="2iRfu4" id="74BOdhSSAJy" role="2iSdaV" />
      <node concept="3F0ifn" id="74BOdhSSAK7" role="3EZMnx">
        <property role="3F0ifm" value="digraph" />
      </node>
      <node concept="B$lHz" id="74BOdhSSAKT" role="3EZMnx" />
    </node>
  </node>
</model>

