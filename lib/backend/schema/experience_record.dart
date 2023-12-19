import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';

class ExperienceRecord extends FirestoreRecord {
  ExperienceRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "company_name" field.
  String? _companyName;
  String get companyName => _companyName ?? '';
  bool hasCompanyName() => _companyName != null;

  // "description" field.
  String? _description;
  String get description => _description ?? '';
  bool hasDescription() => _description != null;

  // "position" field.
  String? _position;
  String get position => _position ?? '';
  bool hasPosition() => _position != null;

  // "year" field.
  String? _year;
  String get year => _year ?? '';
  bool hasYear() => _year != null;

  // "ref" field.
  DocumentReference? _ref;
  DocumentReference? get ref => _ref;
  bool hasRef() => _ref != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _companyName = snapshotData['company_name'] as String?;
    _description = snapshotData['description'] as String?;
    _position = snapshotData['position'] as String?;
    _year = snapshotData['year'] as String?;
    _ref = snapshotData['ref'] as DocumentReference?;
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('experience')
          : FirebaseFirestore.instance.collectionGroup('experience');

  static DocumentReference createDoc(DocumentReference parent) =>
      parent.collection('experience').doc();

  static Stream<ExperienceRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ExperienceRecord.fromSnapshot(s));

  static Future<ExperienceRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ExperienceRecord.fromSnapshot(s));

  static ExperienceRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ExperienceRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ExperienceRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ExperienceRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ExperienceRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ExperienceRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createExperienceRecordData({
  String? companyName,
  String? description,
  String? position,
  String? year,
  DocumentReference? ref,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'company_name': companyName,
      'description': description,
      'position': position,
      'year': year,
      'ref': ref,
    }.withoutNulls,
  );

  return firestoreData;
}

class ExperienceRecordDocumentEquality implements Equality<ExperienceRecord> {
  const ExperienceRecordDocumentEquality();

  @override
  bool equals(ExperienceRecord? e1, ExperienceRecord? e2) {
    return e1?.companyName == e2?.companyName &&
        e1?.description == e2?.description &&
        e1?.position == e2?.position &&
        e1?.year == e2?.year &&
        e1?.ref == e2?.ref;
  }

  @override
  int hash(ExperienceRecord? e) => const ListEquality()
      .hash([e?.companyName, e?.description, e?.position, e?.year, e?.ref]);

  @override
  bool isValidKey(Object? o) => o is ExperienceRecord;
}
