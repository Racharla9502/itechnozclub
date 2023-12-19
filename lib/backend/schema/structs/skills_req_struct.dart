// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import '/flutter_flow/flutter_flow_util.dart';

class SkillsReqStruct extends FFFirebaseStruct {
  SkillsReqStruct({
    String? skil,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _skil = skil,
        super(firestoreUtilData);

  // "skil" field.
  String? _skil;
  String get skil => _skil ?? '';
  set skil(String? val) => _skil = val;
  bool hasSkil() => _skil != null;

  static SkillsReqStruct fromMap(Map<String, dynamic> data) => SkillsReqStruct(
        skil: data['skil'] as String?,
      );

  static SkillsReqStruct? maybeFromMap(dynamic data) =>
      data is Map<String, dynamic> ? SkillsReqStruct.fromMap(data) : null;

  Map<String, dynamic> toMap() => {
        'skil': _skil,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'skil': serializeParam(
          _skil,
          ParamType.String,
        ),
      }.withoutNulls;

  static SkillsReqStruct fromSerializableMap(Map<String, dynamic> data) =>
      SkillsReqStruct(
        skil: deserializeParam(
          data['skil'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'SkillsReqStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is SkillsReqStruct && skil == other.skil;
  }

  @override
  int get hashCode => const ListEquality().hash([skil]);
}

SkillsReqStruct createSkillsReqStruct({
  String? skil,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    SkillsReqStruct(
      skil: skil,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

SkillsReqStruct? updateSkillsReqStruct(
  SkillsReqStruct? skillsReq, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    skillsReq
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addSkillsReqStructData(
  Map<String, dynamic> firestoreData,
  SkillsReqStruct? skillsReq,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (skillsReq == null) {
    return;
  }
  if (skillsReq.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && skillsReq.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final skillsReqData = getSkillsReqFirestoreData(skillsReq, forFieldValue);
  final nestedData = skillsReqData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = skillsReq.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getSkillsReqFirestoreData(
  SkillsReqStruct? skillsReq, [
  bool forFieldValue = false,
]) {
  if (skillsReq == null) {
    return {};
  }
  final firestoreData = mapToFirestore(skillsReq.toMap());

  // Add any Firestore field values
  skillsReq.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getSkillsReqListFirestoreData(
  List<SkillsReqStruct>? skillsReqs,
) =>
    skillsReqs?.map((e) => getSkillsReqFirestoreData(e, true)).toList() ?? [];
