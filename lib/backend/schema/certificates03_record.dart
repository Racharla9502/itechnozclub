import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';

class Certificates03Record extends FirestoreRecord {
  Certificates03Record._(
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
          ? parent.collection('certificates03')
          : FirebaseFirestore.instance.collectionGroup('certificates03');

  static DocumentReference createDoc(DocumentReference parent) =>
      parent.collection('certificates03').doc();

  static Stream<Certificates03Record> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => Certificates03Record.fromSnapshot(s));

  static Future<Certificates03Record> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => Certificates03Record.fromSnapshot(s));

  static Certificates03Record fromSnapshot(DocumentSnapshot snapshot) =>
      Certificates03Record._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static Certificates03Record getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      Certificates03Record._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'Certificates03Record(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is Certificates03Record &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createCertificates03RecordData({
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

class Certificates03RecordDocumentEquality
    implements Equality<Certificates03Record> {
  const Certificates03RecordDocumentEquality();

  @override
  bool equals(Certificates03Record? e1, Certificates03Record? e2) {
    return e1?.first == e2?.first && e1?.ref == e2?.ref;
  }

  @override
  int hash(Certificates03Record? e) =>
      const ListEquality().hash([e?.first, e?.ref]);

  @override
  bool isValidKey(Object? o) => o is Certificates03Record;
}
