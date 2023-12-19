import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';

class PageviewHomeRecord extends FirestoreRecord {
  PageviewHomeRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "image" field.
  String? _image;
  String get image => _image ?? '';
  bool hasImage() => _image != null;

  // "image1" field.
  String? _image1;
  String get image1 => _image1 ?? '';
  bool hasImage1() => _image1 != null;

  // "image2" field.
  String? _image2;
  String get image2 => _image2 ?? '';
  bool hasImage2() => _image2 != null;

  // "image3" field.
  String? _image3;
  String get image3 => _image3 ?? '';
  bool hasImage3() => _image3 != null;

  // "image4" field.
  String? _image4;
  String get image4 => _image4 ?? '';
  bool hasImage4() => _image4 != null;

  // "image5" field.
  String? _image5;
  String get image5 => _image5 ?? '';
  bool hasImage5() => _image5 != null;

  // "image6" field.
  String? _image6;
  String get image6 => _image6 ?? '';
  bool hasImage6() => _image6 != null;

  void _initializeFields() {
    _image = snapshotData['image'] as String?;
    _image1 = snapshotData['image1'] as String?;
    _image2 = snapshotData['image2'] as String?;
    _image3 = snapshotData['image3'] as String?;
    _image4 = snapshotData['image4'] as String?;
    _image5 = snapshotData['image5'] as String?;
    _image6 = snapshotData['image6'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('pageview_home');

  static Stream<PageviewHomeRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => PageviewHomeRecord.fromSnapshot(s));

  static Future<PageviewHomeRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => PageviewHomeRecord.fromSnapshot(s));

  static PageviewHomeRecord fromSnapshot(DocumentSnapshot snapshot) =>
      PageviewHomeRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static PageviewHomeRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      PageviewHomeRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'PageviewHomeRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is PageviewHomeRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createPageviewHomeRecordData({
  String? image,
  String? image1,
  String? image2,
  String? image3,
  String? image4,
  String? image5,
  String? image6,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'image': image,
      'image1': image1,
      'image2': image2,
      'image3': image3,
      'image4': image4,
      'image5': image5,
      'image6': image6,
    }.withoutNulls,
  );

  return firestoreData;
}

class PageviewHomeRecordDocumentEquality
    implements Equality<PageviewHomeRecord> {
  const PageviewHomeRecordDocumentEquality();

  @override
  bool equals(PageviewHomeRecord? e1, PageviewHomeRecord? e2) {
    return e1?.image == e2?.image &&
        e1?.image1 == e2?.image1 &&
        e1?.image2 == e2?.image2 &&
        e1?.image3 == e2?.image3 &&
        e1?.image4 == e2?.image4 &&
        e1?.image5 == e2?.image5 &&
        e1?.image6 == e2?.image6;
  }

  @override
  int hash(PageviewHomeRecord? e) => const ListEquality().hash([
        e?.image,
        e?.image1,
        e?.image2,
        e?.image3,
        e?.image4,
        e?.image5,
        e?.image6
      ]);

  @override
  bool isValidKey(Object? o) => o is PageviewHomeRecord;
}
