import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';

class EducationRecord extends FirestoreRecord {
  EducationRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "school_name" field.
  String? _schoolName;
  String get schoolName => _schoolName ?? '';
  bool hasSchoolName() => _schoolName != null;

  // "grade" field.
  String? _grade;
  String get grade => _grade ?? '';
  bool hasGrade() => _grade != null;

  // "year_pass" field.
  String? _yearPass;
  String get yearPass => _yearPass ?? '';
  bool hasYearPass() => _yearPass != null;

  // "department" field.
  String? _department;
  String get department => _department ?? '';
  bool hasDepartment() => _department != null;

  // "ref" field.
  DocumentReference? _ref;
  DocumentReference? get ref => _ref;
  bool hasRef() => _ref != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _schoolName = snapshotData['school_name'] as String?;
    _grade = snapshotData['grade'] as String?;
    _yearPass = snapshotData['year_pass'] as String?;
    _department = snapshotData['department'] as String?;
    _ref = snapshotData['ref'] as DocumentReference?;
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('education')
          : FirebaseFirestore.instance.collectionGroup('education');

  static DocumentReference createDoc(DocumentReference parent) =>
      parent.collection('education').doc();

  static Stream<EducationRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => EducationRecord.fromSnapshot(s));

  static Future<EducationRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => EducationRecord.fromSnapshot(s));

  static EducationRecord fromSnapshot(DocumentSnapshot snapshot) =>
      EducationRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static EducationRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      EducationRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'EducationRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is EducationRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createEducationRecordData({
  String? schoolName,
  String? grade,
  String? yearPass,
  String? department,
  DocumentReference? ref,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'school_name': schoolName,
      'grade': grade,
      'year_pass': yearPass,
      'department': department,
      'ref': ref,
    }.withoutNulls,
  );

  return firestoreData;
}

class EducationRecordDocumentEquality implements Equality<EducationRecord> {
  const EducationRecordDocumentEquality();

  @override
  bool equals(EducationRecord? e1, EducationRecord? e2) {
    return e1?.schoolName == e2?.schoolName &&
        e1?.grade == e2?.grade &&
        e1?.yearPass == e2?.yearPass &&
        e1?.department == e2?.department &&
        e1?.ref == e2?.ref;
  }

  @override
  int hash(EducationRecord? e) => const ListEquality()
      .hash([e?.schoolName, e?.grade, e?.yearPass, e?.department, e?.ref]);

  @override
  bool isValidKey(Object? o) => o is EducationRecord;
}
