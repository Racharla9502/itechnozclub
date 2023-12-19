import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';

class SkillsRecord extends FirestoreRecord {
  SkillsRecord._(
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
          ? parent.collection('skills')
          : FirebaseFirestore.instance.collectionGroup('skills');

  static DocumentReference createDoc(DocumentReference parent) =>
      parent.collection('skills').doc();

  static Stream<SkillsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => SkillsRecord.fromSnapshot(s));

  static Future<SkillsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => SkillsRecord.fromSnapshot(s));

  static SkillsRecord fromSnapshot(DocumentSnapshot snapshot) => SkillsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static SkillsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      SkillsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'SkillsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is SkillsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createSkillsRecordData({
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

class SkillsRecordDocumentEquality implements Equality<SkillsRecord> {
  const SkillsRecordDocumentEquality();

  @override
  bool equals(SkillsRecord? e1, SkillsRecord? e2) {
    return e1?.one == e2?.one && e1?.ref == e2?.ref;
  }

  @override
  int hash(SkillsRecord? e) => const ListEquality().hash([e?.one, e?.ref]);

  @override
  bool isValidKey(Object? o) => o is SkillsRecord;
}
