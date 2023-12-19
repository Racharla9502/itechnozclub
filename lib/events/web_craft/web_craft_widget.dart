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
import 'web_craft_model.dart';
export 'web_craft_model.dart';

class WebCraftWidget extends StatefulWidget {
  const WebCraftWidget({super.key});

  @override
  _WebCraftWidgetState createState() => _WebCraftWidgetState();
}

class _WebCraftWidgetState extends State<WebCraftWidget>
    with TickerProviderStateMixin {
  late WebCraftModel _model;

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
    _model = createModel(context, () => WebCraftModel());

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
                  height: 450.0,
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
                        tag: 'WebCraft',
                        transitionOnUserGestures: true,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(8.0),
                          child: Image.network(
                            'https://firebasestorage.googleapis.com/v0/b/i-technoz-c74wpl.appspot.com/o/Events%2F02.jpg?alt=media&token=03433bf5-15d4-4a44-87e1-4746ced6e5c2',
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
                                        'Web Craft',
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
                              'About the event:',
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
                              'The i Technoz Club, in its continued commitment to fostering technological learning and creativity, successfully organized the WebCraft Workshop and Competition on April 28th and 29th, 2023. This event was a remarkable two-day journey into the world of front-end web development, offering participants the chance to learn, create, and compete.',
                              style: FlutterFlowTheme.of(context)
                                  .labelLarge
                                  .override(
                                    fontFamily: 'Inter',
                                    color: FlutterFlowTheme.of(context)
                                        .primaryText,
                                    fontSize: 20.0,
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
                                            '➡️\tDay 1: Workshop - Building the Foundations',
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
                                              'The workshop held on the first day was a deep dive into the fundamentals of HTML and CSS. It offered participants a hands-on experience, equipping them with the essential building blocks of web development.\n\no\tInteractive Learning: The workshop, conducted from 1:00 PM to 4:00 PM, engaged \t\tparticipants in interactive learning sessions, where they learned the basics of HTML and CSS through \tpractical exercises.\n\no\tPortfolio Website Demonstration: The event also featured a portfolio website demonstration, \tproviding valuable insights into designing and creating a personal digital presence.\n\no\tLaptop-Ready: Participants were encouraged to bring their fully charged laptops, ensuring a \tseamless learning experience.',
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
                                            '➡️\tDay 2: Competition - Crafting Web Solutions',
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
                                              'The second day saw participants applying their newfound knowledge in the WebCraft Competition, where they were challenged to build static websites or dynamic web solutions.\n\nHere are the competition highlights:\n\n•\tProblem-Solving: Participants were presented with a problem statement and given the freedom to choose between creating a static frontend or a dynamic frontend+backend solution. This encouraged creative problem-solving and innovation.\n\n•\tCollaborative Endeavors: Teams, consisting of 1-4 members, registered individually, and collaborated to bring their web solutions to life.\n\n•\tCertificates of Appreciation: Post lunch, certificates of appreciation were awarded to all participants, recognizing their dedication and participation.\n\n•\tCertificates of Achievement: Special certificates of achievement were presented to those who attended the competition, acknowledging their commitment to learning and innovation.',
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
                Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: 1100.0,
                      height: 700.0,
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
                              height: 600.0,
                              decoration: const BoxDecoration(),
                              child: MasonryGridView.builder(
                                gridDelegate:
                                    const SliverSimpleGridDelegateWithFixedCrossAxisCount(
                                  crossAxisCount: 3,
                                ),
                                crossAxisSpacing: 10.0,
                                mainAxisSpacing: 10.0,
                                itemCount: 6,
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
                                                    'https://firebasestorage.googleapis.com/v0/b/itechnozclub-881fc.appspot.com/o/i-technoz%2FEvents%2F02_Web_craft%2F01.JPG?alt=media&token=b92f9ce2-d311-4a0c-b9a4-629cee9794f3',
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
                                                'https://firebasestorage.googleapis.com/v0/b/itechnozclub-881fc.appspot.com/o/i-technoz%2FEvents%2F02_Web_craft%2F01.JPG?alt=media&token=b92f9ce2-d311-4a0c-b9a4-629cee9794f3',
                                                width: 300.0,
                                                height: 300.0,
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
                                                    'https://firebasestorage.googleapis.com/v0/b/itechnozclub-881fc.appspot.com/o/i-technoz%2FEvents%2F02_Web_craft%2F05.JPG?alt=media&token=f60b6a1e-71d0-4258-aea9-16effea9639d',
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
                                                'https://firebasestorage.googleapis.com/v0/b/itechnozclub-881fc.appspot.com/o/i-technoz%2FEvents%2F02_Web_craft%2F05.JPG?alt=media&token=f60b6a1e-71d0-4258-aea9-16effea9639d',
                                                width: 300.0,
                                                height: 200.0,
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
                                                    'https://firebasestorage.googleapis.com/v0/b/itechnozclub-881fc.appspot.com/o/i-technoz%2FEvents%2F02_Web_craft%2F04.JPG?alt=media&token=a1fbc709-5e72-4611-a6e0-6b2aa8edb5ff',
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
                                                'https://firebasestorage.googleapis.com/v0/b/itechnozclub-881fc.appspot.com/o/i-technoz%2FEvents%2F02_Web_craft%2F04.JPG?alt=media&token=a1fbc709-5e72-4611-a6e0-6b2aa8edb5ff',
                                                width: 300.0,
                                                height: 600.0,
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
                                                    'https://firebasestorage.googleapis.com/v0/b/itechnozclub-881fc.appspot.com/o/i-technoz%2FEvents%2F02_Web_craft%2F06.JPG?alt=media&token=2953f324-58d1-4c9a-b02a-443f236245a5',
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
                                                'https://firebasestorage.googleapis.com/v0/b/itechnozclub-881fc.appspot.com/o/i-technoz%2FEvents%2F02_Web_craft%2F06.JPG?alt=media&token=2953f324-58d1-4c9a-b02a-443f236245a5',
                                                width: 300.0,
                                                height: 200.0,
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
                                                    'https://firebasestorage.googleapis.com/v0/b/itechnozclub-881fc.appspot.com/o/i-technoz%2FEvents%2F02_Web_craft%2F02.jpg?alt=media&token=7424a3a1-3563-4ea3-8a8c-ab68fd90bf99',
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
                                                'https://firebasestorage.googleapis.com/v0/b/itechnozclub-881fc.appspot.com/o/i-technoz%2FEvents%2F02_Web_craft%2F02.jpg?alt=media&token=7424a3a1-3563-4ea3-8a8c-ab68fd90bf99',
                                                width: 300.0,
                                                height: 280.0,
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
                                                    'https://firebasestorage.googleapis.com/v0/b/itechnozclub-881fc.appspot.com/o/i-technoz%2FEvents%2F02_Web_craft%2F07.JPG?alt=media&token=f853ca6f-187b-41a8-937e-3a105afdeb01',
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
                                                'https://firebasestorage.googleapis.com/v0/b/itechnozclub-881fc.appspot.com/o/i-technoz%2FEvents%2F02_Web_craft%2F07.JPG?alt=media&token=f853ca6f-187b-41a8-937e-3a105afdeb01',
                                                width: 300.0,
                                                height: 170.0,
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
                                'The WebCraft Workshop and Competition were a resounding success, thanks to the enthusiastic participation of tech-savvy students and the dedication of the i Technoz Club.\n\nThe event not only provided valuable learning experiences but also celebrated the spirit of creativity and problem-solving within the realm of web development.\n\nThe i Technoz Club continues to inspire and empower students to explore the ever-evolving world of technology. As the WebCraft event ended, participants left with enriched knowledge, new connections, and a sense of accomplishment, ready to embark on new technological endeavors.',
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
