import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';

class Skills03Record extends FirestoreRecord {
  Skills03Record._(
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
          ? parent.collection('skills03')
          : FirebaseFirestore.instance.collectionGroup('skills03');

  static DocumentReference createDoc(DocumentReference parent) =>
      parent.collection('skills03').doc();

  static Stream<Skills03Record> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => Skills03Record.fromSnapshot(s));

  static Future<Skills03Record> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => Skills03Record.fromSnapshot(s));

  static Skills03Record fromSnapshot(DocumentSnapshot snapshot) =>
      Skills03Record._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static Skills03Record getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      Skills03Record._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'Skills03Record(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is Skills03Record &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createSkills03RecordData({
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

class Skills03RecordDocumentEquality implements Equality<Skills03Record> {
  const Skills03RecordDocumentEquality();

  @override
  bool equals(Skills03Record? e1, Skills03Record? e2) {
    return e1?.one == e2?.one && e1?.ref == e2?.ref;
  }

  @override
  int hash(Skills03Record? e) => const ListEquality().hash([e?.one, e?.ref]);

  @override
  bool isValidKey(Object? o) => o is Skills03Record;
}
