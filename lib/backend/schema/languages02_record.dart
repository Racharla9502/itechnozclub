import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';

class Languages02Record extends FirestoreRecord {
  Languages02Record._(
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
          ? parent.collection('languages02')
          : FirebaseFirestore.instance.collectionGroup('languages02');

  static DocumentReference createDoc(DocumentReference parent) =>
      parent.collection('languages02').doc();

  static Stream<Languages02Record> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => Languages02Record.fromSnapshot(s));

  static Future<Languages02Record> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => Languages02Record.fromSnapshot(s));

  static Languages02Record fromSnapshot(DocumentSnapshot snapshot) =>
      Languages02Record._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static Languages02Record getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      Languages02Record._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'Languages02Record(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is Languages02Record &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createLanguages02RecordData({
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

class Languages02RecordDocumentEquality implements Equality<Languages02Record> {
  const Languages02RecordDocumentEquality();

  @override
  bool equals(Languages02Record? e1, Languages02Record? e2) {
    return e1?.one == e2?.one && e1?.ref == e2?.ref;
  }

  @override
  int hash(Languages02Record? e) => const ListEquality().hash([e?.one, e?.ref]);

  @override
  bool isValidKey(Object? o) => o is Languages02Record;
}
