import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';

class Certificates02Record extends FirestoreRecord {
  Certificates02Record._(
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
          ? parent.collection('certificates02')
          : FirebaseFirestore.instance.collectionGroup('certificates02');

  static DocumentReference createDoc(DocumentReference parent) =>
      parent.collection('certificates02').doc();

  static Stream<Certificates02Record> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => Certificates02Record.fromSnapshot(s));

  static Future<Certificates02Record> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => Certificates02Record.fromSnapshot(s));

  static Certificates02Record fromSnapshot(DocumentSnapshot snapshot) =>
      Certificates02Record._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static Certificates02Record getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      Certificates02Record._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'Certificates02Record(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is Certificates02Record &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createCertificates02RecordData({
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

class Certificates02RecordDocumentEquality
    implements Equality<Certificates02Record> {
  const Certificates02RecordDocumentEquality();

  @override
  bool equals(Certificates02Record? e1, Certificates02Record? e2) {
    return e1?.first == e2?.first && e1?.ref == e2?.ref;
  }

  @override
  int hash(Certificates02Record? e) =>
      const ListEquality().hash([e?.first, e?.ref]);

  @override
  bool isValidKey(Object? o) => o is Certificates02Record;
}
