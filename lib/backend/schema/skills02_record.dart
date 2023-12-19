import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';

class Skills02Record extends FirestoreRecord {
  Skills02Record._(
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
          ? parent.collection('skills02')
          : FirebaseFirestore.instance.collectionGroup('skills02');

  static DocumentReference createDoc(DocumentReference parent) =>
      parent.collection('skills02').doc();

  static Stream<Skills02Record> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => Skills02Record.fromSnapshot(s));

  static Future<Skills02Record> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => Skills02Record.fromSnapshot(s));

  static Skills02Record fromSnapshot(DocumentSnapshot snapshot) =>
      Skills02Record._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static Skills02Record getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      Skills02Record._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'Skills02Record(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is Skills02Record &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createSkills02RecordData({
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

class Skills02RecordDocumentEquality implements Equality<Skills02Record> {
  const Skills02RecordDocumentEquality();

  @override
  bool equals(Skills02Record? e1, Skills02Record? e2) {
    return e1?.one == e2?.one && e1?.ref == e2?.ref;
  }

  @override
  int hash(Skills02Record? e) => const ListEquality().hash([e?.one, e?.ref]);

  @override
  bool isValidKey(Object? o) => o is Skills02Record;
}
