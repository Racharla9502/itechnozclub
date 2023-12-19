import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';

class Experience04Record extends FirestoreRecord {
  Experience04Record._(
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
          ? parent.collection('experience04')
          : FirebaseFirestore.instance.collectionGroup('experience04');

  static DocumentReference createDoc(DocumentReference parent) =>
      parent.collection('experience04').doc();

  static Stream<Experience04Record> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => Experience04Record.fromSnapshot(s));

  static Future<Experience04Record> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => Experience04Record.fromSnapshot(s));

  static Experience04Record fromSnapshot(DocumentSnapshot snapshot) =>
      Experience04Record._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static Experience04Record getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      Experience04Record._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'Experience04Record(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is Experience04Record &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createExperience04RecordData({
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

class Experience04RecordDocumentEquality
    implements Equality<Experience04Record> {
  const Experience04RecordDocumentEquality();

  @override
  bool equals(Experience04Record? e1, Experience04Record? e2) {
    return e1?.companyName == e2?.companyName &&
        e1?.description == e2?.description &&
        e1?.position == e2?.position &&
        e1?.year == e2?.year &&
        e1?.ref == e2?.ref;
  }

  @override
  int hash(Experience04Record? e) => const ListEquality()
      .hash([e?.companyName, e?.description, e?.position, e?.year, e?.ref]);

  @override
  bool isValidKey(Object? o) => o is Experience04Record;
}
