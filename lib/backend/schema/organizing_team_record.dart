import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';

class OrganizingTeamRecord extends FirestoreRecord {
  OrganizingTeamRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "role" field.
  String? _role;
  String get role => _role ?? '';
  bool hasRole() => _role != null;

  // "photo" field.
  String? _photo;
  String get photo => _photo ?? '';
  bool hasPhoto() => _photo != null;

  // "mobile_no" field.
  String? _mobileNo;
  String get mobileNo => _mobileNo ?? '';
  bool hasMobileNo() => _mobileNo != null;

  // "location" field.
  String? _location;
  String get location => _location ?? '';
  bool hasLocation() => _location != null;

  // "linkedin" field.
  String? _linkedin;
  String get linkedin => _linkedin ?? '';
  bool hasLinkedin() => _linkedin != null;

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  bool hasEmail() => _email != null;

  // "designation" field.
  String? _designation;
  String get designation => _designation ?? '';
  bool hasDesignation() => _designation != null;

  // "department" field.
  String? _department;
  String get department => _department ?? '';
  bool hasDepartment() => _department != null;

  // "about_me" field.
  String? _aboutMe;
  String get aboutMe => _aboutMe ?? '';
  bool hasAboutMe() => _aboutMe != null;

  // "github" field.
  String? _github;
  String get github => _github ?? '';
  bool hasGithub() => _github != null;

  // "certificates" field.
  String? _certificates;
  String get certificates => _certificates ?? '';
  bool hasCertificates() => _certificates != null;

  void _initializeFields() {
    _name = snapshotData['name'] as String?;
    _role = snapshotData['role'] as String?;
    _photo = snapshotData['photo'] as String?;
    _mobileNo = snapshotData['mobile_no'] as String?;
    _location = snapshotData['location'] as String?;
    _linkedin = snapshotData['linkedin'] as String?;
    _email = snapshotData['email'] as String?;
    _designation = snapshotData['designation'] as String?;
    _department = snapshotData['department'] as String?;
    _aboutMe = snapshotData['about_me'] as String?;
    _github = snapshotData['github'] as String?;
    _certificates = snapshotData['certificates'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Organizing_Team');

  static Stream<OrganizingTeamRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => OrganizingTeamRecord.fromSnapshot(s));

  static Future<OrganizingTeamRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => OrganizingTeamRecord.fromSnapshot(s));

  static OrganizingTeamRecord fromSnapshot(DocumentSnapshot snapshot) =>
      OrganizingTeamRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static OrganizingTeamRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      OrganizingTeamRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'OrganizingTeamRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is OrganizingTeamRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createOrganizingTeamRecordData({
  String? name,
  String? role,
  String? photo,
  String? mobileNo,
  String? location,
  String? linkedin,
  String? email,
  String? designation,
  String? department,
  String? aboutMe,
  String? github,
  String? certificates,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'name': name,
      'role': role,
      'photo': photo,
      'mobile_no': mobileNo,
      'location': location,
      'linkedin': linkedin,
      'email': email,
      'designation': designation,
      'department': department,
      'about_me': aboutMe,
      'github': github,
      'certificates': certificates,
    }.withoutNulls,
  );

  return firestoreData;
}

class OrganizingTeamRecordDocumentEquality
    implements Equality<OrganizingTeamRecord> {
  const OrganizingTeamRecordDocumentEquality();

  @override
  bool equals(OrganizingTeamRecord? e1, OrganizingTeamRecord? e2) {
    return e1?.name == e2?.name &&
        e1?.role == e2?.role &&
        e1?.photo == e2?.photo &&
        e1?.mobileNo == e2?.mobileNo &&
        e1?.location == e2?.location &&
        e1?.linkedin == e2?.linkedin &&
        e1?.email == e2?.email &&
        e1?.designation == e2?.designation &&
        e1?.department == e2?.department &&
        e1?.aboutMe == e2?.aboutMe &&
        e1?.github == e2?.github &&
        e1?.certificates == e2?.certificates;
  }

  @override
  int hash(OrganizingTeamRecord? e) => const ListEquality().hash([
        e?.name,
        e?.role,
        e?.photo,
        e?.mobileNo,
        e?.location,
        e?.linkedin,
        e?.email,
        e?.designation,
        e?.department,
        e?.aboutMe,
        e?.github,
        e?.certificates
      ]);

  @override
  bool isValidKey(Object? o) => o is OrganizingTeamRecord;
}
