import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';

class Certificates04Record extends FirestoreRecord {
  Certificates04Record._(
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
          ? parent.collection('certificates04')
          : FirebaseFirestore.instance.collectionGroup('certificates04');

  static DocumentReference createDoc(DocumentReference parent) =>
      parent.collection('certificates04').doc();

  static Stream<Certificates04Record> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => Certificates04Record.fromSnapshot(s));

  static Future<Certificates04Record> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => Certificates04Record.fromSnapshot(s));

  static Certificates04Record fromSnapshot(DocumentSnapshot snapshot) =>
      Certificates04Record._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static Certificates04Record getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      Certificates04Record._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'Certificates04Record(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is Certificates04Record &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createCertificates04RecordData({
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

class Certificates04RecordDocumentEquality
    implements Equality<Certificates04Record> {
  const Certificates04RecordDocumentEquality();

  @override
  bool equals(Certificates04Record? e1, Certificates04Record? e2) {
    return e1?.first == e2?.first && e1?.ref == e2?.ref;
  }

  @override
  int hash(Certificates04Record? e) =>
      const ListEquality().hash([e?.first, e?.ref]);

  @override
  bool isValidKey(Object? o) => o is Certificates04Record;
}
