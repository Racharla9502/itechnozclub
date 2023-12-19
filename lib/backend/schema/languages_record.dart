import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';

class LanguagesRecord extends FirestoreRecord {
  LanguagesRecord._(
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
          ? parent.collection('languages')
          : FirebaseFirestore.instance.collectionGroup('languages');

  static DocumentReference createDoc(DocumentReference parent) =>
      parent.collection('languages').doc();

  static Stream<LanguagesRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => LanguagesRecord.fromSnapshot(s));

  static Future<LanguagesRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => LanguagesRecord.fromSnapshot(s));

  static LanguagesRecord fromSnapshot(DocumentSnapshot snapshot) =>
      LanguagesRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static LanguagesRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      LanguagesRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'LanguagesRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is LanguagesRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createLanguagesRecordData({
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

class LanguagesRecordDocumentEquality implements Equality<LanguagesRecord> {
  const LanguagesRecordDocumentEquality();

  @override
  bool equals(LanguagesRecord? e1, LanguagesRecord? e2) {
    return e1?.one == e2?.one && e1?.ref == e2?.ref;
  }

  @override
  int hash(LanguagesRecord? e) => const ListEquality().hash([e?.one, e?.ref]);

  @override
  bool isValidKey(Object? o) => o is LanguagesRecord;
}
