import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';

class Education04Record extends FirestoreRecord {
  Education04Record._(
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
          ? parent.collection('education04')
          : FirebaseFirestore.instance.collectionGroup('education04');

  static DocumentReference createDoc(DocumentReference parent) =>
      parent.collection('education04').doc();

  static Stream<Education04Record> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => Education04Record.fromSnapshot(s));

  static Future<Education04Record> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => Education04Record.fromSnapshot(s));

  static Education04Record fromSnapshot(DocumentSnapshot snapshot) =>
      Education04Record._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static Education04Record getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      Education04Record._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'Education04Record(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is Education04Record &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createEducation04RecordData({
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

class Education04RecordDocumentEquality implements Equality<Education04Record> {
  const Education04RecordDocumentEquality();

  @override
  bool equals(Education04Record? e1, Education04Record? e2) {
    return e1?.schoolName == e2?.schoolName &&
        e1?.grade == e2?.grade &&
        e1?.yearPass == e2?.yearPass &&
        e1?.department == e2?.department &&
        e1?.ref == e2?.ref;
  }

  @override
  int hash(Education04Record? e) => const ListEquality()
      .hash([e?.schoolName, e?.grade, e?.yearPass, e?.department, e?.ref]);

  @override
  bool isValidKey(Object? o) => o is Education04Record;
}
