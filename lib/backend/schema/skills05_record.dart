import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';

class Skills05Record extends FirestoreRecord {
  Skills05Record._(
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
          ? parent.collection('skills05')
          : FirebaseFirestore.instance.collectionGroup('skills05');

  static DocumentReference createDoc(DocumentReference parent) =>
      parent.collection('skills05').doc();

  static Stream<Skills05Record> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => Skills05Record.fromSnapshot(s));

  static Future<Skills05Record> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => Skills05Record.fromSnapshot(s));

  static Skills05Record fromSnapshot(DocumentSnapshot snapshot) =>
      Skills05Record._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static Skills05Record getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      Skills05Record._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'Skills05Record(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is Skills05Record &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createSkills05RecordData({
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

class Skills05RecordDocumentEquality implements Equality<Skills05Record> {
  const Skills05RecordDocumentEquality();

  @override
  bool equals(Skills05Record? e1, Skills05Record? e2) {
    return e1?.one == e2?.one && e1?.ref == e2?.ref;
  }

  @override
  int hash(Skills05Record? e) => const ListEquality().hash([e?.one, e?.ref]);

  @override
  bool isValidKey(Object? o) => o is Skills05Record;
}
