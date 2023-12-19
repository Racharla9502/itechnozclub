import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';

class BadgesAndRankings04Record extends FirestoreRecord {
  BadgesAndRankings04Record._(
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
          ? parent.collection('badges_and_rankings04')
          : FirebaseFirestore.instance.collectionGroup('badges_and_rankings04');

  static DocumentReference createDoc(DocumentReference parent) =>
      parent.collection('badges_and_rankings04').doc();

  static Stream<BadgesAndRankings04Record> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => BadgesAndRankings04Record.fromSnapshot(s));

  static Future<BadgesAndRankings04Record> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then((s) => BadgesAndRankings04Record.fromSnapshot(s));

  static BadgesAndRankings04Record fromSnapshot(DocumentSnapshot snapshot) =>
      BadgesAndRankings04Record._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static BadgesAndRankings04Record getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      BadgesAndRankings04Record._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'BadgesAndRankings04Record(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is BadgesAndRankings04Record &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createBadgesAndRankings04RecordData({
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

class BadgesAndRankings04RecordDocumentEquality
    implements Equality<BadgesAndRankings04Record> {
  const BadgesAndRankings04RecordDocumentEquality();

  @override
  bool equals(BadgesAndRankings04Record? e1, BadgesAndRankings04Record? e2) {
    return e1?.one == e2?.one && e1?.ref == e2?.ref;
  }

  @override
  int hash(BadgesAndRankings04Record? e) =>
      const ListEquality().hash([e?.one, e?.ref]);

  @override
  bool isValidKey(Object? o) => o is BadgesAndRankings04Record;
}
