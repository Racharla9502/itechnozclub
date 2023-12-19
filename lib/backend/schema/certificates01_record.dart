import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';

class Certificates01Record extends FirestoreRecord {
  Certificates01Record._(
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
          ? parent.collection('certificates01')
          : FirebaseFirestore.instance.collectionGroup('certificates01');

  static DocumentReference createDoc(DocumentReference parent) =>
      parent.collection('certificates01').doc();

  static Stream<Certificates01Record> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => Certificates01Record.fromSnapshot(s));

  static Future<Certificates01Record> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => Certificates01Record.fromSnapshot(s));

  static Certificates01Record fromSnapshot(DocumentSnapshot snapshot) =>
      Certificates01Record._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static Certificates01Record getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      Certificates01Record._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'Certificates01Record(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is Certificates01Record &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createCertificates01RecordData({
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

class Certificates01RecordDocumentEquality
    implements Equality<Certificates01Record> {
  const Certificates01RecordDocumentEquality();

  @override
  bool equals(Certificates01Record? e1, Certificates01Record? e2) {
    return e1?.first == e2?.first && e1?.ref == e2?.ref;
  }

  @override
  int hash(Certificates01Record? e) =>
      const ListEquality().hash([e?.first, e?.ref]);

  @override
  bool isValidKey(Object? o) => o is Certificates01Record;
}
