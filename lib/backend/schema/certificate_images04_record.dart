import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';

class CertificateImages04Record extends FirestoreRecord {
  CertificateImages04Record._(
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
          ? parent.collection('certificate_images04')
          : FirebaseFirestore.instance.collectionGroup('certificate_images04');

  static DocumentReference createDoc(DocumentReference parent) =>
      parent.collection('certificate_images04').doc();

  static Stream<CertificateImages04Record> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => CertificateImages04Record.fromSnapshot(s));

  static Future<CertificateImages04Record> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then((s) => CertificateImages04Record.fromSnapshot(s));

  static CertificateImages04Record fromSnapshot(DocumentSnapshot snapshot) =>
      CertificateImages04Record._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static CertificateImages04Record getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      CertificateImages04Record._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'CertificateImages04Record(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is CertificateImages04Record &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createCertificateImages04RecordData({
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

class CertificateImages04RecordDocumentEquality
    implements Equality<CertificateImages04Record> {
  const CertificateImages04RecordDocumentEquality();

  @override
  bool equals(CertificateImages04Record? e1, CertificateImages04Record? e2) {
    return e1?.one == e2?.one && e1?.ref == e2?.ref;
  }

  @override
  int hash(CertificateImages04Record? e) =>
      const ListEquality().hash([e?.one, e?.ref]);

  @override
  bool isValidKey(Object? o) => o is CertificateImages04Record;
}
