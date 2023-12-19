import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';

class Languages01Record extends FirestoreRecord {
  Languages01Record._(
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
          ? parent.collection('languages01')
          : FirebaseFirestore.instance.collectionGroup('languages01');

  static DocumentReference createDoc(DocumentReference parent) =>
      parent.collection('languages01').doc();

  static Stream<Languages01Record> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => Languages01Record.fromSnapshot(s));

  static Future<Languages01Record> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => Languages01Record.fromSnapshot(s));

  static Languages01Record fromSnapshot(DocumentSnapshot snapshot) =>
      Languages01Record._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static Languages01Record getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      Languages01Record._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'Languages01Record(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is Languages01Record &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createLanguages01RecordData({
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

class Languages01RecordDocumentEquality implements Equality<Languages01Record> {
  const Languages01RecordDocumentEquality();

  @override
  bool equals(Languages01Record? e1, Languages01Record? e2) {
    return e1?.one == e2?.one && e1?.ref == e2?.ref;
  }

  @override
  int hash(Languages01Record? e) => const ListEquality().hash([e?.one, e?.ref]);

  @override
  bool isValidKey(Object? o) => o is Languages01Record;
}
