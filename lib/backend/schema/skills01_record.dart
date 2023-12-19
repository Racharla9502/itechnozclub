import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';

class Skills01Record extends FirestoreRecord {
  Skills01Record._(
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
          ? parent.collection('skills01')
          : FirebaseFirestore.instance.collectionGroup('skills01');

  static DocumentReference createDoc(DocumentReference parent) =>
      parent.collection('skills01').doc();

  static Stream<Skills01Record> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => Skills01Record.fromSnapshot(s));

  static Future<Skills01Record> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => Skills01Record.fromSnapshot(s));

  static Skills01Record fromSnapshot(DocumentSnapshot snapshot) =>
      Skills01Record._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static Skills01Record getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      Skills01Record._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'Skills01Record(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is Skills01Record &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createSkills01RecordData({
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

class Skills01RecordDocumentEquality implements Equality<Skills01Record> {
  const Skills01RecordDocumentEquality();

  @override
  bool equals(Skills01Record? e1, Skills01Record? e2) {
    return e1?.one == e2?.one && e1?.ref == e2?.ref;
  }

  @override
  int hash(Skills01Record? e) => const ListEquality().hash([e?.one, e?.ref]);

  @override
  bool isValidKey(Object? o) => o is Skills01Record;
}
