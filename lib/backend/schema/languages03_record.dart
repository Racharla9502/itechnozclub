import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';

class Languages03Record extends FirestoreRecord {
  Languages03Record._(
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
          ? parent.collection('languages03')
          : FirebaseFirestore.instance.collectionGroup('languages03');

  static DocumentReference createDoc(DocumentReference parent) =>
      parent.collection('languages03').doc();

  static Stream<Languages03Record> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => Languages03Record.fromSnapshot(s));

  static Future<Languages03Record> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => Languages03Record.fromSnapshot(s));

  static Languages03Record fromSnapshot(DocumentSnapshot snapshot) =>
      Languages03Record._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static Languages03Record getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      Languages03Record._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'Languages03Record(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is Languages03Record &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createLanguages03RecordData({
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

class Languages03RecordDocumentEquality implements Equality<Languages03Record> {
  const Languages03RecordDocumentEquality();

  @override
  bool equals(Languages03Record? e1, Languages03Record? e2) {
    return e1?.one == e2?.one && e1?.ref == e2?.ref;
  }

  @override
  int hash(Languages03Record? e) => const ListEquality().hash([e?.one, e?.ref]);

  @override
  bool isValidKey(Object? o) => o is Languages03Record;
}
