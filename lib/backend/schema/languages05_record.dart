import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';

class Languages05Record extends FirestoreRecord {
  Languages05Record._(
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
          ? parent.collection('languages05')
          : FirebaseFirestore.instance.collectionGroup('languages05');

  static DocumentReference createDoc(DocumentReference parent) =>
      parent.collection('languages05').doc();

  static Stream<Languages05Record> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => Languages05Record.fromSnapshot(s));

  static Future<Languages05Record> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => Languages05Record.fromSnapshot(s));

  static Languages05Record fromSnapshot(DocumentSnapshot snapshot) =>
      Languages05Record._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static Languages05Record getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      Languages05Record._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'Languages05Record(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is Languages05Record &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createLanguages05RecordData({
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

class Languages05RecordDocumentEquality implements Equality<Languages05Record> {
  const Languages05RecordDocumentEquality();

  @override
  bool equals(Languages05Record? e1, Languages05Record? e2) {
    return e1?.one == e2?.one && e1?.ref == e2?.ref;
  }

  @override
  int hash(Languages05Record? e) => const ListEquality().hash([e?.one, e?.ref]);

  @override
  bool isValidKey(Object? o) => o is Languages05Record;
}
