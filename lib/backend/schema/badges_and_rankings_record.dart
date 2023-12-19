import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';

class BadgesAndRankingsRecord extends FirestoreRecord {
  BadgesAndRankingsRecord._(
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
          ? parent.collection('badges_and_rankings')
          : FirebaseFirestore.instance.collectionGroup('badges_and_rankings');

  static DocumentReference createDoc(DocumentReference parent) =>
      parent.collection('badges_and_rankings').doc();

  static Stream<BadgesAndRankingsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => BadgesAndRankingsRecord.fromSnapshot(s));

  static Future<BadgesAndRankingsRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then((s) => BadgesAndRankingsRecord.fromSnapshot(s));

  static BadgesAndRankingsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      BadgesAndRankingsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static BadgesAndRankingsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      BadgesAndRankingsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'BadgesAndRankingsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is BadgesAndRankingsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createBadgesAndRankingsRecordData({
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

class BadgesAndRankingsRecordDocumentEquality
    implements Equality<BadgesAndRankingsRecord> {
  const BadgesAndRankingsRecordDocumentEquality();

  @override
  bool equals(BadgesAndRankingsRecord? e1, BadgesAndRankingsRecord? e2) {
    return e1?.one == e2?.one && e1?.ref == e2?.ref;
  }

  @override
  int hash(BadgesAndRankingsRecord? e) =>
      const ListEquality().hash([e?.one, e?.ref]);

  @override
  bool isValidKey(Object? o) => o is BadgesAndRankingsRecord;
}
