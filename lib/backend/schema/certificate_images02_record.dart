import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';

class CertificateImages02Record extends FirestoreRecord {
  CertificateImages02Record._(
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
          ? parent.collection('certificate_images02')
          : FirebaseFirestore.instance.collectionGroup('certificate_images02');

  static DocumentReference createDoc(DocumentReference parent) =>
      parent.collection('certificate_images02').doc();

  static Stream<CertificateImages02Record> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => CertificateImages02Record.fromSnapshot(s));

  static Future<CertificateImages02Record> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then((s) => CertificateImages02Record.fromSnapshot(s));

  static CertificateImages02Record fromSnapshot(DocumentSnapshot snapshot) =>
      CertificateImages02Record._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static CertificateImages02Record getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      CertificateImages02Record._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'CertificateImages02Record(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is CertificateImages02Record &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createCertificateImages02RecordData({
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

class CertificateImages02RecordDocumentEquality
    implements Equality<CertificateImages02Record> {
  const CertificateImages02RecordDocumentEquality();

  @override
  bool equals(CertificateImages02Record? e1, CertificateImages02Record? e2) {
    return e1?.one == e2?.one && e1?.ref == e2?.ref;
  }

  @override
  int hash(CertificateImages02Record? e) =>
      const ListEquality().hash([e?.one, e?.ref]);

  @override
  bool isValidKey(Object? o) => o is CertificateImages02Record;
}
