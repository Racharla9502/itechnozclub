import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';

class Projects02Record extends FirestoreRecord {
  Projects02Record._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "project_name" field.
  String? _projectName;
  String get projectName => _projectName ?? '';
  bool hasProjectName() => _projectName != null;

  // "update_date_and_time" field.
  String? _updateDateAndTime;
  String get updateDateAndTime => _updateDateAndTime ?? '';
  bool hasUpdateDateAndTime() => _updateDateAndTime != null;

  // "project_image" field.
  String? _projectImage;
  String get projectImage => _projectImage ?? '';
  bool hasProjectImage() => _projectImage != null;

  // "project_link" field.
  String? _projectLink;
  String get projectLink => _projectLink ?? '';
  bool hasProjectLink() => _projectLink != null;

  // "project_report" field.
  String? _projectReport;
  String get projectReport => _projectReport ?? '';
  bool hasProjectReport() => _projectReport != null;

  // "description" field.
  String? _description;
  String get description => _description ?? '';
  bool hasDescription() => _description != null;

  // "introduction" field.
  String? _introduction;
  String get introduction => _introduction ?? '';
  bool hasIntroduction() => _introduction != null;

  // "github_repository" field.
  String? _githubRepository;
  String get githubRepository => _githubRepository ?? '';
  bool hasGithubRepository() => _githubRepository != null;

  // "procedure01" field.
  String? _procedure01;
  String get procedure01 => _procedure01 ?? '';
  bool hasProcedure01() => _procedure01 != null;

  // "procedure02" field.
  String? _procedure02;
  String get procedure02 => _procedure02 ?? '';
  bool hasProcedure02() => _procedure02 != null;

  // "procedure03" field.
  String? _procedure03;
  String get procedure03 => _procedure03 ?? '';
  bool hasProcedure03() => _procedure03 != null;

  // "procedure04" field.
  String? _procedure04;
  String get procedure04 => _procedure04 ?? '';
  bool hasProcedure04() => _procedure04 != null;

  // "procedure05" field.
  String? _procedure05;
  String get procedure05 => _procedure05 ?? '';
  bool hasProcedure05() => _procedure05 != null;

  // "techUsed01" field.
  String? _techUsed01;
  String get techUsed01 => _techUsed01 ?? '';
  bool hasTechUsed01() => _techUsed01 != null;

  // "techUsed02" field.
  String? _techUsed02;
  String get techUsed02 => _techUsed02 ?? '';
  bool hasTechUsed02() => _techUsed02 != null;

  // "techUsed03" field.
  String? _techUsed03;
  String get techUsed03 => _techUsed03 ?? '';
  bool hasTechUsed03() => _techUsed03 != null;

  // "techUsed04" field.
  String? _techUsed04;
  String get techUsed04 => _techUsed04 ?? '';
  bool hasTechUsed04() => _techUsed04 != null;

  // "techUsed05" field.
  String? _techUsed05;
  String get techUsed05 => _techUsed05 ?? '';
  bool hasTechUsed05() => _techUsed05 != null;

  // "techUsed06" field.
  String? _techUsed06;
  String get techUsed06 => _techUsed06 ?? '';
  bool hasTechUsed06() => _techUsed06 != null;

  // "techUsed07" field.
  String? _techUsed07;
  String get techUsed07 => _techUsed07 ?? '';
  bool hasTechUsed07() => _techUsed07 != null;

  // "techUsed08" field.
  String? _techUsed08;
  String get techUsed08 => _techUsed08 ?? '';
  bool hasTechUsed08() => _techUsed08 != null;

  // "techUsed09" field.
  String? _techUsed09;
  String get techUsed09 => _techUsed09 ?? '';
  bool hasTechUsed09() => _techUsed09 != null;

  // "techUsed10" field.
  String? _techUsed10;
  String get techUsed10 => _techUsed10 ?? '';
  bool hasTechUsed10() => _techUsed10 != null;

  // "image01" field.
  String? _image01;
  String get image01 => _image01 ?? '';
  bool hasImage01() => _image01 != null;

  // "image02" field.
  String? _image02;
  String get image02 => _image02 ?? '';
  bool hasImage02() => _image02 != null;

  // "image03" field.
  String? _image03;
  String get image03 => _image03 ?? '';
  bool hasImage03() => _image03 != null;

  // "image04" field.
  String? _image04;
  String get image04 => _image04 ?? '';
  bool hasImage04() => _image04 != null;

  // "ref" field.
  DocumentReference? _ref;
  DocumentReference? get ref => _ref;
  bool hasRef() => _ref != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _projectName = snapshotData['project_name'] as String?;
    _updateDateAndTime = snapshotData['update_date_and_time'] as String?;
    _projectImage = snapshotData['project_image'] as String?;
    _projectLink = snapshotData['project_link'] as String?;
    _projectReport = snapshotData['project_report'] as String?;
    _description = snapshotData['description'] as String?;
    _introduction = snapshotData['introduction'] as String?;
    _githubRepository = snapshotData['github_repository'] as String?;
    _procedure01 = snapshotData['procedure01'] as String?;
    _procedure02 = snapshotData['procedure02'] as String?;
    _procedure03 = snapshotData['procedure03'] as String?;
    _procedure04 = snapshotData['procedure04'] as String?;
    _procedure05 = snapshotData['procedure05'] as String?;
    _techUsed01 = snapshotData['techUsed01'] as String?;
    _techUsed02 = snapshotData['techUsed02'] as String?;
    _techUsed03 = snapshotData['techUsed03'] as String?;
    _techUsed04 = snapshotData['techUsed04'] as String?;
    _techUsed05 = snapshotData['techUsed05'] as String?;
    _techUsed06 = snapshotData['techUsed06'] as String?;
    _techUsed07 = snapshotData['techUsed07'] as String?;
    _techUsed08 = snapshotData['techUsed08'] as String?;
    _techUsed09 = snapshotData['techUsed09'] as String?;
    _techUsed10 = snapshotData['techUsed10'] as String?;
    _image01 = snapshotData['image01'] as String?;
    _image02 = snapshotData['image02'] as String?;
    _image03 = snapshotData['image03'] as String?;
    _image04 = snapshotData['image04'] as String?;
    _ref = snapshotData['ref'] as DocumentReference?;
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('projects02')
          : FirebaseFirestore.instance.collectionGroup('projects02');

