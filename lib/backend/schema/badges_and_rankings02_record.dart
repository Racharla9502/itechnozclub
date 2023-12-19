import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';

class BadgesAndRankings02Record extends FirestoreRecord {
  BadgesAndRankings02Record._(
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
          ? parent.collection('badges_and_rankings02')
          : FirebaseFirestore.instance.collectionGroup('badges_and_rankings02');

  static DocumentReference createDoc(DocumentReference parent) =>
      parent.collection('badges_and_rankings02').doc();

  static Stream<BadgesAndRankings02Record> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => BadgesAndRankings02Record.fromSnapshot(s));

  static Future<BadgesAndRankings02Record> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then((s) => BadgesAndRankings02Record.fromSnapshot(s));

  static BadgesAndRankings02Record fromSnapshot(DocumentSnapshot snapshot) =>
      BadgesAndRankings02Record._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static BadgesAndRankings02Record getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      BadgesAndRankings02Record._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'BadgesAndRankings02Record(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is BadgesAndRankings02Record &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createBadgesAndRankings02RecordData({
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

class BadgesAndRankings02RecordDocumentEquality
    implements Equality<BadgesAndRankings02Record> {
  const BadgesAndRankings02RecordDocumentEquality();

  @override
  bool equals(BadgesAndRankings02Record? e1, BadgesAndRankings02Record? e2) {
    return e1?.one == e2?.one && e1?.ref == e2?.ref;
  }

  @override
  int hash(BadgesAndRankings02Record? e) =>
      const ListEquality().hash([e?.one, e?.ref]);

  @override
  bool isValidKey(Object? o) => o is BadgesAndRankings02Record;
}
