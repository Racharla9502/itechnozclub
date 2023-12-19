import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';

class CertificateImages05Record extends FirestoreRecord {
  CertificateImages05Record._(
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
          ? parent.collection('certificate_images05')
          : FirebaseFirestore.instance.collectionGroup('certificate_images05');

  static DocumentReference createDoc(DocumentReference parent) =>
      parent.collection('certificate_images05').doc();

  static Stream<CertificateImages05Record> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => CertificateImages05Record.fromSnapshot(s));

  static Future<CertificateImages05Record> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then((s) => CertificateImages05Record.fromSnapshot(s));

  static CertificateImages05Record fromSnapshot(DocumentSnapshot snapshot) =>
      CertificateImages05Record._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static CertificateImages05Record getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      CertificateImages05Record._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'CertificateImages05Record(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is CertificateImages05Record &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createCertificateImages05RecordData({
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

class CertificateImages05RecordDocumentEquality
    implements Equality<CertificateImages05Record> {
  const CertificateImages05RecordDocumentEquality();

  @override
  bool equals(CertificateImages05Record? e1, CertificateImages05Record? e2) {
    return e1?.one == e2?.one && e1?.ref == e2?.ref;
  }

  @override
  int hash(CertificateImages05Record? e) =>
      const ListEquality().hash([e?.one, e?.ref]);

  @override
  bool isValidKey(Object? o) => o is CertificateImages05Record;
}
