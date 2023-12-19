import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';

class CertificateImages01Record extends FirestoreRecord {
  CertificateImages01Record._(
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
          ? parent.collection('certificate_images01')
          : FirebaseFirestore.instance.collectionGroup('certificate_images01');

  static DocumentReference createDoc(DocumentReference parent) =>
      parent.collection('certificate_images01').doc();

  static Stream<CertificateImages01Record> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => CertificateImages01Record.fromSnapshot(s));

  static Future<CertificateImages01Record> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then((s) => CertificateImages01Record.fromSnapshot(s));

  static CertificateImages01Record fromSnapshot(DocumentSnapshot snapshot) =>
      CertificateImages01Record._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static CertificateImages01Record getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      CertificateImages01Record._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'CertificateImages01Record(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is CertificateImages01Record &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createCertificateImages01RecordData({
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

class CertificateImages01RecordDocumentEquality
    implements Equality<CertificateImages01Record> {
  const CertificateImages01RecordDocumentEquality();

  @override
  bool equals(CertificateImages01Record? e1, CertificateImages01Record? e2) {
    return e1?.one == e2?.one && e1?.ref == e2?.ref;
  }

  @override
  int hash(CertificateImages01Record? e) =>
      const ListEquality().hash([e?.one, e?.ref]);

  @override
  bool isValidKey(Object? o) => o is CertificateImages01Record;
}
