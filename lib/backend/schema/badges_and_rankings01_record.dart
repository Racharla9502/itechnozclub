import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';

class BadgesAndRankings01Record extends FirestoreRecord {
  BadgesAndRankings01Record._(
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
          ? parent.collection('badges_and_rankings01')
          : FirebaseFirestore.instance.collectionGroup('badges_and_rankings01');

  static DocumentReference createDoc(DocumentReference parent) =>
      parent.collection('badges_and_rankings01').doc();

  static Stream<BadgesAndRankings01Record> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => BadgesAndRankings01Record.fromSnapshot(s));

  static Future<BadgesAndRankings01Record> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then((s) => BadgesAndRankings01Record.fromSnapshot(s));

  static BadgesAndRankings01Record fromSnapshot(DocumentSnapshot snapshot) =>
      BadgesAndRankings01Record._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static BadgesAndRankings01Record getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      BadgesAndRankings01Record._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'BadgesAndRankings01Record(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is BadgesAndRankings01Record &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createBadgesAndRankings01RecordData({
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

class BadgesAndRankings01RecordDocumentEquality
    implements Equality<BadgesAndRankings01Record> {
  const BadgesAndRankings01RecordDocumentEquality();

  @override
  bool equals(BadgesAndRankings01Record? e1, BadgesAndRankings01Record? e2) {
    return e1?.one == e2?.one && e1?.ref == e2?.ref;
  }

  @override
  int hash(BadgesAndRankings01Record? e) =>
      const ListEquality().hash([e?.one, e?.ref]);

  @override
  bool isValidKey(Object? o) => o is BadgesAndRankings01Record;
}
