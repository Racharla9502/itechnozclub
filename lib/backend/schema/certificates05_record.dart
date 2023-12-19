import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';

class Certificates05Record extends FirestoreRecord {
  Certificates05Record._(
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
          ? parent.collection('certificates05')
          : FirebaseFirestore.instance.collectionGroup('certificates05');

  static DocumentReference createDoc(DocumentReference parent) =>
      parent.collection('certificates05').doc();

  static Stream<Certificates05Record> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => Certificates05Record.fromSnapshot(s));

  static Future<Certificates05Record> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => Certificates05Record.fromSnapshot(s));

  static Certificates05Record fromSnapshot(DocumentSnapshot snapshot) =>
      Certificates05Record._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static Certificates05Record getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      Certificates05Record._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'Certificates05Record(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is Certificates05Record &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createCertificates05RecordData({
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

class Certificates05RecordDocumentEquality
    implements Equality<Certificates05Record> {
  const Certificates05RecordDocumentEquality();

  @override
  bool equals(Certificates05Record? e1, Certificates05Record? e2) {
    return e1?.first == e2?.first && e1?.ref == e2?.ref;
  }

  @override
  int hash(Certificates05Record? e) =>
      const ListEquality().hash([e?.first, e?.ref]);

  @override
  bool isValidKey(Object? o) => o is Certificates05Record;
}
