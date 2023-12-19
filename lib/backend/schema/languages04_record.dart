import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';

class Languages04Record extends FirestoreRecord {
  Languages04Record._(
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
          ? parent.collection('languages04')
          : FirebaseFirestore.instance.collectionGroup('languages04');

  static DocumentReference createDoc(DocumentReference parent) =>
      parent.collection('languages04').doc();

  static Stream<Languages04Record> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => Languages04Record.fromSnapshot(s));

  static Future<Languages04Record> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => Languages04Record.fromSnapshot(s));

  static Languages04Record fromSnapshot(DocumentSnapshot snapshot) =>
      Languages04Record._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static Languages04Record getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      Languages04Record._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'Languages04Record(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is Languages04Record &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createLanguages04RecordData({
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

class Languages04RecordDocumentEquality implements Equality<Languages04Record> {
  const Languages04RecordDocumentEquality();

  @override
  bool equals(Languages04Record? e1, Languages04Record? e2) {
    return e1?.one == e2?.one && e1?.ref == e2?.ref;
  }

  @override
  int hash(Languages04Record? e) => const ListEquality().hash([e?.one, e?.ref]);

  @override
  bool isValidKey(Object? o) => o is Languages04Record;
}
