import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import '../auth/firebase_auth/auth_util.dart';

import '../flutter_flow/flutter_flow_util.dart';
import 'schema/util/firestore_util.dart';

import 'schema/users_record.dart';
import 'schema/pageview_home_record.dart';
import 'schema/events_page_record.dart';
import 'schema/core_team_record.dart';
import 'schema/skills_record.dart';
import 'schema/certificates_record.dart';
import 'schema/education_record.dart';
import 'schema/badges_and_rankings_record.dart';
import 'schema/experience_record.dart';
import 'schema/certificate_images_record.dart';
import 'schema/projects_record.dart';
import 'schema/languages_record.dart';
import 'schema/technical_team_record.dart';
import 'schema/skills01_record.dart';
import 'schema/certificates01_record.dart';
import 'schema/education01_record.dart';
import 'schema/badges_and_rankings01_record.dart';
import 'schema/experience01_record.dart';
import 'schema/certificate_images01_record.dart';
import 'schema/projects01_record.dart';
import 'schema/languages01_record.dart';
import 'schema/design_team_record.dart';
import 'schema/skills02_record.dart';
import 'schema/certificates02_record.dart';
import 'schema/education02_record.dart';
import 'schema/badges_and_rankings02_record.dart';
import 'schema/experience02_record.dart';
import 'schema/certificate_images02_record.dart';
import 'schema/projects02_record.dart';
import 'schema/languages02_record.dart';
import 'schema/public_relation_team_record.dart';
import 'schema/skills03_record.dart';
import 'schema/certificates03_record.dart';
import 'schema/education03_record.dart';
import 'schema/badges_and_rankings03_record.dart';
import 'schema/experience03_record.dart';
import 'schema/certificate_images03_record.dart';
import 'schema/projects03_record.dart';
import 'schema/languages03_record.dart';
import 'schema/photography_team_record.dart';
import 'schema/skills04_record.dart';
import 'schema/certificates04_record.dart';
import 'schema/education04_record.dart';
import 'schema/badges_and_rankings04_record.dart';
import 'schema/experience04_record.dart';
import 'schema/certificate_images04_record.dart';
import 'schema/projects04_record.dart';
import 'schema/languages04_record.dart';
import 'schema/organizing_team_record.dart';
import 'schema/skills05_record.dart';
import 'schema/certificates05_record.dart';
import 'schema/education05_record.dart';
import 'schema/badges_and_rankings05_record.dart';
import 'schema/experience05_record.dart';
import 'schema/certificate_images05_record.dart';
import 'schema/projects05_record.dart';
import 'schema/languages05_record.dart';

export 'dart:async' show StreamSubscription;
export 'package:cloud_firestore/cloud_firestore.dart';
export 'schema/index.dart';
export 'schema/util/firestore_util.dart';
export 'schema/util/schema_util.dart';

export 'schema/users_record.dart';
export 'schema/pageview_home_record.dart';
export 'schema/events_page_record.dart';
export 'schema/core_team_record.dart';
export 'schema/skills_record.dart';
export 'schema/certificates_record.dart';
export 'schema/education_record.dart';
export 'schema/badges_and_rankings_record.dart';
export 'schema/experience_record.dart';
export 'schema/certificate_images_record.dart';
export 'schema/projects_record.dart';
export 'schema/languages_record.dart';
export 'schema/technical_team_record.dart';
export 'schema/skills01_record.dart';
export 'schema/certificates01_record.dart';
export 'schema/education01_record.dart';
export 'schema/badges_and_rankings01_record.dart';
export 'schema/experience01_record.dart';
export 'schema/certificate_images01_record.dart';
export 'schema/projects01_record.dart';
export 'schema/languages01_record.dart';
export 'schema/design_team_record.dart';
export 'schema/skills02_record.dart';
export 'schema/certificates02_record.dart';
export 'schema/education02_record.dart';
export 'schema/badges_and_rankings02_record.dart';
export 'schema/experience02_record.dart';
export 'schema/certificate_images02_record.dart';
export 'schema/projects02_record.dart';
export 'schema/languages02_record.dart';
export 'schema/public_relation_team_record.dart';
export 'schema/skills03_record.dart';
export 'schema/certificates03_record.dart';
export 'schema/education03_record.dart';
export 'schema/badges_and_rankings03_record.dart';
export 'schema/experience03_record.dart';
export 'schema/certificate_images03_record.dart';
export 'schema/projects03_record.dart';
export 'schema/languages03_record.dart';
export 'schema/photography_team_record.dart';
export 'schema/skills04_record.dart';
export 'schema/certificates04_record.dart';
export 'schema/education04_record.dart';
export 'schema/badges_and_rankings04_record.dart';
export 'schema/experience04_record.dart';
export 'schema/certificate_images04_record.dart';
export 'schema/projects04_record.dart';
export 'schema/languages04_record.dart';
export 'schema/organizing_team_record.dart';
export 'schema/skills05_record.dart';
export 'schema/certificates05_record.dart';
export 'schema/education05_record.dart';
export 'schema/badges_and_rankings05_record.dart';
export 'schema/experience05_record.dart';
export 'schema/certificate_images05_record.dart';
export 'schema/projects05_record.dart';
export 'schema/languages05_record.dart';

/// Functions to query UsersRecords (as a Stream and as a Future).
Future<int> queryUsersRecordCount({
  Query Function(Query)? queryBuilder,
  int limit = -1,
}) =>
    queryCollectionCount(
      UsersRecord.collection,
      queryBuilder: queryBuilder,
      limit: limit,
    );

