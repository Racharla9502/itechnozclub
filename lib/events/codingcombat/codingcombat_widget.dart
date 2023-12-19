import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_expanded_image_view.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'codingcombat_model.dart';
export 'codingcombat_model.dart';

class CodingcombatWidget extends StatefulWidget {
  const CodingcombatWidget({super.key});

  @override
  _CodingcombatWidgetState createState() => _CodingcombatWidgetState();
}

class _CodingcombatWidgetState extends State<CodingcombatWidget>
    with TickerProviderStateMixin {
  late CodingcombatModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  final animationsMap = {
    'textOnActionTriggerAnimation1': AnimationInfo(
      trigger: AnimationTrigger.onActionTrigger,
      applyInitialState: true,
      effects: [
        ScaleEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 600.ms,
          begin: const Offset(1.0, 1.0),
          end: const Offset(1.0, 1.0),
        ),
      ],
    ),
    'textOnActionTriggerAnimation2': AnimationInfo(
      trigger: AnimationTrigger.onActionTrigger,
      applyInitialState: true,
      effects: [
        ScaleEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 600.ms,
          begin: const Offset(1.0, 1.0),
          end: const Offset(1.0, 1.0),
        ),
      ],
    ),
    'textOnActionTriggerAnimation3': AnimationInfo(
      trigger: AnimationTrigger.onActionTrigger,
      applyInitialState: true,
      effects: [
        ScaleEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 600.ms,
          begin: const Offset(1.0, 1.0),
          end: const Offset(1.0, 1.0),
        ),
      ],
    ),
    'textOnActionTriggerAnimation4': AnimationInfo(
      trigger: AnimationTrigger.onActionTrigger,
      applyInitialState: true,
      effects: [
        ScaleEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 600.ms,
          begin: const Offset(1.0, 1.0),
          end: const Offset(1.0, 1.0),
        ),
      ],
    ),
    'textOnActionTriggerAnimation5': AnimationInfo(
      trigger: AnimationTrigger.onActionTrigger,
      applyInitialState: true,
      effects: [
        ScaleEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 600.ms,
          begin: const Offset(1.0, 1.0),
          end: const Offset(1.0, 1.0),
        ),
      ],
    ),
    'textOnActionTriggerAnimation6': AnimationInfo(
      trigger: AnimationTrigger.onActionTrigger,
      applyInitialState: true,
      effects: [
        ScaleEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 600.ms,
          begin: const Offset(1.0, 1.0),
          end: const Offset(1.0, 1.0),
        ),
      ],
    ),
    'textOnActionTriggerAnimation7': AnimationInfo(
      trigger: AnimationTrigger.onActionTrigger,
      applyInitialState: true,
      effects: [
        ScaleEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 600.ms,
          begin: const Offset(1.0, 1.0),
          end: const Offset(1.0, 1.0),
        ),
      ],
    ),
    'textOnActionTriggerAnimation8': AnimationInfo(
      trigger: AnimationTrigger.onActionTrigger,
      applyInitialState: true,
      effects: [
        ScaleEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 600.ms,
          begin: const Offset(1.0, 1.0),
          end: const Offset(1.0, 1.0),
        ),
      ],
    ),
    'textOnActionTriggerAnimation9': AnimationInfo(
      trigger: AnimationTrigger.onActionTrigger,
      applyInitialState: true,
      effects: [
        ScaleEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 600.ms,
          begin: const Offset(1.0, 1.0),
          end: const Offset(1.0, 1.0),
        ),
      ],
    ),
  };

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CodingcombatModel());

    setupAnimations(
      animationsMap.values.where((anim) =>
          anim.trigger == AnimationTrigger.onActionTrigger ||
          !anim.applyInitialState),
      this,
    );

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (isiOS) {
      SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle(
          statusBarBrightness: Theme.of(context).brightness,
          systemStatusBarContrastEnforced: true,
        ),
      );
    }

    return GestureDetector(
      onTap: () => _model.unfocusNode.canRequestFocus
          ? FocusScope.of(context).requestFocus(_model.unfocusNode)
          : FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        body: SafeArea(
          top: true,
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Container(
                  width: double.infinity,
                  height: 500.0,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: CachedNetworkImageProvider(
                        'https://firebasestorage.googleapis.com/v0/b/i-technoz-c74wpl.appspot.com/o/Events%2F01.jpg?alt=media&token=1d4c0bce-e245-4b64-beca-c0c6af1ff0e1',
                      ),
                    ),
                  ),
                  child: Stack(
                    children: [
                      Hero(
                        tag: 'Inauguration_hero_001',
                        transitionOnUserGestures: true,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(8.0),
                          child: Image.network(
                            'https://firebasestorage.googleapis.com/v0/b/itechnozclub-881fc.appspot.com/o/i-technoz%2FEvents%2F07_Codding_combat%2F07.JPG?alt=media&token=dafbd5cf-a786-46f2-bb64-cbe779f6e4fb',
                            width: double.infinity,
                            height: 500.0,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Align(
                        alignment: const AlignmentDirectional(-1.0, 0.0),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              width: 100.0,
                              height: 100.0,
                              decoration: const BoxDecoration(),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.end,
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  FlutterFlowIconButton(
                                    borderColor: Colors.transparent,
                                    borderRadius: 20.0,
                                    borderWidth: 1.0,
                                    buttonSize: 60.0,
                                    icon: Icon(
                                      Icons.arrow_back,
                                      color: FlutterFlowTheme.of(context)
                                          .primaryText,
                                      size: 40.0,
                                    ),
                                    onPressed: () async {
                                      context.safePop();
                                    },
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  80.0, 0.0, 0.0, 50.0),
                              child: Container(
                                width: 350.0,
                                height: 90.0,
                                decoration: BoxDecoration(
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryText,
                                  borderRadius: BorderRadius.circular(20.0),
                                ),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Align(
                                      alignment: const AlignmentDirectional(0.0, 0.0),
                                      child: SelectionArea(
                                          child: Text(
                                        'Inauguration',
                                        style: FlutterFlowTheme.of(context)
                                            .displaySmall
                                            .override(
                                              fontFamily: 'Noto Serif',
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryBackground,
                                              fontSize: 40.0,
                                            ),
                                      )),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(0.0, 50.0, 0.0, 0.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(8.0),
                        child: Image.network(
                          'https://firebasestorage.googleapis.com/v0/b/itechnozclub-881fc.appspot.com/o/i-technoz%2FEvents%2F01_Innaugration%2F11.gif?alt=media&token=a1384173-3c24-496e-a7f5-03d11b8e1d2e',
                          width: 400.0,
                          height: 450.0,
                          fit: BoxFit.contain,
                        ),
                      ),
                      Container(
                        width: 603.0,
                        decoration: const BoxDecoration(),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SelectionArea(
                                child: Text(
                              'About the club:',
                              style: FlutterFlowTheme.of(context)
                                  .headlineLarge
                                  .override(
                                    fontFamily: 'Readex Pro',
                                    fontSize: 40.0,
                                    fontWeight: FontWeight.bold,
                                  ),
                            )),
                            SelectionArea(
                                child: Text(
                              'The coding competition held on September 16th, 2023, was a resounding success, with participants showcasing their coding prowess and problem-solving abilities. This event, organized jointly by the “i Technoz Club” in collaboration with “CodeChef”, aimed to challenge and nurture coding enthusiasts from fundamentals to advanced Data Structures and Algorithms (DSA). Here is a comprehensive report of the event.',
                              style: FlutterFlowTheme.of(context)
                                  .labelLarge
                                  .override(
                                    fontFamily: 'Inter',
                                    color: FlutterFlowTheme.of(context)
                                        .primaryText,
                                    fontSize: 20.0,
                                    fontWeight: FontWeight.w500,
                                  ),
                            )),
                          ].divide(const SizedBox(height: 25.0)),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsetsDirectional.fromSTEB(0.0, 100.0, 0.0, 100.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        width: 1100.0,
                        decoration: const BoxDecoration(),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Event Details:',
                              style: FlutterFlowTheme.of(context)
                                  .headlineLarge
                                  .override(
                                    fontFamily: 'Readex Pro',
                                    fontWeight: FontWeight.bold,
                                  ),
                            ),
                            Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  0.0, 10.0, 0.0, 0.0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        25.0, 0.0, 0.0, 0.0),
                                    child: Container(
                                      width: 1000.0,
                                      decoration: const BoxDecoration(),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          SelectionArea(
                                              child: Text(
                                            '➡️ Level 1 (LI):',
                                            style: FlutterFlowTheme.of(context)
                                                .labelLarge
                                                .override(
                                                  fontFamily: 'Inter',
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primaryText,
                                                  fontSize: 20.0,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                          )),
                                          Padding(
                                            padding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    50.0, 0.0, 0.0, 0.0),
                                            child: SelectionArea(
                                                child: Text(
                                              'Level 1 focused on testing participants\' understanding of programming fundamentals and\tmathematics.\n\t\nParticipants encountered problems of increasing difficulty in pushing their coding skills to the next level.\n\t\nThe competition took place from 10:00 A.M to 12:00 P.M. on September 16th. Results for LI were promptly made available after the competition, with qualified participants advancing to L2.',
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Inter',
                                                        fontWeight:
                                                            FontWeight.w500,
                                                      ),
                                            )),
                                          ),
                                        ].divide(const SizedBox(height: 5.0)),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  0.0, 10.0, 0.0, 0.0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        25.0, 0.0, 0.0, 0.0),
                                    child: Container(
                                      width: 1000.0,
                                      decoration: const BoxDecoration(),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          SelectionArea(
                                              child: Text(
                                            '➡️\tLevel 2 (L2):',
                                            style: FlutterFlowTheme.of(context)
                                                .labelLarge
                                                .override(
                                                  fontFamily: 'Inter',
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primaryText,
                                                  fontSize: 20.0,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                          )),
                                          Padding(
                                            padding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    50.0, 0.0, 0.0, 0.0),
                                            child: SelectionArea(
                                                child: Text(
                                              'Level 2 was an in-depth exploration of Data Structures and Algorithms (DSA).\tParticipants were challenged to apply algorithmic thinking and problem-solving skills.\n\nCoding proficiency, logical reasoning, and mathematical abilities were put to the test.\n\nL2 took place from 1:30 P.M. to 3:30 P.M. on the same day.\n\nThe results for L2 were announced immediately following the competition, and prizes were\tdistributed.',
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Inter',
                                                        fontWeight:
                                                            FontWeight.w500,
                                                      ),
                                            )),
                                          ),
                                        ].divide(const SizedBox(height: 5.0)),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  0.0, 10.0, 0.0, 0.0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        25.0, 0.0, 0.0, 0.0),
                                    child: Container(
                                      width: 1000.0,
                                      decoration: const BoxDecoration(),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          SelectionArea(
                                              child: Text(
                                            '➡️\tEvaluation:',
                                            style: FlutterFlowTheme.of(context)
                                                .labelLarge
                                                .override(
                                                  fontFamily: 'Inter',
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primaryText,
                                                  fontSize: 20.0,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                          )),
                                          Padding(
                                            padding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    50.0, 0.0, 0.0, 0.0),
                                            child: SelectionArea(
                                                child: Text(
                                              'The evaluation process is done by Codechef Grandmaster an AI.',
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Inter',
                                                        fontWeight:
                                                            FontWeight.w500,
                                                      ),
                                            )),
                                          ),
                                        ].divide(const SizedBox(height: 5.0)),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  0.0, 10.0, 0.0, 0.0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        25.0, 0.0, 0.0, 0.0),
                                    child: Container(
                                      width: 1000.0,
                                      decoration: const BoxDecoration(),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          SelectionArea(
                                              child: Text(
                                            '➡️\tClosing Ceremony and Results: ',
                                            style: FlutterFlowTheme.of(context)
                                                .labelLarge
                                                .override(
                                                  fontFamily: 'Inter',
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primaryText,
                                                  fontSize: 20.0,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                          )),
                                          Padding(
                                            padding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    50.0, 0.0, 0.0, 0.0),
                                            child: SelectionArea(
                                                child: Text(
                                              'The day concluded with a lively closing ceremony. The winners were announced, and they were awarded recognition for their outstanding performances, the winner a 2,000 cash prize, and the runner a 1,000 cash prize. Additionally, all participants received certificates of participation to acknowledge their efforts and contributions to the event.',
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Inter',
                                                        fontWeight:
                                                            FontWeight.w500,
                                                      ),
                                            )),
                                          ),
                                        ].divide(const SizedBox(height: 5.0)),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ].divide(const SizedBox(height: 5.0)),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 100.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        width: 1100.0,
                        decoration: const BoxDecoration(),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Winner and Runner-Ups:',
                              style: FlutterFlowTheme.of(context)
                                  .headlineLarge
                                  .override(
                                    fontFamily: 'Readex Pro',
                                    fontWeight: FontWeight.bold,
                                  ),
                            ),
                            Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  0.0, 10.0, 0.0, 0.0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        25.0, 0.0, 0.0, 0.0),
                                    child: Container(
                                      width: 1000.0,
                                      decoration: const BoxDecoration(),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          SelectionArea(
                                              child: Text(
                                            '🥇 Winner ',
                                            style: FlutterFlowTheme.of(context)
                                                .labelLarge
                                                .override(
                                                  fontFamily: 'Inter',
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primaryText,
                                                  fontSize: 20.0,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                          )),
                                          Padding(
                                            padding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    50.0, 0.0, 0.0, 0.0),
                                            child: SelectionArea(
                                                child: Text(
                                              '- Vemula Sai Tharun who took home 2000/-',
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Inter',
                                                        color: Colors.black,
                                                        fontSize: 16.0,
                                                        fontWeight:
                                                            FontWeight.w500,
                                                      ),
                                            )),
                                          ),
                                        ].divide(const SizedBox(height: 5.0)),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  0.0, 10.0, 0.0, 0.0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        25.0, 0.0, 0.0, 0.0),
                                    child: Container(
                                      width: 1000.0,
                                      decoration: const BoxDecoration(),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          SelectionArea(
                                              child: Text(
                                            '🥈 Runner-up ',
                                            style: FlutterFlowTheme.of(context)
                                                .labelLarge
                                                .override(
                                                  fontFamily: 'Inter',
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primaryText,
                                                  fontSize: 20.0,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                          )),
                                          Padding(
                                            padding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    50.0, 0.0, 0.0, 0.0),
                                            child: SelectionArea(
                                                child: Text(
                                              '- Seelem Jeevan Raj who took home 1000/-',
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Inter',
                                                        color: Colors.black,
                                                        fontSize: 16.0,
                                                        fontWeight:
                                                            FontWeight.w500,
                                                      ),
                                            )),
                                          ),
                                        ].divide(const SizedBox(height: 5.0)),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  0.0, 10.0, 0.0, 0.0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        25.0, 0.0, 0.0, 0.0),
                                    child: Container(
                                      width: 1000.0,
                                      decoration: const BoxDecoration(),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          SelectionArea(
                                              child: Text(
                                            '🎖️ Special appreciation ',
                                            style: FlutterFlowTheme.of(context)
                                                .labelLarge
                                                .override(
                                                  fontFamily: 'Inter',
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primaryText,
                                                  fontSize: 20.0,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                          )),
                                          Padding(
                                            padding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    50.0, 0.0, 0.0, 0.0),
                                            child: SelectionArea(
                                                child: Text(
                                              '- S Shashi Kiran',
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Inter',
                                                        color: Colors.black,
                                                        fontSize: 16.0,
                                                        fontWeight:
                                                            FontWeight.w500,
                                                      ),
                                            )),
                                          ),
                                        ].divide(const SizedBox(height: 5.0)),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ].divide(const SizedBox(height: 5.0)),
                        ),
                      ),
                    ],
                  ),
                ),
                Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: 1100.0,
                      height: 1000.0,
                      decoration: const BoxDecoration(),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          SelectionArea(
                              child: Text(
                            'Glimpses of Event',
                            style: FlutterFlowTheme.of(context)
                                .headlineLarge
                                .override(
                                  fontFamily: 'Readex Pro',
                                  fontWeight: FontWeight.bold,
                                ),
                          )),
                          Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                0.0, 25.0, 0.0, 0.0),
                            child: Container(
                              width: double.infinity,
                              height: 900.0,
                              decoration: const BoxDecoration(),
                              child: MasonryGridView.builder(
                                gridDelegate:
                                    const SliverSimpleGridDelegateWithFixedCrossAxisCount(
                                  crossAxisCount: 3,
                                ),
                                crossAxisSpacing: 10.0,
                                mainAxisSpacing: 10.0,
                                itemCount: 12,
                                itemBuilder: (context, index) {
                                  return [
                                    () => InkWell(
                                          splashColor: Colors.transparent,
                                          focusColor: Colors.transparent,
                                          hoverColor: Colors.transparent,
                                          highlightColor: Colors.transparent,
                                          onTap: () async {
                                            await Navigator.push(
                                              context,
                                              PageTransition(
                                                type: PageTransitionType.fade,
                                                child:
                                                    FlutterFlowExpandedImageView(
                                                  image: Image.network(
                                                    'https://firebasestorage.googleapis.com/v0/b/itechnozclub-881fc.appspot.com/o/i-technoz%2FEvents%2F07_Codding_combat%2F01.JPG?alt=media&token=fd6a066f-ac09-4897-bec9-3b27545e2996',
                                                    fit: BoxFit.contain,
                                                  ),
                                                  allowRotation: false,
                                                  tag: 'imageTag3',
                                                  useHeroAnimation: true,
                                                ),
                                              ),
                                            );
                                          },
                                          child: Hero(
                                            tag: 'imageTag3',
                                            transitionOnUserGestures: true,
                                            child: ClipRRect(
                                              borderRadius:
                                                  BorderRadius.circular(8.0),
                                              child: Image.network(
                                                'https://firebasestorage.googleapis.com/v0/b/itechnozclub-881fc.appspot.com/o/i-technoz%2FEvents%2F07_Codding_combat%2F01.JPG?alt=media&token=fd6a066f-ac09-4897-bec9-3b27545e2996',
                                                width: 300.0,
                                                height: 250.0,
                                                fit: BoxFit.cover,
                                              ),
                                            ),
                                          ),
                                        ),
                                    () => InkWell(
                                          splashColor: Colors.transparent,
                                          focusColor: Colors.transparent,
                                          hoverColor: Colors.transparent,
                                          highlightColor: Colors.transparent,
                                          onTap: () async {
                                            await Navigator.push(
                                              context,
                                              PageTransition(
                                                type: PageTransitionType.fade,
                                                child:
                                                    FlutterFlowExpandedImageView(
                                                  image: Image.network(
                                                    'https://firebasestorage.googleapis.com/v0/b/itechnozclub-881fc.appspot.com/o/i-technoz%2FEvents%2F07_Codding_combat%2F02.JPG?alt=media&token=1c2007b6-b208-46ae-a490-f75aa358d402',
                                                    fit: BoxFit.contain,
                                                  ),
                                                  allowRotation: false,
                                                  tag: 'imageTag4',
                                                  useHeroAnimation: true,
                                                ),
                                              ),
                                            );
                                          },
                                          child: Hero(
                                            tag: 'imageTag4',
                                            transitionOnUserGestures: true,
                                            child: ClipRRect(
                                              borderRadius:
                                                  BorderRadius.circular(8.0),
                                              child: Image.network(
                                                'https://firebasestorage.googleapis.com/v0/b/itechnozclub-881fc.appspot.com/o/i-technoz%2FEvents%2F07_Codding_combat%2F02.JPG?alt=media&token=1c2007b6-b208-46ae-a490-f75aa358d402',
                                                width: 300.0,
                                                height: 250.0,
                                                fit: BoxFit.cover,
                                              ),
                                            ),
                                          ),
                                        ),
                                    () => InkWell(
                                          splashColor: Colors.transparent,
                                          focusColor: Colors.transparent,
                                          hoverColor: Colors.transparent,
                                          highlightColor: Colors.transparent,
                                          onTap: () async {
                                            await Navigator.push(
                                              context,
                                              PageTransition(
                                                type: PageTransitionType.fade,
                                                child:
                                                    FlutterFlowExpandedImageView(
                                                  image: Image.network(
                                                    'https://firebasestorage.googleapis.com/v0/b/itechnozclub-881fc.appspot.com/o/i-technoz%2FEvents%2F07_Codding_combat%2F03.JPG?alt=media&token=c8a9cb6b-c545-4e60-9a7a-7ec8ab7fc213',
                                                    fit: BoxFit.contain,
                                                  ),
                                                  allowRotation: false,
                                                  tag: 'imageTag5',
                                                  useHeroAnimation: true,
                                                ),
                                              ),
                                            );
                                          },
                                          child: Hero(
                                            tag: 'imageTag5',
                                            transitionOnUserGestures: true,
                                            child: ClipRRect(
                                              borderRadius:
                                                  BorderRadius.circular(8.0),
                                              child: Image.network(
                                                'https://firebasestorage.googleapis.com/v0/b/itechnozclub-881fc.appspot.com/o/i-technoz%2FEvents%2F07_Codding_combat%2F03.JPG?alt=media&token=c8a9cb6b-c545-4e60-9a7a-7ec8ab7fc213',
                                                width: 300.0,
                                                height: 250.0,
                                                fit: BoxFit.cover,
                                              ),
                                            ),
                                          ),
                                        ),
                                    () => InkWell(
                                          splashColor: Colors.transparent,
                                          focusColor: Colors.transparent,
                                          hoverColor: Colors.transparent,
                                          highlightColor: Colors.transparent,
                                          onTap: () async {
                                            await Navigator.push(
                                              context,
                                              PageTransition(
                                                type: PageTransitionType.fade,
                                                child:
                                                    FlutterFlowExpandedImageView(
                                                  image: Image.network(
                                                    'https://firebasestorage.googleapis.com/v0/b/itechnozclub-881fc.appspot.com/o/i-technoz%2FEvents%2F07_Codding_combat%2F04.JPG?alt=media&token=0b66c1be-a834-4149-ba0c-c6077edf2ef0',
                                                    fit: BoxFit.contain,
                                                  ),
                                                  allowRotation: false,
                                                  tag: 'imageTag6',
                                                  useHeroAnimation: true,
                                                ),
                                              ),
                                            );
                                          },
                                          child: Hero(
                                            tag: 'imageTag6',
                                            transitionOnUserGestures: true,
                                            child: ClipRRect(
                                              borderRadius:
                                                  BorderRadius.circular(8.0),
                                              child: Image.network(
                                                'https://firebasestorage.googleapis.com/v0/b/itechnozclub-881fc.appspot.com/o/i-technoz%2FEvents%2F07_Codding_combat%2F04.JPG?alt=media&token=0b66c1be-a834-4149-ba0c-c6077edf2ef0',
                                                width: 300.0,
                                                height: 250.0,
                                                fit: BoxFit.cover,
                                              ),
                                            ),
                                          ),
                                        ),
                                    () => InkWell(
                                          splashColor: Colors.transparent,
                                          focusColor: Colors.transparent,
                                          hoverColor: Colors.transparent,
                                          highlightColor: Colors.transparent,
                                          onTap: () async {
                                            await Navigator.push(
                                              context,
                                              PageTransition(
                                                type: PageTransitionType.fade,
                                                child:
                                                    FlutterFlowExpandedImageView(
                                                  image: Image.network(
                                                    'https://firebasestorage.googleapis.com/v0/b/itechnozclub-881fc.appspot.com/o/i-technoz%2FEvents%2F07_Codding_combat%2F05.JPG?alt=media&token=4ddda0d6-b5b0-40e2-b396-6ac12b625d1f',
                                                    fit: BoxFit.contain,
                                                  ),
                                                  allowRotation: false,
                                                  tag: 'imageTag7',
                                                  useHeroAnimation: true,
                                                ),
                                              ),
                                            );
                                          },
                                          child: Hero(
                                            tag: 'imageTag7',
                                            transitionOnUserGestures: true,
                                            child: ClipRRect(
                                              borderRadius:
                                                  BorderRadius.circular(8.0),
                                              child: Image.network(
                                                'https://firebasestorage.googleapis.com/v0/b/itechnozclub-881fc.appspot.com/o/i-technoz%2FEvents%2F07_Codding_combat%2F05.JPG?alt=media&token=4ddda0d6-b5b0-40e2-b396-6ac12b625d1f',
                                                width: 300.0,
                                                height: 250.0,
                                                fit: BoxFit.cover,
                                              ),
                                            ),
                                          ),
                                        ),
                                    () => InkWell(
                                          splashColor: Colors.transparent,
                                          focusColor: Colors.transparent,
                                          hoverColor: Colors.transparent,
                                          highlightColor: Colors.transparent,
                                          onTap: () async {
                                            await Navigator.push(
                                              context,
                                              PageTransition(
                                                type: PageTransitionType.fade,
                                                child:
                                                    FlutterFlowExpandedImageView(
                                                  image: Image.network(
                                                    'https://firebasestorage.googleapis.com/v0/b/itechnozclub-881fc.appspot.com/o/i-technoz%2FEvents%2F07_Codding_combat%2F06.JPG?alt=media&token=40696a00-1ba8-43da-a2f2-f24cde1a4b40',
                                                    fit: BoxFit.contain,
                                                  ),
                                                  allowRotation: false,
                                                  tag: 'imageTag8',
                                                  useHeroAnimation: true,
                                                ),
                                              ),
                                            );
                                          },
                                          child: Hero(
                                            tag: 'imageTag8',
                                            transitionOnUserGestures: true,
                                            child: ClipRRect(
                                              borderRadius:
                                                  BorderRadius.circular(8.0),
                                              child: Image.network(
                                                'https://firebasestorage.googleapis.com/v0/b/itechnozclub-881fc.appspot.com/o/i-technoz%2FEvents%2F07_Codding_combat%2F06.JPG?alt=media&token=40696a00-1ba8-43da-a2f2-f24cde1a4b40',
                                                width: 300.0,
                                                height: 250.0,
                                                fit: BoxFit.cover,
                                              ),
                                            ),
                                          ),
                                        ),
                                    () => InkWell(
                                          splashColor: Colors.transparent,
                                          focusColor: Colors.transparent,
                                          hoverColor: Colors.transparent,
                                          highlightColor: Colors.transparent,
                                          onTap: () async {
                                            await Navigator.push(
                                              context,
                                              PageTransition(
                                                type: PageTransitionType.fade,
                                                child:
                                                    FlutterFlowExpandedImageView(
                                                  image: Image.network(
                                                    'https://firebasestorage.googleapis.com/v0/b/itechnozclub-881fc.appspot.com/o/i-technoz%2FEvents%2F07_Codding_combat%2F08.JPG?alt=media&token=d093be61-4ba6-4156-a9fb-8890bedc0fcf',
                                                    fit: BoxFit.contain,
                                                  ),
                                                  allowRotation: false,
                                                  tag: 'imageTag9',
                                                  useHeroAnimation: true,
                                                ),
                                              ),
                                            );
                                          },
                                          child: Hero(
                                            tag: 'imageTag9',
                                            transitionOnUserGestures: true,
                                            child: ClipRRect(
                                              borderRadius:
                                                  BorderRadius.circular(8.0),
                                              child: Image.network(
                                                'https://firebasestorage.googleapis.com/v0/b/itechnozclub-881fc.appspot.com/o/i-technoz%2FEvents%2F07_Codding_combat%2F08.JPG?alt=media&token=d093be61-4ba6-4156-a9fb-8890bedc0fcf',
                                                width: 300.0,
                                                height: 250.0,
                                                fit: BoxFit.cover,
                                              ),
                                            ),
                                          ),
                                        ),
                                    () => InkWell(
                                          splashColor: Colors.transparent,
                                          focusColor: Colors.transparent,
                                          hoverColor: Colors.transparent,
                                          highlightColor: Colors.transparent,
                                          onTap: () async {
                                            await Navigator.push(
                                              context,
                                              PageTransition(
                                                type: PageTransitionType.fade,
                                                child:
                                                    FlutterFlowExpandedImageView(
                                                  image: Image.network(
                                                    'https://firebasestorage.googleapis.com/v0/b/itechnozclub-881fc.appspot.com/o/i-technoz%2FEvents%2F07_Codding_combat%2F09.JPG?alt=media&token=82dbd8b4-4145-49a5-a920-8392a5c615aa',
                                                    fit: BoxFit.contain,
                                                  ),
                                                  allowRotation: false,
                                                  tag: 'imageTag10',
                                                  useHeroAnimation: true,
                                                ),
                                              ),
                                            );
                                          },
                                          child: Hero(
                                            tag: 'imageTag10',
                                            transitionOnUserGestures: true,
                                            child: ClipRRect(
                                              borderRadius:
                                                  BorderRadius.circular(8.0),
                                              child: Image.network(
                                                'https://firebasestorage.googleapis.com/v0/b/itechnozclub-881fc.appspot.com/o/i-technoz%2FEvents%2F07_Codding_combat%2F09.JPG?alt=media&token=82dbd8b4-4145-49a5-a920-8392a5c615aa',
                                                width: 300.0,
                                                height: 250.0,
                                                fit: BoxFit.cover,
                                              ),
                                            ),
                                          ),
                                        ),
                                    () => InkWell(
                                          splashColor: Colors.transparent,
                                          focusColor: Colors.transparent,
                                          hoverColor: Colors.transparent,
                                          highlightColor: Colors.transparent,
                                          onTap: () async {
                                            await Navigator.push(
                                              context,
                                              PageTransition(
                                                type: PageTransitionType.fade,
                                                child:
                                                    FlutterFlowExpandedImageView(
                                                  image: Image.network(
                                                    'https://firebasestorage.googleapis.com/v0/b/itechnozclub-881fc.appspot.com/o/i-technoz%2FEvents%2F07_Codding_combat%2F10.JPG?alt=media&token=8057fbad-72b3-4c93-80b3-acf2700350d3',
                                                    fit: BoxFit.contain,
                                                  ),
                                                  allowRotation: false,
                                                  tag: 'imageTag11',
                                                  useHeroAnimation: true,
                                                ),
                                              ),
                                            );
                                          },
                                          child: Hero(
                                            tag: 'imageTag11',
                                            transitionOnUserGestures: true,
                                            child: ClipRRect(
                                              borderRadius:
                                                  BorderRadius.circular(8.0),
                                              child: Image.network(
                                                'https://firebasestorage.googleapis.com/v0/b/itechnozclub-881fc.appspot.com/o/i-technoz%2FEvents%2F07_Codding_combat%2F10.JPG?alt=media&token=8057fbad-72b3-4c93-80b3-acf2700350d3',
                                                width: 300.0,
                                                height: 250.0,
                                                fit: BoxFit.cover,
                                              ),
                                            ),
                                          ),
                                        ),
                                    () => InkWell(
                                          splashColor: Colors.transparent,
                                          focusColor: Colors.transparent,
                                          hoverColor: Colors.transparent,
                                          highlightColor: Colors.transparent,
                                          onTap: () async {
                                            await Navigator.push(
                                              context,
                                              PageTransition(
                                                type: PageTransitionType.fade,
                                                child:
                                                    FlutterFlowExpandedImageView(
                                                  image: Image.network(
                                                    'https://firebasestorage.googleapis.com/v0/b/itechnozclub-881fc.appspot.com/o/i-technoz%2FEvents%2F07_Codding_combat%2F11.JPG?alt=media&token=c0922744-03ae-48d7-ae7d-781c7e06a12e',
                                                    fit: BoxFit.contain,
                                                  ),
                                                  allowRotation: false,
                                                  tag: 'imageTag12',
                                                  useHeroAnimation: true,
                                                ),
                                              ),
                                            );
                                          },
                                          child: Hero(
                                            tag: 'imageTag12',
                                            transitionOnUserGestures: true,
                                            child: ClipRRect(
                                              borderRadius:
                                                  BorderRadius.circular(8.0),
                                              child: Image.network(
                                                'https://firebasestorage.googleapis.com/v0/b/itechnozclub-881fc.appspot.com/o/i-technoz%2FEvents%2F07_Codding_combat%2F11.JPG?alt=media&token=c0922744-03ae-48d7-ae7d-781c7e06a12e',
                                                width: 300.0,
                                                height: 250.0,
                                                fit: BoxFit.cover,
                                              ),
                                            ),
                                          ),
                                        ),
                                    () => InkWell(
                                          splashColor: Colors.transparent,
                                          focusColor: Colors.transparent,
                                          hoverColor: Colors.transparent,
                                          highlightColor: Colors.transparent,
                                          onTap: () async {
                                            await Navigator.push(
                                              context,
                                              PageTransition(
                                                type: PageTransitionType.fade,
                                                child:
                                                    FlutterFlowExpandedImageView(
                                                  image: Image.network(
                                                    'https://firebasestorage.googleapis.com/v0/b/itechnozclub-881fc.appspot.com/o/i-technoz%2FEvents%2F07_Codding_combat%2F12.JPG?alt=media&token=db141ad6-58e6-4d81-93e6-7a8644dd1861',
                                                    fit: BoxFit.contain,
                                                  ),
                                                  allowRotation: false,
                                                  tag: 'imageTag13',
                                                  useHeroAnimation: true,
                                                ),
                                              ),
                                            );
                                          },
                                          child: Hero(
                                            tag: 'imageTag13',
                                            transitionOnUserGestures: true,
                                            child: ClipRRect(
                                              borderRadius:
                                                  BorderRadius.circular(8.0),
                                              child: Image.network(
                                                'https://firebasestorage.googleapis.com/v0/b/itechnozclub-881fc.appspot.com/o/i-technoz%2FEvents%2F07_Codding_combat%2F12.JPG?alt=media&token=db141ad6-58e6-4d81-93e6-7a8644dd1861',
                                                width: 300.0,
                                                height: 250.0,
                                                fit: BoxFit.cover,
                                              ),
                                            ),
                                          ),
                                        ),
                                    () => InkWell(
                                          splashColor: Colors.transparent,
                                          focusColor: Colors.transparent,
                                          hoverColor: Colors.transparent,
                                          highlightColor: Colors.transparent,
                                          onTap: () async {
                                            await Navigator.push(
                                              context,
                                              PageTransition(
                                                type: PageTransitionType.fade,
                                                child:
                                                    FlutterFlowExpandedImageView(
                                                  image: Image.network(
                                                    'https://firebasestorage.googleapis.com/v0/b/itechnozclub-881fc.appspot.com/o/i-technoz%2FEvents%2F07_Codding_combat%2F13.JPG?alt=media&token=23b5d573-5fd0-4210-9e3a-040a2da7e309',
                                                    fit: BoxFit.contain,
                                                  ),
                                                  allowRotation: false,
                                                  tag: 'imageTag14',
                                                  useHeroAnimation: true,
                                                ),
                                              ),
                                            );
                                          },
                                          child: Hero(
                                            tag: 'imageTag14',
                                            transitionOnUserGestures: true,
                                            child: ClipRRect(
                                              borderRadius:
                                                  BorderRadius.circular(8.0),
                                              child: Image.network(
                                                'https://firebasestorage.googleapis.com/v0/b/itechnozclub-881fc.appspot.com/o/i-technoz%2FEvents%2F07_Codding_combat%2F13.JPG?alt=media&token=23b5d573-5fd0-4210-9e3a-040a2da7e309',
                                                width: 300.0,
                                                height: 250.0,
                                                fit: BoxFit.cover,
                                              ),
                                            ),
                                          ),
                                        ),
                                  ][index]();
                                },
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(0.0, 50.0, 0.0, 50.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        width: 1100.0,
                        decoration: const BoxDecoration(),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SelectionArea(
                                child: Text(
                              'Conclusion:',
                              style: FlutterFlowTheme.of(context)
                                  .headlineLarge
                                  .override(
                                    fontFamily: 'Readex Pro',
                                    fontWeight: FontWeight.bold,
                                  ),
                            )),
                            Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  25.0, 10.0, 0.0, 0.0),
                              child: SelectionArea(
                                  child: Text(
                                'The "Coding Competition - Fostering Coding Skills and Problem Solving" held on September 16th, 2023, at Anurag University was a resounding success. This event, organized jointly by the “i Technoz Club” in collaboration with “CodeChef”, accomplished its primary objective of challenging and nurturing participants\' coding abilities while fostering collaboration and problem-solving skills among coding enthusiasts.\n\nWith two distinct levels of competition, Level 1 and Level 2, the event effectively catered to participants with varying levels of coding expertise. Level 1 tested fundamental programming knowledge and mathematical skills, while Level 2 delved into the intricacies of Data Structures and Algorithms, challenging participants to apply algorithmic thinking and logical reasoning.\n\nThe promotion strategy, which included hard copy posters, email campaigns, AU Pulse portal visibility, and social media engagement, ensured that the event reached a wide and engaged audience. This comprehensive approach significantly contributed to the event\'s success.\n\nParticipants exhibited enthusiasm, critical thinking, and collaboration throughout the competition creating a vibrant and stimulating atmosphere. The event not only enriched the coding skills of the participants but also promoted a culture of coding excellence within the university community.\n\nParticipants exhibited enthusiasm, critical thinking, and collaboration throughout the competition creating a vibrant and stimulating atmosphere. The event not only enriched the coding skills of the participants but also promoted a culture of coding excellence within the university community.',
                                style: FlutterFlowTheme.of(context)
                                    .labelLarge
                                    .override(
                                      fontFamily: 'Inter',
                                      color: FlutterFlowTheme.of(context)
                                          .primaryText,
                                    ),
                              )),
                            ),
                          ].divide(const SizedBox(height: 5.0)),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(0.0, 100.0, 0.0, 0.0),
                  child: Container(
                    width: double.infinity,
                    height: 500.0,
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).alternate,
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Flexible(
                              child: Container(
                                width: 275.0,
                                decoration: const BoxDecoration(),
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    InkWell(
                                      splashColor: Colors.transparent,
                                      focusColor: Colors.transparent,
                                      hoverColor: Colors.transparent,
                                      highlightColor: Colors.transparent,
                                      onTap: () async {
                                        await Navigator.push(
                                          context,
                                          PageTransition(
                                            type: PageTransitionType.fade,
                                            child: FlutterFlowExpandedImageView(
                                              image: Image.asset(
                                                'assets/images/Orange_Modern_Technology_G_Letter_Logo_(210__297_px)_(Logo).png',
                                                fit: BoxFit.contain,
                                              ),
                                              allowRotation: false,
                                              tag: 'imageTag15',
                                              useHeroAnimation: true,
                                            ),
                                          ),
                                        );
                                      },
                                      child: Hero(
                                        tag: 'imageTag15',
                                        transitionOnUserGestures: true,
                                        child: ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(8.0),
                                          child: Image.asset(
                                            'assets/images/Orange_Modern_Technology_G_Letter_Logo_(210__297_px)_(Logo).png',
                                            width: 200.0,
                                            height: 200.0,
                                            fit: BoxFit.contain,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          0.0, 25.0, 0.0, 0.0),
                                      child: SelectionArea(
                                          child: Text(
                                        'Empowering minds, fostering innovation, and shaping a collective journey towards excellence.',
                                        textAlign: TextAlign.start,
                                        style: FlutterFlowTheme.of(context)
                                            .titleMedium
                                            .override(
                                              fontFamily: 'Raleway',
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryText,
                                              fontSize: 20.0,
                                              fontWeight: FontWeight.bold,
                                            ),
                                      )),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Column(
                              mainAxisSize: MainAxisSize.max,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Help Links',
                                  style: FlutterFlowTheme.of(context)
                                      .headlineMedium,
                                ),
                                MouseRegion(
                                  opaque: false,
                                  cursor:
                                      MouseCursor.defer ?? MouseCursor.defer,
                                  onEnter: ((event) async {
                                    setState(() =>
                                        _model.mouseRegionHovered1 = true);
                                    if (animationsMap[
                                            'textOnActionTriggerAnimation1'] !=
                                        null) {
                                      await animationsMap[
                                              'textOnActionTriggerAnimation1']!
                                          .controller
                                          .forward(from: 0.0)
                                          .whenComplete(animationsMap[
                                                  'textOnActionTriggerAnimation1']!
                                              .controller
                                              .reverse);
                                    }
                                  }),
                                  onExit: ((event) async {
                                    setState(() =>
                                        _model.mouseRegionHovered1 = false);
                                  }),
                                  child: Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        0.0, 20.0, 0.0, 0.0),
                                    child: Text(
                                      'Home',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Inter',
                                            fontWeight: FontWeight.w500,
                                          ),
                                    ).animateOnActionTrigger(
                                      animationsMap[
                                          'textOnActionTriggerAnimation1']!,
                                    ),
                                  ),
                                ),
                                MouseRegion(
                                  opaque: false,
                                  cursor:
                                      MouseCursor.defer ?? MouseCursor.defer,
                                  onEnter: ((event) async {
                                    setState(() =>
                                        _model.mouseRegionHovered2 = true);
                                    if (animationsMap[
                                            'textOnActionTriggerAnimation1'] !=
                                        null) {
                                      await animationsMap[
                                              'textOnActionTriggerAnimation1']!
                                          .controller
                                          .forward(from: 0.0)
                                          .whenComplete(animationsMap[
                                                  'textOnActionTriggerAnimation1']!
                                              .controller
                                              .reverse);
                                    }
                                  }),
                                  onExit: ((event) async {
                                    setState(() =>
                                        _model.mouseRegionHovered2 = false);
                                  }),
                                  child: Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        0.0, 15.0, 0.0, 0.0),
                                    child: Text(
                                      'Events',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Inter',
                                            fontWeight: FontWeight.w500,
                                          ),
                                    ).animateOnActionTrigger(
                                      animationsMap[
                                          'textOnActionTriggerAnimation2']!,
                                    ),
                                  ),
                                ),
                                MouseRegion(
                                  opaque: false,
                                  cursor:
                                      MouseCursor.defer ?? MouseCursor.defer,
                                  onEnter: ((event) async {
                                    setState(() =>
                                        _model.mouseRegionHovered3 = true);
                                    if (animationsMap[
                                            'textOnActionTriggerAnimation1'] !=
                                        null) {
                                      await animationsMap[
                                              'textOnActionTriggerAnimation1']!
                                          .controller
                                          .forward(from: 0.0)
                                          .whenComplete(animationsMap[
                                                  'textOnActionTriggerAnimation1']!
                                              .controller
                                              .reverse);
                                    }
                                  }),
                                  onExit: ((event) async {
                                    setState(() =>
                                        _model.mouseRegionHovered3 = false);
                                  }),
                                  child: Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        0.0, 15.0, 0.0, 0.0),
                                    child: Text(
                                      'About us',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Inter',
                                            fontWeight: FontWeight.w500,
                                          ),
                                    ).animateOnActionTrigger(
                                      animationsMap[
                                          'textOnActionTriggerAnimation3']!,
                                    ),
                                  ),
                                ),
                                MouseRegion(
                                  opaque: false,
                                  cursor:
                                      MouseCursor.defer ?? MouseCursor.defer,
                                  onEnter: ((event) async {
                                    setState(() =>
                                        _model.mouseRegionHovered4 = true);
                                    if (animationsMap[
                                            'textOnActionTriggerAnimation1'] !=
                                        null) {
                                      await animationsMap[
                                              'textOnActionTriggerAnimation1']!
                                          .controller
                                          .forward(from: 0.0)
                                          .whenComplete(animationsMap[
                                                  'textOnActionTriggerAnimation1']!
                                              .controller
                                              .reverse);
                                    }
                                  }),
                                  onExit: ((event) async {
                                    setState(() =>
                                        _model.mouseRegionHovered4 = false);
                                  }),
                                  child: Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        0.0, 15.0, 0.0, 0.0),
                                    child: Text(
                                      'Technical Team',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Inter',
                                            fontWeight: FontWeight.w500,
                                          ),
                                    ).animateOnActionTrigger(
                                      animationsMap[
                                          'textOnActionTriggerAnimation4']!,
                                    ),
                                  ),
                                ),
                                MouseRegion(
                                  opaque: false,
                                  cursor:
                                      MouseCursor.defer ?? MouseCursor.defer,
                                  onEnter: ((event) async {
                                    setState(() =>
                                        _model.mouseRegionHovered5 = true);
                                    if (animationsMap[
                                            'textOnActionTriggerAnimation1'] !=
                                        null) {
                                      await animationsMap[
                                              'textOnActionTriggerAnimation1']!
                                          .controller
                                          .forward(from: 0.0)
                                          .whenComplete(animationsMap[
                                                  'textOnActionTriggerAnimation1']!
                                              .controller
                                              .reverse);
                                    }
                                  }),
                                  onExit: ((event) async {
                                    setState(() =>
                                        _model.mouseRegionHovered5 = false);
                                  }),
                                  child: Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        0.0, 15.0, 0.0, 0.0),
                                    child: Text(
                                      'Design Team',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Inter',
                                            fontWeight: FontWeight.w500,
                                          ),
                                    ).animateOnActionTrigger(
                                      animationsMap[
                                          'textOnActionTriggerAnimation5']!,
                                    ),
                                  ),
                                ),
                                MouseRegion(
                                  opaque: false,
                                  cursor:
                                      MouseCursor.defer ?? MouseCursor.defer,
                                  onEnter: ((event) async {
                                    setState(() =>
                                        _model.mouseRegionHovered6 = true);
                                    if (animationsMap[
                                            'textOnActionTriggerAnimation1'] !=
                                        null) {
                                      await animationsMap[
                                              'textOnActionTriggerAnimation1']!
                                          .controller
                                          .forward(from: 0.0)
                                          .whenComplete(animationsMap[
                                                  'textOnActionTriggerAnimation1']!
                                              .controller
                                              .reverse);
                                    }
                                  }),
                                  onExit: ((event) async {
                                    setState(() =>
                                        _model.mouseRegionHovered6 = false);
                                  }),
                                  child: Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        0.0, 15.0, 0.0, 0.0),
                                    child: Text(
                                      'Public Relation Team',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Inter',
                                            fontWeight: FontWeight.w500,
                                          ),
                                    ).animateOnActionTrigger(
                                      animationsMap[
                                          'textOnActionTriggerAnimation6']!,
                                    ),
                                  ),
                                ),
                                MouseRegion(
                                  opaque: false,
                                  cursor:
                                      MouseCursor.defer ?? MouseCursor.defer,
                                  onEnter: ((event) async {
                                    setState(() =>
                                        _model.mouseRegionHovered7 = true);
                                    if (animationsMap[
                                            'textOnActionTriggerAnimation1'] !=
                                        null) {
                                      await animationsMap[
                                              'textOnActionTriggerAnimation1']!
                                          .controller
                                          .forward(from: 0.0)
                                          .whenComplete(animationsMap[
                                                  'textOnActionTriggerAnimation1']!
                                              .controller
                                              .reverse);
                                    }
                                  }),
                                  onExit: ((event) async {
                                    setState(() =>
                                        _model.mouseRegionHovered7 = false);
                                  }),
                                  child: Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        0.0, 15.0, 0.0, 0.0),
                                    child: Text(
                                      'Content Writer Team',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Inter',
                                            fontWeight: FontWeight.w500,
                                          ),
                                    ).animateOnActionTrigger(
                                      animationsMap[
                                          'textOnActionTriggerAnimation7']!,
                                    ),
                                  ),
                                ),
                                MouseRegion(
                                  opaque: false,
                                  cursor:
                                      MouseCursor.defer ?? MouseCursor.defer,
                                  onEnter: ((event) async {
                                    setState(() =>
                                        _model.mouseRegionHovered8 = true);
                                    if (animationsMap[
                                            'textOnActionTriggerAnimation1'] !=
                                        null) {
                                      await animationsMap[
                                              'textOnActionTriggerAnimation1']!
                                          .controller
                                          .forward(from: 0.0)
                                          .whenComplete(animationsMap[
                                                  'textOnActionTriggerAnimation1']!
                                              .controller
                                              .reverse);
                                    }
                                  }),
                                  onExit: ((event) async {
                                    setState(() =>
                                        _model.mouseRegionHovered8 = false);
                                  }),
                                  child: Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        0.0, 15.0, 0.0, 0.0),
                                    child: Text(
                                      'Organizing Team',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Inter',
                                            fontWeight: FontWeight.w500,
                                          ),
                                    ).animateOnActionTrigger(
                                      animationsMap[
                                          'textOnActionTriggerAnimation8']!,
                                    ),
                                  ),
                                ),
                                MouseRegion(
                                  opaque: false,
                                  cursor:
                                      MouseCursor.defer ?? MouseCursor.defer,
                                  onEnter: ((event) async {
                                    setState(() =>
                                        _model.mouseRegionHovered9 = true);
                                    if (animationsMap[
                                            'textOnActionTriggerAnimation1'] !=
                                        null) {
                                      await animationsMap[
                                              'textOnActionTriggerAnimation1']!
                                          .controller
                                          .forward(from: 0.0)
                                          .whenComplete(animationsMap[
                                                  'textOnActionTriggerAnimation1']!
                                              .controller
                                              .reverse);
                                    }
                                  }),
                                  onExit: ((event) async {
                                    setState(() =>
                                        _model.mouseRegionHovered9 = false);
                                  }),
                                  child: Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        0.0, 15.0, 0.0, 0.0),
                                    child: Text(
                                      'Photography',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Inter',
                                            fontWeight: FontWeight.w500,
                                          ),
                                    ).animateOnActionTrigger(
                                      animationsMap[
                                          'textOnActionTriggerAnimation9']!,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Column(
                                  mainAxisSize: MainAxisSize.max,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'follow us on:',
                                      style: FlutterFlowTheme.of(context)
                                          .headlineMedium,
                                    ),
                                    Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          0.0, 10.0, 0.0, 0.0),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Column(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              FFButtonWidget(
                                                onPressed: () async {
                                                  await launchURL(
                                                      'https://whatsapp.com/channel/0029VaG0k71AzNbtsEC7Ao3E');
                                                },
                                                text: '',
                                                icon: const FaIcon(
                                                  FontAwesomeIcons.whatsapp,
                                                  size: 20.0,
                                                ),
                                                options: FFButtonOptions(
                                                  width: 40.0,
                                                  height: 40.0,
                                                  padding: const EdgeInsets.all(0.0),
                                                  iconPadding:
                                                      const EdgeInsetsDirectional
                                                          .fromSTEB(7.0, 0.0,
                                                              0.0, 0.0),
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .success,
                                                  textStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .titleSmall
                                                          .override(
                                                            fontFamily: 'Inter',
                                                            color: Colors.white,
                                                          ),
                                                  elevation: 3.0,
                                                  borderSide: const BorderSide(
                                                    color: Colors.transparent,
                                                    width: 1.0,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          8.0),
                                                  hoverColor: const Color(0xFFF5F5F5),
                                                  hoverTextColor:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .success,
                                                  hoverElevation: 20.0,
                                                ),
                                              ),
                                            ],
                                          ),
                                          FFButtonWidget(
                                            onPressed: () async {
                                              await launchURL(
                                                  'https://instagram.com/itechnozclub?igshid=OGQ5ZDc2ODk2ZA==');
                                            },
                                            text: '',
                                            icon: const FaIcon(
                                              FontAwesomeIcons.instagram,
                                              size: 20.0,
                                            ),
                                            options: FFButtonOptions(
                                              width: 40.0,
                                              height: 40.0,
                                              padding: const EdgeInsets.all(0.0),
                                              iconPadding: const EdgeInsetsDirectional
                                                  .fromSTEB(7.0, 0.0, 0.0, 0.0),
                                              color: const Color(0xFFB22424),
                                              textStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .titleSmall
                                                      .override(
                                                        fontFamily: 'Inter',
                                                        color: Colors.white,
                                                      ),
                                              elevation: 3.0,
                                              borderSide: const BorderSide(
                                                color: Colors.transparent,
                                                width: 1.0,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(8.0),
                                              hoverColor: const Color(0xFFF5F5F5),
                                              hoverTextColor: const Color(0xFFB22424),
                                              hoverElevation: 20.0,
                                            ),
                                          ),
                                          FFButtonWidget(
                                            onPressed: () async {
                                              await launchURL(
                                                  'https://youtube.com/@itechnozclub?si=4BJ1hD_cY6uOGJLu');
                                            },
                                            text: '',
                                            icon: const FaIcon(
                                              FontAwesomeIcons.youtube,
                                              size: 20.0,
                                            ),
                                            options: FFButtonOptions(
                                              width: 40.0,
                                              height: 40.0,
                                              padding: const EdgeInsets.all(0.0),
                                              iconPadding: const EdgeInsetsDirectional
                                                  .fromSTEB(7.0, 0.0, 0.0, 0.0),
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .error,
                                              textStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .titleSmall
                                                      .override(
                                                        fontFamily: 'Inter',
                                                        color: Colors.white,
                                                      ),
                                              elevation: 3.0,
                                              borderSide: const BorderSide(
                                                color: Colors.transparent,
                                                width: 1.0,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(8.0),
                                              hoverColor: const Color(0xFFF5F5F5),
                                              hoverTextColor:
                                                  FlutterFlowTheme.of(context)
                                                      .error,
                                              hoverElevation: 20.0,
                                            ),
                                          ),
                                        ].divide(const SizedBox(width: 15.0)),
                                      ),
                                    ),
                                    Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Column(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            FFButtonWidget(
                                              onPressed: () async {
                                                await launchURL(
                                                    'https://www.linkedin.com/company/i-technoz-club/');
                                              },
                                              text: '',
                                              icon: const FaIcon(
                                                FontAwesomeIcons.linkedinIn,
                                                size: 20.0,
                                              ),
                                              options: FFButtonOptions(
                                                width: 40.0,
                                                height: 40.0,
                                                padding: const EdgeInsets.all(0.0),
                                                iconPadding:
                                                    const EdgeInsetsDirectional
                                                        .fromSTEB(
                                                            7.0, 0.0, 0.0, 0.0),
                                                color: const Color(0xFF0A45BF),
                                                textStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .titleSmall
                                                        .override(
                                                          fontFamily: 'Inter',
                                                          color: Colors.white,
                                                        ),
                                                elevation: 3.0,
                                                borderSide: const BorderSide(
                                                  color: Colors.transparent,
                                                  width: 1.0,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(8.0),
                                                hoverColor: const Color(0xFFF5F5F5),
                                                hoverTextColor:
                                                    const Color(0xFF0A45BF),
                                                hoverElevation: 20.0,
                                              ),
                                            ),
                                          ],
                                        ),
                                        FFButtonWidget(
                                          onPressed: () async {
                                            await launchURL(
                                                'https://www.facebook.com/profile.php?id=61550967094823&mibextid=ZbWKwL');
                                          },
                                          text: '',
                                          icon: const FaIcon(
                                            FontAwesomeIcons.facebookF,
                                            size: 20.0,
                                          ),
                                          options: FFButtonOptions(
                                            width: 40.0,
                                            height: 40.0,
                                            padding: const EdgeInsets.all(0.0),
                                            iconPadding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    7.0, 0.0, 0.0, 0.0),
                                            color: FlutterFlowTheme.of(context)
                                                .primary,
                                            textStyle:
                                                FlutterFlowTheme.of(context)
                                                    .titleSmall
                                                    .override(
                                                      fontFamily: 'Inter',
                                                      color: Colors.white,
                                                    ),
                                            elevation: 3.0,
                                            borderSide: const BorderSide(
                                              color: Colors.transparent,
                                              width: 1.0,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(8.0),
                                            hoverColor: const Color(0xFFF5F5F5),
                                            hoverTextColor: const Color(0xFF0053FF),
                                            hoverElevation: 20.0,
                                          ),
                                        ),
                                        FFButtonWidget(
                                          onPressed: () async {
                                            await launchURL(
                                                'https://t.me/itechnozclub');
                                          },
                                          text: '',
                                          icon: const FaIcon(
                                            FontAwesomeIcons.telegramPlane,
                                            size: 20.0,
                                          ),
                                          options: FFButtonOptions(
                                            width: 40.0,
                                            height: 40.0,
                                            padding: const EdgeInsets.all(0.0),
                                            iconPadding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    7.0, 0.0, 0.0, 0.0),
                                            color: const Color(0xFF0054FD),
                                            textStyle:
                                                FlutterFlowTheme.of(context)
                                                    .titleSmall
                                                    .override(
                                                      fontFamily: 'Inter',
                                                      color: Colors.white,
                                                    ),
                                            elevation: 3.0,
                                            borderSide: const BorderSide(
                                              color: Colors.transparent,
                                              width: 1.0,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(8.0),
                                            hoverColor: const Color(0xFFF5F5F5),
                                            hoverTextColor: const Color(0xFF0054FD),
                                            hoverElevation: 20.0,
                                          ),
                                        ),
                                      ].divide(const SizedBox(width: 15.0)),
                                    ),
                                    Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        FFButtonWidget(
                                          onPressed: () async {
                                            await launchURL(
                                                'https://twitter.com/itechnozclub');
                                          },
                                          text: '',
                                          icon: const FaIcon(
                                            FontAwesomeIcons.twitter,
                                            size: 20.0,
                                          ),
                                          options: FFButtonOptions(
                                            width: 40.0,
                                            height: 40.0,
                                            padding: const EdgeInsets.all(0.0),
                                            iconPadding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    7.0, 0.0, 0.0, 0.0),
                                            color: const Color(0xFF0054FD),
                                            textStyle:
                                                FlutterFlowTheme.of(context)
                                                    .titleSmall
                                                    .override(
                                                      fontFamily: 'Inter',
                                                      color: Colors.white,
                                                    ),
                                            elevation: 3.0,
                                            borderSide: const BorderSide(
                                              color: Colors.transparent,
                                              width: 1.0,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(8.0),
                                            hoverColor: const Color(0xFFF5F5F5),
                                            hoverTextColor: const Color(0xFF0A45BF),
                                            hoverElevation: 20.0,
                                          ),
                                        ),
                                      ].divide(const SizedBox(width: 10.0)),
                                    ),
                                  ].divide(const SizedBox(height: 15.0)),
                                ),
                              ].divide(const SizedBox(width: 15.0)),
                            ),
                            Column(
                              mainAxisSize: MainAxisSize.max,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                InkWell(
                                  splashColor: Colors.transparent,
                                  focusColor: Colors.transparent,
                                  hoverColor: Colors.transparent,
                                  highlightColor: Colors.transparent,
                                  onTap: () async {
                                    await Navigator.push(
                                      context,
                                      PageTransition(
                                        type: PageTransitionType.fade,
                                        child: FlutterFlowExpandedImageView(
                                          image: Image.asset(
                                            'assets/images/Blue_Purple_Modern_Virtual_Reality_Twitter_Header_(1).png',
                                            fit: BoxFit.contain,
                                          ),
                                          allowRotation: false,
                                          tag: 'imageTag16',
                                          useHeroAnimation: true,
                                        ),
                                      ),
                                    );
                                  },
                                  child: Hero(
                                    tag: 'imageTag16',
                                    transitionOnUserGestures: true,
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(8.0),
                                      child: Image.asset(
                                        'assets/images/Blue_Purple_Modern_Virtual_Reality_Twitter_Header_(1).png',
                                        width: 250.0,
                                        height: 75.0,
                                        fit: BoxFit.contain,
                                      ),
                                    ),
                                  ),
                                ),
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    ClipRRect(
                                      borderRadius: BorderRadius.circular(8.0),
                                      child: Image.asset(
                                        'assets/images/fijek_4.png',
                                        width: 40.0,
                                        height: 50.0,
                                        fit: BoxFit.contain,
                                      ),
                                    ),
                                    Container(
                                      width: 250.0,
                                      decoration: const BoxDecoration(),
                                      child: SelectionArea(
                                          child: Text(
                                        'Venkatapur, Ghatkesar, Medchal–Malkajgiri district, Hyderabad, Telangana, India. 500 088',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Inter',
                                              fontWeight: FontWeight.w500,
                                            ),
                                      )),
                                    ),
                                  ].divide(const SizedBox(width: 10.0)),
                                ),
                                Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      0.0, 10.0, 0.0, 0.0),
                                  child: FFButtonWidget(
                                    onPressed: () {
                                      print('Button pressed ...');
                                    },
                                    text: '+91-98663 08205 / 92472 89944',
                                    icon: const Icon(
                                      Icons.phone,
                                      size: 15.0,
                                    ),
                                    options: FFButtonOptions(
                                      width: 300.0,
                                      height: 30.0,
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          0.0, 0.0, 55.0, 0.0),
                                      iconPadding:
                                          const EdgeInsetsDirectional.fromSTEB(
                                              0.0, 0.0, 0.0, 0.0),
                                      color: const Color(0x00FFFFFF),
                                      textStyle: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Inter',
                                            fontSize: 14.0,
                                            fontWeight: FontWeight.w500,
                                          ),
                                      elevation: 0.0,
                                      borderSide: const BorderSide(
                                        color: Color(0x00FFFFFF),
                                        width: 0.0,
                                      ),
                                      borderRadius: BorderRadius.circular(8.0),
                                      hoverTextColor: const Color(0xFF004080),
                                    ),
                                  ),
                                ),
                                FFButtonWidget(
                                  onPressed: () {
                                    print('Button pressed ...');
                                  },
                                  text: 'info@anurag.edu.in',
                                  icon: const Icon(
                                    Icons.mail,
                                    size: 15.0,
                                  ),
                                  options: FFButtonOptions(
                                    width: 300.0,
                                    height: 30.0,
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        0.0, 0.0, 145.0, 0.0),
                                    iconPadding: const EdgeInsetsDirectional.fromSTEB(
                                        0.0, 0.0, 0.0, 0.0),
                                    color: const Color(0x00FFFFFF),
                                    textStyle: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Inter',
                                          fontSize: 14.0,
                                          fontWeight: FontWeight.w500,
                                        ),
                                    elevation: 0.0,
                                    borderSide: const BorderSide(
                                      color: Color(0x00FFFFFF),
                                      width: 0.0,
                                    ),
                                    borderRadius: BorderRadius.circular(8.0),
                                    hoverTextColor: const Color(0xFF004080),
                                  ),
                                ),
                                FFButtonWidget(
                                  onPressed: () {
                                    print('Button pressed ...');
                                  },
                                  text: 'itechnozclub@anurag.edu.in',
                                  icon: const Icon(
                                    Icons.mail,
                                    size: 15.0,
                                  ),
                                  options: FFButtonOptions(
                                    width: 300.0,
                                    height: 30.0,
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        0.0, 0.0, 110.0, 0.0),
                                    iconPadding: const EdgeInsetsDirectional.fromSTEB(
                                        0.0, 0.0, 0.0, 0.0),
                                    color: const Color(0x00FFFFFF),
                                    textStyle: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Inter',
                                          fontWeight: FontWeight.w500,
                                        ),
                                    elevation: 0.0,
                                    borderSide: const BorderSide(
                                      color: Color(0x00FFFFFF),
                                      width: 0.0,
                                    ),
                                    borderRadius: BorderRadius.circular(8.0),
                                    hoverTextColor: const Color(0xFF004080),
                                  ),
                                ),
                              ].divide(const SizedBox(height: 10.0)),
                            ),
                          ],
                        ),
                        SelectionArea(
                            child: Text(
                          '© i Technoz 2023',
                          style: FlutterFlowTheme.of(context).bodyMedium,
                        )),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
