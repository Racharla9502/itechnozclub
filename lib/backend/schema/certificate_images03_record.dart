import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';

class CertificateImages03Record extends FirestoreRecord {
  CertificateImages03Record._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "one" field.
  String? _one;
  String get one => _one ?? '';
  bool hasOne() => _one != null;

  // "ref" field.
  DocumentReference? _ref;
  DocumentReference? get ref => _ref;
  bool hasRef() => _ref != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _one = snapshotData['one'] as String?;
    _ref = snapshotData['ref'] as DocumentReference?;
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('certificate_images03')
          : FirebaseFirestore.instance.collectionGroup('certificate_images03');

  static DocumentReference createDoc(DocumentReference parent) =>
      parent.collection('certificate_images03').doc();

  static Stream<CertificateImages03Record> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => CertificateImages03Record.fromSnapshot(s));

  static Future<CertificateImages03Record> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then((s) => CertificateImages03Record.fromSnapshot(s));

  static CertificateImages03Record fromSnapshot(DocumentSnapshot snapshot) =>
      CertificateImages03Record._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static CertificateImages03Record getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      CertificateImages03Record._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'CertificateImages03Record(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is CertificateImages03Record &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createCertificateImages03RecordData({
  String? one,
  DocumentReference? ref,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'one': one,
      'ref': ref,
    }.withoutNulls,
  );

  return firestoreData;
}

class CertificateImages03RecordDocumentEquality
    implements Equality<CertificateImages03Record> {
  const CertificateImages03RecordDocumentEquality();

  @override
  bool equals(CertificateImages03Record? e1, CertificateImages03Record? e2) {
    return e1?.one == e2?.one && e1?.ref == e2?.ref;
  }

  @override
  int hash(CertificateImages03Record? e) =>
      const ListEquality().hash([e?.one, e?.ref]);

  @override
  bool isValidKey(Object? o) => o is CertificateImages03Record;
}