  static DocumentReference createDoc(DocumentReference parent) =>
      parent.collection('projects02').doc();

  static Stream<Projects02Record> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => Projects02Record.fromSnapshot(s));

  static Future<Projects02Record> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => Projects02Record.fromSnapshot(s));

  static Projects02Record fromSnapshot(DocumentSnapshot snapshot) =>
      Projects02Record._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static Projects02Record getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      Projects02Record._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'Projects02Record(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is Projects02Record &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createProjects02RecordData({
  String? projectName,
  String? updateDateAndTime,
  String? projectImage,
  String? projectLink,
  String? projectReport,
  String? description,
  String? introduction,
  String? githubRepository,
  String? procedure01,
  String? procedure02,
  String? procedure03,
  String? procedure04,
  String? procedure05,
  String? techUsed01,
  String? techUsed02,
  String? techUsed03,
  String? techUsed04,
  String? techUsed05,
  String? techUsed06,
  String? techUsed07,
  String? techUsed08,
  String? techUsed09,
  String? techUsed10,
  String? image01,
  String? image02,
  String? image03,
  String? image04,
  DocumentReference? ref,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'project_name': projectName,
      'update_date_and_time': updateDateAndTime,
      'project_image': projectImage,
      'project_link': projectLink,
      'project_report': projectReport,
      'description': description,
      'introduction': introduction,
      'github_repository': githubRepository,
      'procedure01': procedure01,
      'procedure02': procedure02,
      'procedure03': procedure03,
      'procedure04': procedure04,
      'procedure05': procedure05,
      'techUsed01': techUsed01,
      'techUsed02': techUsed02,
      'techUsed03': techUsed03,
      'techUsed04': techUsed04,
      'techUsed05': techUsed05,
      'techUsed06': techUsed06,
      'techUsed07': techUsed07,
      'techUsed08': techUsed08,
      'techUsed09': techUsed09,
      'techUsed10': techUsed10,
      'image01': image01,
      'image02': image02,
      'image03': image03,
      'image04': image04,
      'ref': ref,
    }.withoutNulls,
  );

  return firestoreData;
}

class Projects02RecordDocumentEquality implements Equality<Projects02Record> {
  const Projects02RecordDocumentEquality();

  @override
  bool equals(Projects02Record? e1, Projects02Record? e2) {
    return e1?.projectName == e2?.projectName &&
        e1?.updateDateAndTime == e2?.updateDateAndTime &&
        e1?.projectImage == e2?.projectImage &&
        e1?.projectLink == e2?.projectLink &&
        e1?.projectReport == e2?.projectReport &&
        e1?.description == e2?.description &&
        e1?.introduction == e2?.introduction &&
        e1?.githubRepository == e2?.githubRepository &&
        e1?.procedure01 == e2?.procedure01 &&
        e1?.procedure02 == e2?.procedure02 &&
        e1?.procedure03 == e2?.procedure03 &&
        e1?.procedure04 == e2?.procedure04 &&
        e1?.procedure05 == e2?.procedure05 &&
        e1?.techUsed01 == e2?.techUsed01 &&
        e1?.techUsed02 == e2?.techUsed02 &&
        e1?.techUsed03 == e2?.techUsed03 &&
        e1?.techUsed04 == e2?.techUsed04 &&
        e1?.techUsed05 == e2?.techUsed05 &&
        e1?.techUsed06 == e2?.techUsed06 &&
        e1?.techUsed07 == e2?.techUsed07 &&
        e1?.techUsed08 == e2?.techUsed08 &&
        e1?.techUsed09 == e2?.techUsed09 &&
        e1?.techUsed10 == e2?.techUsed10 &&
        e1?.image01 == e2?.image01 &&
        e1?.image02 == e2?.image02 &&
        e1?.image03 == e2?.image03 &&
        e1?.image04 == e2?.image04 &&
        e1?.ref == e2?.ref;
  }

  @override
  int hash(Projects02Record? e) => const ListEquality().hash([
        e?.projectName,
        e?.updateDateAndTime,
        e?.projectImage,
        e?.projectLink,
        e?.projectReport,
        e?.description,
        e?.introduction,
        e?.githubRepository,
        e?.procedure01,
        e?.procedure02,
        e?.procedure03,
        e?.procedure04,
        e?.procedure05,
        e?.techUsed01,
        e?.techUsed02,
        e?.techUsed03,
        e?.techUsed04,
        e?.techUsed05,
        e?.techUsed06,
        e?.techUsed07,
        e?.techUsed08,
        e?.techUsed09,
        e?.techUsed10,
        e?.image01,
        e?.image02,
        e?.image03,
        e?.image04,
        e?.ref
      ]);

  @override
  bool isValidKey(Object? o) => o is Projects02Record;
}
