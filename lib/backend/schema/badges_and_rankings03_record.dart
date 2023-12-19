import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';

class BadgesAndRankings03Record extends FirestoreRecord {
  BadgesAndRankings03Record._(
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
          ? parent.collection('badges_and_rankings03')
          : FirebaseFirestore.instance.collectionGroup('badges_and_rankings03');

  static DocumentReference createDoc(DocumentReference parent) =>
      parent.collection('badges_and_rankings03').doc();

  static Stream<BadgesAndRankings03Record> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => BadgesAndRankings03Record.fromSnapshot(s));

  static Future<BadgesAndRankings03Record> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then((s) => BadgesAndRankings03Record.fromSnapshot(s));

  static BadgesAndRankings03Record fromSnapshot(DocumentSnapshot snapshot) =>
      BadgesAndRankings03Record._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static BadgesAndRankings03Record getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      BadgesAndRankings03Record._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'BadgesAndRankings03Record(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is BadgesAndRankings03Record &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createBadgesAndRankings03RecordData({
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

class BadgesAndRankings03RecordDocumentEquality
    implements Equality<BadgesAndRankings03Record> {
  const BadgesAndRankings03RecordDocumentEquality();

  @override
  bool equals(BadgesAndRankings03Record? e1, BadgesAndRankings03Record? e2) {
    return e1?.one == e2?.one && e1?.ref == e2?.ref;
  }

  @override
  int hash(BadgesAndRankings03Record? e) =>
      const ListEquality().hash([e?.one, e?.ref]);

  @override
  bool isValidKey(Object? o) => o is BadgesAndRankings03Record;
}
