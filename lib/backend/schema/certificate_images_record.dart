import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';

class CertificateImagesRecord extends FirestoreRecord {
  CertificateImagesRecord._(
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
          ? parent.collection('certificate_images')
          : FirebaseFirestore.instance.collectionGroup('certificate_images');

  static DocumentReference createDoc(DocumentReference parent) =>
      parent.collection('certificate_images').doc();

  static Stream<CertificateImagesRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => CertificateImagesRecord.fromSnapshot(s));

  static Future<CertificateImagesRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then((s) => CertificateImagesRecord.fromSnapshot(s));

  static CertificateImagesRecord fromSnapshot(DocumentSnapshot snapshot) =>
      CertificateImagesRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static CertificateImagesRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      CertificateImagesRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'CertificateImagesRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is CertificateImagesRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createCertificateImagesRecordData({
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

class CertificateImagesRecordDocumentEquality
    implements Equality<CertificateImagesRecord> {
  const CertificateImagesRecordDocumentEquality();

  @override
  bool equals(CertificateImagesRecord? e1, CertificateImagesRecord? e2) {
    return e1?.one == e2?.one && e1?.ref == e2?.ref;
  }

  @override
  int hash(CertificateImagesRecord? e) =>
      const ListEquality().hash([e?.one, e?.ref]);

  @override
  bool isValidKey(Object? o) => o is CertificateImagesRecord;
}
