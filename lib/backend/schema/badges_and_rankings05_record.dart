import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';

class BadgesAndRankings05Record extends FirestoreRecord {
  BadgesAndRankings05Record._(
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
          ? parent.collection('badges_and_rankings05')
          : FirebaseFirestore.instance.collectionGroup('badges_and_rankings05');

  static DocumentReference createDoc(DocumentReference parent) =>
      parent.collection('badges_and_rankings05').doc();

  static Stream<BadgesAndRankings05Record> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => BadgesAndRankings05Record.fromSnapshot(s));

  static Future<BadgesAndRankings05Record> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then((s) => BadgesAndRankings05Record.fromSnapshot(s));

  static BadgesAndRankings05Record fromSnapshot(DocumentSnapshot snapshot) =>
      BadgesAndRankings05Record._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static BadgesAndRankings05Record getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      BadgesAndRankings05Record._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'BadgesAndRankings05Record(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is BadgesAndRankings05Record &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createBadgesAndRankings05RecordData({
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

class BadgesAndRankings05RecordDocumentEquality
    implements Equality<BadgesAndRankings05Record> {
  const BadgesAndRankings05RecordDocumentEquality();

  @override
  bool equals(BadgesAndRankings05Record? e1, BadgesAndRankings05Record? e2) {
    return e1?.one == e2?.one && e1?.ref == e2?.ref;
  }

  @override
  int hash(BadgesAndRankings05Record? e) =>
      const ListEquality().hash([e?.one, e?.ref]);

  @override
  bool isValidKey(Object? o) => o is BadgesAndRankings05Record;
}
