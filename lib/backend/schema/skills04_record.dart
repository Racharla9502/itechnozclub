import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';

class Skills04Record extends FirestoreRecord {
  Skills04Record._(
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
          ? parent.collection('skills04')
          : FirebaseFirestore.instance.collectionGroup('skills04');

  static DocumentReference createDoc(DocumentReference parent) =>
      parent.collection('skills04').doc();

  static Stream<Skills04Record> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => Skills04Record.fromSnapshot(s));

  static Future<Skills04Record> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => Skills04Record.fromSnapshot(s));

  static Skills04Record fromSnapshot(DocumentSnapshot snapshot) =>
      Skills04Record._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static Skills04Record getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      Skills04Record._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'Skills04Record(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is Skills04Record &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createSkills04RecordData({
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

class Skills04RecordDocumentEquality implements Equality<Skills04Record> {
  const Skills04RecordDocumentEquality();

  @override
  bool equals(Skills04Record? e1, Skills04Record? e2) {
    return e1?.one == e2?.one && e1?.ref == e2?.ref;
  }

  @override
  int hash(Skills04Record? e) => const ListEquality().hash([e?.one, e?.ref]);

  @override
  bool isValidKey(Object? o) => o is Skills04Record;
}
