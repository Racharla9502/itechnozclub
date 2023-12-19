import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';

class EventsPageRecord extends FirestoreRecord {
  EventsPageRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "photo" field.
  String? _photo;
  String get photo => _photo ?? '';
  bool hasPhoto() => _photo != null;

  // "event_name" field.
  String? _eventName;
  String get eventName => _eventName ?? '';
  bool hasEventName() => _eventName != null;

  // "description" field.
  String? _description;
  String get description => _description ?? '';
  bool hasDescription() => _description != null;

  void _initializeFields() {
    _photo = snapshotData['photo'] as String?;
    _eventName = snapshotData['event_name'] as String?;
    _description = snapshotData['description'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('events_page');

  static Stream<EventsPageRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => EventsPageRecord.fromSnapshot(s));

  static Future<EventsPageRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => EventsPageRecord.fromSnapshot(s));

  static EventsPageRecord fromSnapshot(DocumentSnapshot snapshot) =>
      EventsPageRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static EventsPageRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      EventsPageRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'EventsPageRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is EventsPageRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createEventsPageRecordData({
  String? photo,
  String? eventName,
  String? description,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'photo': photo,
      'event_name': eventName,
      'description': description,
    }.withoutNulls,
  );

  return firestoreData;
}

class EventsPageRecordDocumentEquality implements Equality<EventsPageRecord> {
  const EventsPageRecordDocumentEquality();

  @override
  bool equals(EventsPageRecord? e1, EventsPageRecord? e2) {
    return e1?.photo == e2?.photo &&
        e1?.eventName == e2?.eventName &&
        e1?.description == e2?.description;
  }

  @override
  int hash(EventsPageRecord? e) =>
      const ListEquality().hash([e?.photo, e?.eventName, e?.description]);

  @override
  bool isValidKey(Object? o) => o is EventsPageRecord;
}