Stream<List<UsersRecord>> queryUsersRecord({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollection(
      UsersRecord.collection,
      UsersRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<List<UsersRecord>> queryUsersRecordOnce({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollectionOnce(
      UsersRecord.collection,
      UsersRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

/// Functions to query PageviewHomeRecords (as a Stream and as a Future).
Future<int> queryPageviewHomeRecordCount({
  Query Function(Query)? queryBuilder,
  int limit = -1,
}) =>
    queryCollectionCount(
      PageviewHomeRecord.collection,
      queryBuilder: queryBuilder,
      limit: limit,
    );

Stream<List<PageviewHomeRecord>> queryPageviewHomeRecord({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollection(
      PageviewHomeRecord.collection,
      PageviewHomeRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<List<PageviewHomeRecord>> queryPageviewHomeRecordOnce({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollectionOnce(
      PageviewHomeRecord.collection,
      PageviewHomeRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

/// Functions to query EventsPageRecords (as a Stream and as a Future).
Future<int> queryEventsPageRecordCount({
  Query Function(Query)? queryBuilder,
  int limit = -1,
}) =>
    queryCollectionCount(
      EventsPageRecord.collection,
      queryBuilder: queryBuilder,
      limit: limit,
    );

Stream<List<EventsPageRecord>> queryEventsPageRecord({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollection(
      EventsPageRecord.collection,
      EventsPageRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<List<EventsPageRecord>> queryEventsPageRecordOnce({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollectionOnce(
      EventsPageRecord.collection,
      EventsPageRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

/// Functions to query CoreTeamRecords (as a Stream and as a Future).
Future<int> queryCoreTeamRecordCount({
  Query Function(Query)? queryBuilder,
  int limit = -1,
}) =>
    queryCollectionCount(
      CoreTeamRecord.collection,
      queryBuilder: queryBuilder,
      limit: limit,
    );

Stream<List<CoreTeamRecord>> queryCoreTeamRecord({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollection(
      CoreTeamRecord.collection,
      CoreTeamRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<List<CoreTeamRecord>> queryCoreTeamRecordOnce({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollectionOnce(
      CoreTeamRecord.collection,
      CoreTeamRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

/// Functions to query SkillsRecords (as a Stream and as a Future).
Future<int> querySkillsRecordCount({
  DocumentReference? parent,
  Query Function(Query)? queryBuilder,
  int limit = -1,
}) =>
    queryCollectionCount(
      SkillsRecord.collection(parent),
      queryBuilder: queryBuilder,
      limit: limit,
    );

Stream<List<SkillsRecord>> querySkillsRecord({
  DocumentReference? parent,
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollection(
      SkillsRecord.collection(parent),
      SkillsRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<List<SkillsRecord>> querySkillsRecordOnce({
  DocumentReference? parent,
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollectionOnce(
      SkillsRecord.collection(parent),
      SkillsRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

/// Functions to query CertificatesRecords (as a Stream and as a Future).
Future<int> queryCertificatesRecordCount({
  DocumentReference? parent,
  Query Function(Query)? queryBuilder,
  int limit = -1,
}) =>
    queryCollectionCount(
      CertificatesRecord.collection(parent),
      queryBuilder: queryBuilder,
      limit: limit,
    );

Stream<List<CertificatesRecord>> queryCertificatesRecord({
  DocumentReference? parent,
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollection(
      CertificatesRecord.collection(parent),
      CertificatesRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<List<CertificatesRecord>> queryCertificatesRecordOnce({
  DocumentReference? parent,
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollectionOnce(
      CertificatesRecord.collection(parent),
      CertificatesRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

/// Functions to query EducationRecords (as a Stream and as a Future).
Future<int> queryEducationRecordCount({
  DocumentReference? parent,
  Query Function(Query)? queryBuilder,
  int limit = -1,
}) =>
    queryCollectionCount(
      EducationRecord.collection(parent),
      queryBuilder: queryBuilder,
      limit: limit,
    );

Stream<List<EducationRecord>> queryEducationRecord({
  DocumentReference? parent,
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollection(
      EducationRecord.collection(parent),
      EducationRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<List<EducationRecord>> queryEducationRecordOnce({
  DocumentReference? parent,
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollectionOnce(
      EducationRecord.collection(parent),
      EducationRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

/// Functions to query BadgesAndRankingsRecords (as a Stream and as a Future).
Future<int> queryBadgesAndRankingsRecordCount({
  DocumentReference? parent,
  Query Function(Query)? queryBuilder,
  int limit = -1,
}) =>
    queryCollectionCount(
      BadgesAndRankingsRecord.collection(parent),
      queryBuilder: queryBuilder,
      limit: limit,
    );

Stream<List<BadgesAndRankingsRecord>> queryBadgesAndRankingsRecord({
  DocumentReference? parent,
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollection(
      BadgesAndRankingsRecord.collection(parent),
      BadgesAndRankingsRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<List<BadgesAndRankingsRecord>> queryBadgesAndRankingsRecordOnce({
  DocumentReference? parent,
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollectionOnce(
      BadgesAndRankingsRecord.collection(parent),
      BadgesAndRankingsRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

/// Functions to query ExperienceRecords (as a Stream and as a Future).
Future<int> queryExperienceRecordCount({
  DocumentReference? parent,
  Query Function(Query)? queryBuilder,
  int limit = -1,
}) =>
    queryCollectionCount(
      ExperienceRecord.collection(parent),
      queryBuilder: queryBuilder,
      limit: limit,
    );

Stream<List<ExperienceRecord>> queryExperienceRecord({
  DocumentReference? parent,
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollection(
      ExperienceRecord.collection(parent),
      ExperienceRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<List<ExperienceRecord>> queryExperienceRecordOnce({
  DocumentReference? parent,
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollectionOnce(
      ExperienceRecord.collection(parent),
      ExperienceRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

/// Functions to query CertificateImagesRecords (as a Stream and as a Future).
Future<int> queryCertificateImagesRecordCount({
  DocumentReference? parent,
  Query Function(Query)? queryBuilder,
  int limit = -1,
}) =>
    queryCollectionCount(
      CertificateImagesRecord.collection(parent),
      queryBuilder: queryBuilder,
      limit: limit,
    );

Stream<List<CertificateImagesRecord>> queryCertificateImagesRecord({
  DocumentReference? parent,
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollection(
      CertificateImagesRecord.collection(parent),
      CertificateImagesRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<List<CertificateImagesRecord>> queryCertificateImagesRecordOnce({
  DocumentReference? parent,
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollectionOnce(
      CertificateImagesRecord.collection(parent),
      CertificateImagesRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

/// Functions to query ProjectsRecords (as a Stream and as a Future).
Future<int> queryProjectsRecordCount({
  DocumentReference? parent,
  Query Function(Query)? queryBuilder,
  int limit = -1,
}) =>
    queryCollectionCount(
      ProjectsRecord.collection(parent),
      queryBuilder: queryBuilder,
      limit: limit,
    );

Stream<List<ProjectsRecord>> queryProjectsRecord({
  DocumentReference? parent,
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollection(
      ProjectsRecord.collection(parent),
      ProjectsRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<List<ProjectsRecord>> queryProjectsRecordOnce({
  DocumentReference? parent,
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollectionOnce(
      ProjectsRecord.collection(parent),
      ProjectsRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

/// Functions to query LanguagesRecords (as a Stream and as a Future).
Future<int> queryLanguagesRecordCount({
  DocumentReference? parent,
  Query Function(Query)? queryBuilder,
  int limit = -1,
}) =>
    queryCollectionCount(
      LanguagesRecord.collection(parent),
      queryBuilder: queryBuilder,
      limit: limit,
    );

Stream<List<LanguagesRecord>> queryLanguagesRecord({
  DocumentReference? parent,
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollection(
      LanguagesRecord.collection(parent),
      LanguagesRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<List<LanguagesRecord>> queryLanguagesRecordOnce({
  DocumentReference? parent,
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollectionOnce(
      LanguagesRecord.collection(parent),
      LanguagesRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

/// Functions to query TechnicalTeamRecords (as a Stream and as a Future).
Future<int> queryTechnicalTeamRecordCount({
  Query Function(Query)? queryBuilder,
  int limit = -1,
}) =>
    queryCollectionCount(
      TechnicalTeamRecord.collection,
      queryBuilder: queryBuilder,
      limit: limit,
    );

Stream<List<TechnicalTeamRecord>> queryTechnicalTeamRecord({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollection(
      TechnicalTeamRecord.collection,
      TechnicalTeamRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<List<TechnicalTeamRecord>> queryTechnicalTeamRecordOnce({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollectionOnce(
      TechnicalTeamRecord.collection,
      TechnicalTeamRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

/// Functions to query Skills01Records (as a Stream and as a Future).
Future<int> querySkills01RecordCount({
  DocumentReference? parent,
  Query Function(Query)? queryBuilder,
  int limit = -1,
}) =>
    queryCollectionCount(
      Skills01Record.collection(parent),
      queryBuilder: queryBuilder,
      limit: limit,
    );

Stream<List<Skills01Record>> querySkills01Record({
  DocumentReference? parent,
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollection(
      Skills01Record.collection(parent),
      Skills01Record.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<List<Skills01Record>> querySkills01RecordOnce({
  DocumentReference? parent,
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollectionOnce(
      Skills01Record.collection(parent),
      Skills01Record.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

/// Functions to query Certificates01Records (as a Stream and as a Future).
Future<int> queryCertificates01RecordCount({
  DocumentReference? parent,
  Query Function(Query)? queryBuilder,
  int limit = -1,
}) =>
    queryCollectionCount(
      Certificates01Record.collection(parent),
      queryBuilder: queryBuilder,
      limit: limit,
    );

Stream<List<Certificates01Record>> queryCertificates01Record({
  DocumentReference? parent,
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollection(
      Certificates01Record.collection(parent),
      Certificates01Record.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<List<Certificates01Record>> queryCertificates01RecordOnce({
  DocumentReference? parent,
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollectionOnce(
      Certificates01Record.collection(parent),
      Certificates01Record.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

/// Functions to query Education01Records (as a Stream and as a Future).
Future<int> queryEducation01RecordCount({
  DocumentReference? parent,
  Query Function(Query)? queryBuilder,
  int limit = -1,
}) =>
    queryCollectionCount(
      Education01Record.collection(parent),
      queryBuilder: queryBuilder,
      limit: limit,
    );

Stream<List<Education01Record>> queryEducation01Record({
  DocumentReference? parent,
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollection(
      Education01Record.collection(parent),
      Education01Record.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<List<Education01Record>> queryEducation01RecordOnce({
  DocumentReference? parent,
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollectionOnce(
      Education01Record.collection(parent),
      Education01Record.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

/// Functions to query BadgesAndRankings01Records (as a Stream and as a Future).
Future<int> queryBadgesAndRankings01RecordCount({
  DocumentReference? parent,
  Query Function(Query)? queryBuilder,
  int limit = -1,
}) =>
    queryCollectionCount(
      BadgesAndRankings01Record.collection(parent),
      queryBuilder: queryBuilder,
      limit: limit,
    );

Stream<List<BadgesAndRankings01Record>> queryBadgesAndRankings01Record({
  DocumentReference? parent,
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollection(
      BadgesAndRankings01Record.collection(parent),
      BadgesAndRankings01Record.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<List<BadgesAndRankings01Record>> queryBadgesAndRankings01RecordOnce({
  DocumentReference? parent,
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollectionOnce(
      BadgesAndRankings01Record.collection(parent),
      BadgesAndRankings01Record.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

/// Functions to query Experience01Records (as a Stream and as a Future).
Future<int> queryExperience01RecordCount({
  DocumentReference? parent,
  Query Function(Query)? queryBuilder,
  int limit = -1,
}) =>
    queryCollectionCount(
      Experience01Record.collection(parent),
      queryBuilder: queryBuilder,
      limit: limit,
    );

Stream<List<Experience01Record>> queryExperience01Record({
  DocumentReference? parent,
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollection(
      Experience01Record.collection(parent),
      Experience01Record.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<List<Experience01Record>> queryExperience01RecordOnce({
  DocumentReference? parent,
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollectionOnce(
      Experience01Record.collection(parent),
      Experience01Record.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

/// Functions to query CertificateImages01Records (as a Stream and as a Future).
Future<int> queryCertificateImages01RecordCount({
  DocumentReference? parent,
  Query Function(Query)? queryBuilder,
  int limit = -1,
}) =>
    queryCollectionCount(
      CertificateImages01Record.collection(parent),
      queryBuilder: queryBuilder,
      limit: limit,
    );

Stream<List<CertificateImages01Record>> queryCertificateImages01Record({
  DocumentReference? parent,
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollection(
      CertificateImages01Record.collection(parent),
      CertificateImages01Record.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<List<CertificateImages01Record>> queryCertificateImages01RecordOnce({
  DocumentReference? parent,
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollectionOnce(
      CertificateImages01Record.collection(parent),
      CertificateImages01Record.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

/// Functions to query Projects01Records (as a Stream and as a Future).
Future<int> queryProjects01RecordCount({
  DocumentReference? parent,
  Query Function(Query)? queryBuilder,
  int limit = -1,
}) =>
    queryCollectionCount(
      Projects01Record.collection(parent),
      queryBuilder: queryBuilder,
      limit: limit,
    );

Stream<List<Projects01Record>> queryProjects01Record({
  DocumentReference? parent,
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollection(
      Projects01Record.collection(parent),
      Projects01Record.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<List<Projects01Record>> queryProjects01RecordOnce({
  DocumentReference? parent,
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollectionOnce(
      Projects01Record.collection(parent),
      Projects01Record.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

/// Functions to query Languages01Records (as a Stream and as a Future).
Future<int> queryLanguages01RecordCount({
  DocumentReference? parent,
  Query Function(Query)? queryBuilder,
  int limit = -1,
}) =>
    queryCollectionCount(
      Languages01Record.collection(parent),
      queryBuilder: queryBuilder,
      limit: limit,
    );

Stream<List<Languages01Record>> queryLanguages01Record({
  DocumentReference? parent,
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollection(
      Languages01Record.collection(parent),
      Languages01Record.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<List<Languages01Record>> queryLanguages01RecordOnce({
  DocumentReference? parent,
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollectionOnce(
      Languages01Record.collection(parent),
      Languages01Record.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

/// Functions to query DesignTeamRecords (as a Stream and as a Future).
Future<int> queryDesignTeamRecordCount({
  Query Function(Query)? queryBuilder,
  int limit = -1,
}) =>
    queryCollectionCount(
      DesignTeamRecord.collection,
      queryBuilder: queryBuilder,
      limit: limit,
    );

Stream<List<DesignTeamRecord>> queryDesignTeamRecord({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollection(
      DesignTeamRecord.collection,
      DesignTeamRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<List<DesignTeamRecord>> queryDesignTeamRecordOnce({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollectionOnce(
      DesignTeamRecord.collection,
      DesignTeamRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

/// Functions to query Skills02Records (as a Stream and as a Future).
Future<int> querySkills02RecordCount({
  DocumentReference? parent,
  Query Function(Query)? queryBuilder,
  int limit = -1,
}) =>
    queryCollectionCount(
      Skills02Record.collection(parent),
      queryBuilder: queryBuilder,
      limit: limit,
    );

Stream<List<Skills02Record>> querySkills02Record({
  DocumentReference? parent,
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollection(
      Skills02Record.collection(parent),
      Skills02Record.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<List<Skills02Record>> querySkills02RecordOnce({
  DocumentReference? parent,
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollectionOnce(
      Skills02Record.collection(parent),
      Skills02Record.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

/// Functions to query Certificates02Records (as a Stream and as a Future).
Future<int> queryCertificates02RecordCount({
  DocumentReference? parent,
  Query Function(Query)? queryBuilder,
  int limit = -1,
}) =>
    queryCollectionCount(
      Certificates02Record.collection(parent),
      queryBuilder: queryBuilder,
      limit: limit,
    );

Stream<List<Certificates02Record>> queryCertificates02Record({
  DocumentReference? parent,
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollection(
      Certificates02Record.collection(parent),
      Certificates02Record.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<List<Certificates02Record>> queryCertificates02RecordOnce({
  DocumentReference? parent,
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollectionOnce(
      Certificates02Record.collection(parent),
      Certificates02Record.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

/// Functions to query Education02Records (as a Stream and as a Future).
Future<int> queryEducation02RecordCount({
  DocumentReference? parent,
  Query Function(Query)? queryBuilder,
  int limit = -1,
}) =>
    queryCollectionCount(
      Education02Record.collection(parent),
      queryBuilder: queryBuilder,
      limit: limit,
    );

Stream<List<Education02Record>> queryEducation02Record({
  DocumentReference? parent,
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollection(
      Education02Record.collection(parent),
      Education02Record.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<List<Education02Record>> queryEducation02RecordOnce({
  DocumentReference? parent,
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollectionOnce(
      Education02Record.collection(parent),
      Education02Record.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

/// Functions to query BadgesAndRankings02Records (as a Stream and as a Future).
Future<int> queryBadgesAndRankings02RecordCount({
  DocumentReference? parent,
  Query Function(Query)? queryBuilder,
  int limit = -1,
}) =>
    queryCollectionCount(
      BadgesAndRankings02Record.collection(parent),
      queryBuilder: queryBuilder,
      limit: limit,
    );

Stream<List<BadgesAndRankings02Record>> queryBadgesAndRankings02Record({
  DocumentReference? parent,
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollection(
      BadgesAndRankings02Record.collection(parent),
      BadgesAndRankings02Record.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<List<BadgesAndRankings02Record>> queryBadgesAndRankings02RecordOnce({
  DocumentReference? parent,
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollectionOnce(
      BadgesAndRankings02Record.collection(parent),
      BadgesAndRankings02Record.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

/// Functions to query Experience02Records (as a Stream and as a Future).
Future<int> queryExperience02RecordCount({
  DocumentReference? parent,
  Query Function(Query)? queryBuilder,
  int limit = -1,
}) =>
    queryCollectionCount(
      Experience02Record.collection(parent),
      queryBuilder: queryBuilder,
      limit: limit,
    );

Stream<List<Experience02Record>> queryExperience02Record({
  DocumentReference? parent,
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollection(
      Experience02Record.collection(parent),
      Experience02Record.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<List<Experience02Record>> queryExperience02RecordOnce({
  DocumentReference? parent,
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollectionOnce(
      Experience02Record.collection(parent),
      Experience02Record.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

/// Functions to query CertificateImages02Records (as a Stream and as a Future).
Future<int> queryCertificateImages02RecordCount({
  DocumentReference? parent,
  Query Function(Query)? queryBuilder,
  int limit = -1,
}) =>
    queryCollectionCount(
      CertificateImages02Record.collection(parent),
      queryBuilder: queryBuilder,
      limit: limit,
    );

Stream<List<CertificateImages02Record>> queryCertificateImages02Record({
  DocumentReference? parent,
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollection(
      CertificateImages02Record.collection(parent),
      CertificateImages02Record.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<List<CertificateImages02Record>> queryCertificateImages02RecordOnce({
  DocumentReference? parent,
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollectionOnce(
      CertificateImages02Record.collection(parent),
      CertificateImages02Record.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

/// Functions to query Projects02Records (as a Stream and as a Future).
Future<int> queryProjects02RecordCount({
  DocumentReference? parent,
  Query Function(Query)? queryBuilder,
  int limit = -1,
}) =>
    queryCollectionCount(
      Projects02Record.collection(parent),
      queryBuilder: queryBuilder,
      limit: limit,
    );

Stream<List<Projects02Record>> queryProjects02Record({
  DocumentReference? parent,
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollection(
      Projects02Record.collection(parent),
      Projects02Record.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<List<Projects02Record>> queryProjects02RecordOnce({
  DocumentReference? parent,
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollectionOnce(
      Projects02Record.collection(parent),
      Projects02Record.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

/// Functions to query Languages02Records (as a Stream and as a Future).
Future<int> queryLanguages02RecordCount({
  DocumentReference? parent,
  Query Function(Query)? queryBuilder,
  int limit = -1,
}) =>
    queryCollectionCount(
      Languages02Record.collection(parent),
      queryBuilder: queryBuilder,
      limit: limit,
    );

Stream<List<Languages02Record>> queryLanguages02Record({
  DocumentReference? parent,
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollection(
      Languages02Record.collection(parent),
      Languages02Record.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<List<Languages02Record>> queryLanguages02RecordOnce({
  DocumentReference? parent,
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollectionOnce(
      Languages02Record.collection(parent),
      Languages02Record.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

/// Functions to query PublicRelationTeamRecords (as a Stream and as a Future).
Future<int> queryPublicRelationTeamRecordCount({
  Query Function(Query)? queryBuilder,
  int limit = -1,
}) =>
    queryCollectionCount(
      PublicRelationTeamRecord.collection,
      queryBuilder: queryBuilder,
      limit: limit,
    );

Stream<List<PublicRelationTeamRecord>> queryPublicRelationTeamRecord({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollection(
      PublicRelationTeamRecord.collection,
      PublicRelationTeamRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<List<PublicRelationTeamRecord>> queryPublicRelationTeamRecordOnce({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollectionOnce(
      PublicRelationTeamRecord.collection,
      PublicRelationTeamRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

/// Functions to query Skills03Records (as a Stream and as a Future).
Future<int> querySkills03RecordCount({
  DocumentReference? parent,
  Query Function(Query)? queryBuilder,
  int limit = -1,
}) =>
    queryCollectionCount(
      Skills03Record.collection(parent),
      queryBuilder: queryBuilder,
      limit: limit,
    );

Stream<List<Skills03Record>> querySkills03Record({
  DocumentReference? parent,
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollection(
      Skills03Record.collection(parent),
      Skills03Record.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<List<Skills03Record>> querySkills03RecordOnce({
  DocumentReference? parent,
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollectionOnce(
      Skills03Record.collection(parent),
      Skills03Record.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

/// Functions to query Certificates03Records (as a Stream and as a Future).
Future<int> queryCertificates03RecordCount({
  DocumentReference? parent,
  Query Function(Query)? queryBuilder,
  int limit = -1,
}) =>
    queryCollectionCount(
      Certificates03Record.collection(parent),
      queryBuilder: queryBuilder,
      limit: limit,
    );

Stream<List<Certificates03Record>> queryCertificates03Record({
  DocumentReference? parent,
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollection(
      Certificates03Record.collection(parent),
      Certificates03Record.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<List<Certificates03Record>> queryCertificates03RecordOnce({
  DocumentReference? parent,
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollectionOnce(
      Certificates03Record.collection(parent),
      Certificates03Record.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

/// Functions to query Education03Records (as a Stream and as a Future).
Future<int> queryEducation03RecordCount({
  DocumentReference? parent,
  Query Function(Query)? queryBuilder,
  int limit = -1,
}) =>
    queryCollectionCount(
      Education03Record.collection(parent),
      queryBuilder: queryBuilder,
      limit: limit,
    );

Stream<List<Education03Record>> queryEducation03Record({
  DocumentReference? parent,
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollection(
      Education03Record.collection(parent),
      Education03Record.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<List<Education03Record>> queryEducation03RecordOnce({
  DocumentReference? parent,
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollectionOnce(
      Education03Record.collection(parent),
      Education03Record.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

/// Functions to query BadgesAndRankings03Records (as a Stream and as a Future).
Future<int> queryBadgesAndRankings03RecordCount({
  DocumentReference? parent,
  Query Function(Query)? queryBuilder,
  int limit = -1,
}) =>
    queryCollectionCount(
      BadgesAndRankings03Record.collection(parent),
      queryBuilder: queryBuilder,
      limit: limit,
    );

Stream<List<BadgesAndRankings03Record>> queryBadgesAndRankings03Record({
  DocumentReference? parent,
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollection(
      BadgesAndRankings03Record.collection(parent),
      BadgesAndRankings03Record.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<List<BadgesAndRankings03Record>> queryBadgesAndRankings03RecordOnce({
  DocumentReference? parent,
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollectionOnce(
      BadgesAndRankings03Record.collection(parent),
      BadgesAndRankings03Record.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

/// Functions to query Experience03Records (as a Stream and as a Future).
Future<int> queryExperience03RecordCount({
  DocumentReference? parent,
  Query Function(Query)? queryBuilder,
  int limit = -1,
}) =>
    queryCollectionCount(
      Experience03Record.collection(parent),
      queryBuilder: queryBuilder,
      limit: limit,
    );

Stream<List<Experience03Record>> queryExperience03Record({
  DocumentReference? parent,
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollection(
      Experience03Record.collection(parent),
      Experience03Record.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<List<Experience03Record>> queryExperience03RecordOnce({
  DocumentReference? parent,
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollectionOnce(
      Experience03Record.collection(parent),
      Experience03Record.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

/// Functions to query CertificateImages03Records (as a Stream and as a Future).
Future<int> queryCertificateImages03RecordCount({
  DocumentReference? parent,
  Query Function(Query)? queryBuilder,
  int limit = -1,
}) =>
    queryCollectionCount(
      CertificateImages03Record.collection(parent),
      queryBuilder: queryBuilder,
      limit: limit,
    );

Stream<List<CertificateImages03Record>> queryCertificateImages03Record({
  DocumentReference? parent,
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollection(
      CertificateImages03Record.collection(parent),
      CertificateImages03Record.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<List<CertificateImages03Record>> queryCertificateImages03RecordOnce({
  DocumentReference? parent,
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollectionOnce(
      CertificateImages03Record.collection(parent),
      CertificateImages03Record.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

/// Functions to query Projects03Records (as a Stream and as a Future).
Future<int> queryProjects03RecordCount({
  DocumentReference? parent,
  Query Function(Query)? queryBuilder,
  int limit = -1,
}) =>
    queryCollectionCount(
      Projects03Record.collection(parent),
      queryBuilder: queryBuilder,
      limit: limit,
    );

Stream<List<Projects03Record>> queryProjects03Record({
  DocumentReference? parent,
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollection(
      Projects03Record.collection(parent),
      Projects03Record.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<List<Projects03Record>> queryProjects03RecordOnce({
  DocumentReference? parent,
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollectionOnce(
      Projects03Record.collection(parent),
      Projects03Record.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

/// Functions to query Languages03Records (as a Stream and as a Future).
Future<int> queryLanguages03RecordCount({
  DocumentReference? parent,
  Query Function(Query)? queryBuilder,
  int limit = -1,
}) =>
    queryCollectionCount(
      Languages03Record.collection(parent),
      queryBuilder: queryBuilder,
      limit: limit,
    );

Stream<List<Languages03Record>> queryLanguages03Record({
  DocumentReference? parent,
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollection(
      Languages03Record.collection(parent),
      Languages03Record.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<List<Languages03Record>> queryLanguages03RecordOnce({
  DocumentReference? parent,
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollectionOnce(
      Languages03Record.collection(parent),
      Languages03Record.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

/// Functions to query PhotographyTeamRecords (as a Stream and as a Future).
Future<int> queryPhotographyTeamRecordCount({
  Query Function(Query)? queryBuilder,
  int limit = -1,
}) =>
    queryCollectionCount(
      PhotographyTeamRecord.collection,
      queryBuilder: queryBuilder,
      limit: limit,
    );

Stream<List<PhotographyTeamRecord>> queryPhotographyTeamRecord({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollection(
      PhotographyTeamRecord.collection,
      PhotographyTeamRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<List<PhotographyTeamRecord>> queryPhotographyTeamRecordOnce({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollectionOnce(
      PhotographyTeamRecord.collection,
      PhotographyTeamRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

/// Functions to query Skills04Records (as a Stream and as a Future).
Future<int> querySkills04RecordCount({
  DocumentReference? parent,
  Query Function(Query)? queryBuilder,
  int limit = -1,
}) =>
    queryCollectionCount(
      Skills04Record.collection(parent),
      queryBuilder: queryBuilder,
      limit: limit,
    );

Stream<List<Skills04Record>> querySkills04Record({
  DocumentReference? parent,
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollection(
      Skills04Record.collection(parent),
      Skills04Record.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<List<Skills04Record>> querySkills04RecordOnce({
  DocumentReference? parent,
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollectionOnce(
      Skills04Record.collection(parent),
      Skills04Record.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

/// Functions to query Certificates04Records (as a Stream and as a Future).
Future<int> queryCertificates04RecordCount({
  DocumentReference? parent,
  Query Function(Query)? queryBuilder,
  int limit = -1,
}) =>
    queryCollectionCount(
      Certificates04Record.collection(parent),
      queryBuilder: queryBuilder,
      limit: limit,
    );

Stream<List<Certificates04Record>> queryCertificates04Record({
  DocumentReference? parent,
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollection(
      Certificates04Record.collection(parent),
      Certificates04Record.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<List<Certificates04Record>> queryCertificates04RecordOnce({
  DocumentReference? parent,
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollectionOnce(
      Certificates04Record.collection(parent),
      Certificates04Record.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

/// Functions to query Education04Records (as a Stream and as a Future).
Future<int> queryEducation04RecordCount({
  DocumentReference? parent,
  Query Function(Query)? queryBuilder,
  int limit = -1,
}) =>
    queryCollectionCount(
      Education04Record.collection(parent),
      queryBuilder: queryBuilder,
      limit: limit,
    );

Stream<List<Education04Record>> queryEducation04Record({
  DocumentReference? parent,
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollection(
      Education04Record.collection(parent),
      Education04Record.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<List<Education04Record>> queryEducation04RecordOnce({
  DocumentReference? parent,
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollectionOnce(
      Education04Record.collection(parent),
      Education04Record.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

/// Functions to query BadgesAndRankings04Records (as a Stream and as a Future).
Future<int> queryBadgesAndRankings04RecordCount({
  DocumentReference? parent,
  Query Function(Query)? queryBuilder,
  int limit = -1,
}) =>
    queryCollectionCount(
      BadgesAndRankings04Record.collection(parent),
      queryBuilder: queryBuilder,
      limit: limit,
    );

Stream<List<BadgesAndRankings04Record>> queryBadgesAndRankings04Record({
  DocumentReference? parent,
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollection(
      BadgesAndRankings04Record.collection(parent),
      BadgesAndRankings04Record.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<List<BadgesAndRankings04Record>> queryBadgesAndRankings04RecordOnce({
  DocumentReference? parent,
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollectionOnce(
      BadgesAndRankings04Record.collection(parent),
      BadgesAndRankings04Record.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

/// Functions to query Experience04Records (as a Stream and as a Future).
Future<int> queryExperience04RecordCount({
  DocumentReference? parent,
  Query Function(Query)? queryBuilder,
  int limit = -1,
}) =>
    queryCollectionCount(
      Experience04Record.collection(parent),
      queryBuilder: queryBuilder,
      limit: limit,
    );

Stream<List<Experience04Record>> queryExperience04Record({
  DocumentReference? parent,
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollection(
      Experience04Record.collection(parent),
      Experience04Record.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<List<Experience04Record>> queryExperience04RecordOnce({
  DocumentReference? parent,
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollectionOnce(
      Experience04Record.collection(parent),
      Experience04Record.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

/// Functions to query CertificateImages04Records (as a Stream and as a Future).
Future<int> queryCertificateImages04RecordCount({
  DocumentReference? parent,
  Query Function(Query)? queryBuilder,
  int limit = -1,
}) =>
    queryCollectionCount(
      CertificateImages04Record.collection(parent),
      queryBuilder: queryBuilder,
      limit: limit,
    );

Stream<List<CertificateImages04Record>> queryCertificateImages04Record({
  DocumentReference? parent,
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollection(
      CertificateImages04Record.collection(parent),
      CertificateImages04Record.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<List<CertificateImages04Record>> queryCertificateImages04RecordOnce({
  DocumentReference? parent,
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollectionOnce(
      CertificateImages04Record.collection(parent),
      CertificateImages04Record.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

/// Functions to query Projects04Records (as a Stream and as a Future).
Future<int> queryProjects04RecordCount({
  DocumentReference? parent,
  Query Function(Query)? queryBuilder,
  int limit = -1,
}) =>
    queryCollectionCount(
      Projects04Record.collection(parent),
      queryBuilder: queryBuilder,
      limit: limit,
    );

Stream<List<Projects04Record>> queryProjects04Record({
  DocumentReference? parent,
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollection(
      Projects04Record.collection(parent),
      Projects04Record.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<List<Projects04Record>> queryProjects04RecordOnce({
  DocumentReference? parent,
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollectionOnce(
      Projects04Record.collection(parent),
      Projects04Record.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

/// Functions to query Languages04Records (as a Stream and as a Future).
Future<int> queryLanguages04RecordCount({
  DocumentReference? parent,
  Query Function(Query)? queryBuilder,
  int limit = -1,
}) =>
    queryCollectionCount(
      Languages04Record.collection(parent),
      queryBuilder: queryBuilder,
      limit: limit,
    );

Stream<List<Languages04Record>> queryLanguages04Record({
  DocumentReference? parent,
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollection(
      Languages04Record.collection(parent),
      Languages04Record.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<List<Languages04Record>> queryLanguages04RecordOnce({
  DocumentReference? parent,
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollectionOnce(
      Languages04Record.collection(parent),
      Languages04Record.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

/// Functions to query OrganizingTeamRecords (as a Stream and as a Future).
Future<int> queryOrganizingTeamRecordCount({
  Query Function(Query)? queryBuilder,
  int limit = -1,
}) =>
    queryCollectionCount(
      OrganizingTeamRecord.collection,
      queryBuilder: queryBuilder,
      limit: limit,
    );

Stream<List<OrganizingTeamRecord>> queryOrganizingTeamRecord({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollection(
      OrganizingTeamRecord.collection,
      OrganizingTeamRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<List<OrganizingTeamRecord>> queryOrganizingTeamRecordOnce({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollectionOnce(
      OrganizingTeamRecord.collection,
      OrganizingTeamRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

/// Functions to query Skills05Records (as a Stream and as a Future).
Future<int> querySkills05RecordCount({
  DocumentReference? parent,
  Query Function(Query)? queryBuilder,
  int limit = -1,
}) =>
    queryCollectionCount(
      Skills05Record.collection(parent),
      queryBuilder: queryBuilder,
      limit: limit,
    );

Stream<List<Skills05Record>> querySkills05Record({
  DocumentReference? parent,
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollection(
      Skills05Record.collection(parent),
      Skills05Record.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<List<Skills05Record>> querySkills05RecordOnce({
  DocumentReference? parent,
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollectionOnce(
      Skills05Record.collection(parent),
      Skills05Record.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

/// Functions to query Certificates05Records (as a Stream and as a Future).
Future<int> queryCertificates05RecordCount({
  DocumentReference? parent,
  Query Function(Query)? queryBuilder,
  int limit = -1,
}) =>
    queryCollectionCount(
      Certificates05Record.collection(parent),
      queryBuilder: queryBuilder,
      limit: limit,
    );

Stream<List<Certificates05Record>> queryCertificates05Record({
  DocumentReference? parent,
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollection(
      Certificates05Record.collection(parent),
      Certificates05Record.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<List<Certificates05Record>> queryCertificates05RecordOnce({
  DocumentReference? parent,
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollectionOnce(
      Certificates05Record.collection(parent),
      Certificates05Record.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

/// Functions to query Education05Records (as a Stream and as a Future).
Future<int> queryEducation05RecordCount({
  DocumentReference? parent,
  Query Function(Query)? queryBuilder,
  int limit = -1,
}) =>
    queryCollectionCount(
      Education05Record.collection(parent),
      queryBuilder: queryBuilder,
      limit: limit,
    );

Stream<List<Education05Record>> queryEducation05Record({
  DocumentReference? parent,
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollection(
      Education05Record.collection(parent),
      Education05Record.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<List<Education05Record>> queryEducation05RecordOnce({
  DocumentReference? parent,
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollectionOnce(
      Education05Record.collection(parent),
      Education05Record.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

/// Functions to query BadgesAndRankings05Records (as a Stream and as a Future).
Future<int> queryBadgesAndRankings05RecordCount({
  DocumentReference? parent,
  Query Function(Query)? queryBuilder,
  int limit = -1,
}) =>
    queryCollectionCount(
      BadgesAndRankings05Record.collection(parent),
      queryBuilder: queryBuilder,
      limit: limit,
    );

Stream<List<BadgesAndRankings05Record>> queryBadgesAndRankings05Record({
  DocumentReference? parent,
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollection(
      BadgesAndRankings05Record.collection(parent),
      BadgesAndRankings05Record.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<List<BadgesAndRankings05Record>> queryBadgesAndRankings05RecordOnce({
  DocumentReference? parent,
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollectionOnce(
      BadgesAndRankings05Record.collection(parent),
      BadgesAndRankings05Record.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

/// Functions to query Experience05Records (as a Stream and as a Future).
Future<int> queryExperience05RecordCount({
  DocumentReference? parent,
  Query Function(Query)? queryBuilder,
  int limit = -1,
}) =>
    queryCollectionCount(
      Experience05Record.collection(parent),
      queryBuilder: queryBuilder,
      limit: limit,
    );

Stream<List<Experience05Record>> queryExperience05Record({
  DocumentReference? parent,
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollection(
      Experience05Record.collection(parent),
      Experience05Record.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<List<Experience05Record>> queryExperience05RecordOnce({
  DocumentReference? parent,
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollectionOnce(
      Experience05Record.collection(parent),
      Experience05Record.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

/// Functions to query CertificateImages05Records (as a Stream and as a Future).
Future<int> queryCertificateImages05RecordCount({
  DocumentReference? parent,
  Query Function(Query)? queryBuilder,
  int limit = -1,
}) =>
    queryCollectionCount(
      CertificateImages05Record.collection(parent),
      queryBuilder: queryBuilder,
      limit: limit,
    );

Stream<List<CertificateImages05Record>> queryCertificateImages05Record({
  DocumentReference? parent,
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollection(
      CertificateImages05Record.collection(parent),
      CertificateImages05Record.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<List<CertificateImages05Record>> queryCertificateImages05RecordOnce({
  DocumentReference? parent,
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollectionOnce(
      CertificateImages05Record.collection(parent),
      CertificateImages05Record.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

/// Functions to query Projects05Records (as a Stream and as a Future).
Future<int> queryProjects05RecordCount({
  DocumentReference? parent,
  Query Function(Query)? queryBuilder,
  int limit = -1,
}) =>
    queryCollectionCount(
      Projects05Record.collection(parent),
      queryBuilder: queryBuilder,
      limit: limit,
    );

Stream<List<Projects05Record>> queryProjects05Record({
  DocumentReference? parent,
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollection(
      Projects05Record.collection(parent),
      Projects05Record.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<List<Projects05Record>> queryProjects05RecordOnce({
  DocumentReference? parent,
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollectionOnce(
      Projects05Record.collection(parent),
      Projects05Record.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

/// Functions to query Languages05Records (as a Stream and as a Future).
Future<int> queryLanguages05RecordCount({
  DocumentReference? parent,
  Query Function(Query)? queryBuilder,
  int limit = -1,
}) =>
    queryCollectionCount(
      Languages05Record.collection(parent),
      queryBuilder: queryBuilder,
      limit: limit,
    );

Stream<List<Languages05Record>> queryLanguages05Record({
  DocumentReference? parent,
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollection(
      Languages05Record.collection(parent),
      Languages05Record.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<List<Languages05Record>> queryLanguages05RecordOnce({
  DocumentReference? parent,
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollectionOnce(
      Languages05Record.collection(parent),
      Languages05Record.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<int> queryCollectionCount(
  Query collection, {
  Query Function(Query)? queryBuilder,
  int limit = -1,
}) {
  final builder = queryBuilder ?? (q) => q;
  var query = builder(collection);
  if (limit > 0) {
    query = query.limit(limit);
  }

  return query.count().get().catchError((err) {
    print('Error querying $collection: $err');
  }).then((value) => value.count);
}

Stream<List<T>> queryCollection<T>(
  Query collection,
  RecordBuilder<T> recordBuilder, {
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) {
  final builder = queryBuilder ?? (q) => q;
  var query = builder(collection);
  if (limit > 0 || singleRecord) {
    query = query.limit(singleRecord ? 1 : limit);
  }
  return query.snapshots().handleError((err) {
    print('Error querying $collection: $err');
  }).map((s) => s.docs
      .map(
        (d) => safeGet(
          () => recordBuilder(d),
          (e) => print('Error serializing doc ${d.reference.path}:\n$e'),
        ),
      )
      .where((d) => d != null)
      .map((d) => d!)
      .toList());
}

Future<List<T>> queryCollectionOnce<T>(
  Query collection,
  RecordBuilder<T> recordBuilder, {
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) {
  final builder = queryBuilder ?? (q) => q;
  var query = builder(collection);
  if (limit > 0 || singleRecord) {
    query = query.limit(singleRecord ? 1 : limit);
  }
  return query.get().then((s) => s.docs
      .map(
        (d) => safeGet(
          () => recordBuilder(d),
          (e) => print('Error serializing doc ${d.reference.path}:\n$e'),
        ),
      )
      .where((d) => d != null)
      .map((d) => d!)
      .toList());
}

extension QueryExtension on Query {
  Query whereIn(String field, List? list) => (list?.isEmpty ?? true)
      ? where(field, whereIn: null)
      : where(field, whereIn: list);

  Query whereNotIn(String field, List? list) => (list?.isEmpty ?? true)
      ? where(field, whereNotIn: null)
      : where(field, whereNotIn: list);

  Query whereArrayContainsAny(String field, List? list) =>
      (list?.isEmpty ?? true)
          ? where(field, arrayContainsAny: null)
          : where(field, arrayContainsAny: list);
}

class FFFirestorePage<T> {
  final List<T> data;
  final Stream<List<T>>? dataStream;
  final QueryDocumentSnapshot? nextPageMarker;

  FFFirestorePage(this.data, this.dataStream, this.nextPageMarker);
}

Future<FFFirestorePage<T>> queryCollectionPage<T>(
  Query collection,
  RecordBuilder<T> recordBuilder, {
  Query Function(Query)? queryBuilder,
  DocumentSnapshot? nextPageMarker,
  required int pageSize,
  required bool isStream,
}) async {
  final builder = queryBuilder ?? (q) => q;
  var query = builder(collection).limit(pageSize);
  if (nextPageMarker != null) {
    query = query.startAfterDocument(nextPageMarker);
  }
  Stream<QuerySnapshot>? docSnapshotStream;
  QuerySnapshot docSnapshot;
  if (isStream) {
    docSnapshotStream = query.snapshots();
    docSnapshot = await docSnapshotStream.first;
  } else {
    docSnapshot = await query.get();
  }
  getDocs(QuerySnapshot s) => s.docs
      .map(
        (d) => safeGet(
          () => recordBuilder(d),
          (e) => print('Error serializing doc ${d.reference.path}:\n$e'),
        ),
      )
      .where((d) => d != null)
      .map((d) => d!)
      .toList();
  final data = getDocs(docSnapshot);
  final dataStream = docSnapshotStream?.map(getDocs);
  final nextPageToken = docSnapshot.docs.isEmpty ? null : docSnapshot.docs.last;
  return FFFirestorePage(data, dataStream, nextPageToken);
}

// Creates a Firestore document representing the logged in user if it doesn't yet exist
Future maybeCreateUser(User user) async {
  final userRecord = UsersRecord.collection.doc(user.uid);
  final userExists = await userRecord.get().then((u) => u.exists);
  if (userExists) {
    currentUserDocument = await UsersRecord.getDocumentOnce(userRecord);
    return;
  }

  final userData = createUsersRecordData(
    email: user.email ??
        FirebaseAuth.instance.currentUser?.email ??
        user.providerData.firstOrNull?.email,
    displayName:
        user.displayName ?? FirebaseAuth.instance.currentUser?.displayName,
    photoUrl: user.photoURL,
    uid: user.uid,
    phoneNumber: user.phoneNumber,
    createdTime: getCurrentTimestamp,
  );

  await userRecord.set(userData);
  currentUserDocument = UsersRecord.getDocumentFromData(userData, userRecord);
}

Future updateUserDocument({String? email}) async {
  await currentUserDocument?.reference
      .update(createUsersRecordData(email: email));
}
