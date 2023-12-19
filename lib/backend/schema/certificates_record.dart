import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';

class CertificatesRecord extends FirestoreRecord {
  CertificatesRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "first" field.
  String? _first;
  String get first => _first ?? '';
  bool hasFirst() => _first != null;

  // "ref" field.
  DocumentReference? _ref;
  DocumentReference? get ref => _ref;
  bool hasRef() => _ref != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _first = snapshotData['first'] as String?;
    _ref = snapshotData['ref'] as DocumentReference?;
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('certificates')
          : FirebaseFirestore.instance.collectionGroup('certificates');

  static DocumentReference createDoc(DocumentReference parent) =>
      parent.collection('certificates').doc();

  static Stream<CertificatesRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => CertificatesRecord.fromSnapshot(s));

  static Future<CertificatesRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => CertificatesRecord.fromSnapshot(s));

  static CertificatesRecord fromSnapshot(DocumentSnapshot snapshot) =>
      CertificatesRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static CertificatesRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      CertificatesRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'CertificatesRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is CertificatesRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createCertificatesRecordData({
  String? first,
  DocumentReference? ref,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'first': first,
      'ref': ref,
    }.withoutNulls,
  );

  return firestoreData;
}

class CertificatesRecordDocumentEquality
    implements Equality<CertificatesRecord> {
  const CertificatesRecordDocumentEquality();

  @override
  bool equals(CertificatesRecord? e1, CertificatesRecord? e2) {
    return e1?.first == e2?.first && e1?.ref == e2?.ref;
  }

  @override
  int hash(CertificatesRecord? e) =>
      const ListEquality().hash([e?.first, e?.ref]);

  @override
  bool isValidKey(Object? o) => o is CertificatesRecord;
}
