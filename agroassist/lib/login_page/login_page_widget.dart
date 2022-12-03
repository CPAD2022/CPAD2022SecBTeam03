import '../auth/auth_util.dart';
import '../flutter_flow/flutter_flow_animations.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginPageWidget extends StatefulWidget {
  const LoginPageWidget({Key? key}) : super(key: key);

  @override
  _LoginPageWidgetState createState() => _LoginPageWidgetState();
}

class _LoginPageWidgetState extends State<LoginPageWidget>
    with TickerProviderStateMixin {
  final animationsMap = {
    'containerOnPageLoadAnimation': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 600.ms,
          begin: 0,
          end: 1,
        ),
      ],
    ),
  };
  TextEditingController? emailAddressController;
  TextEditingController? passwordCreateController;

  late bool passwordCreateVisibility;
  TextEditingController? passwordConfirmController;

  late bool passwordConfirmVisibility;
  TextEditingController? emailAddressLoginController;
  TextEditingController? passwordLoginController;

  late bool passwordLoginVisibility;
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();

    emailAddressController = TextEditingController();
    passwordCreateController = TextEditingController();
    passwordCreateVisibility = false;
    passwordConfirmController = TextEditingController();
    passwordConfirmVisibility = false;
    emailAddressLoginController = TextEditingController();
    passwordLoginController = TextEditingController();
    passwordLoginVisibility = false;
    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    emailAddressController?.dispose();
    passwordCreateController?.dispose();
    passwordConfirmController?.dispose();
    emailAddressLoginController?.dispose();
    passwordLoginController?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
      body: GestureDetector(
        onTap: () => FocusScope.of(context).unfocus(),
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height * 1,
                    constraints: BoxConstraints(
                      maxWidth: 600,
                    ),
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: Image.asset(
                          'assets/images/Motivational_Reminder_-_Mobile_Wallpaper_(1).png',
                        ).image,
                      ),
                    ),
                    child: Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 70, 0, 0),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(0, 0, 0, 24),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                if (Theme.of(context).brightness ==
                                    Brightness.dark)
                                  Image.asset(
                                    'assets/images/blank_img.png',
                                    width: 200,
                                    height: 130,
                                    fit: BoxFit.fitHeight,
                                  ),
                              ],
                            ),
                          ),
                          Expanded(
                            child: DefaultTabController(
                              length: 2,
                              initialIndex: 0,
                              child: Column(
                                children: [
                                  TabBar(
                                    isScrollable: true,
                                    labelColor: FlutterFlowTheme.of(context)
                                        .darkBackground,
                                    unselectedLabelColor:
                                        FlutterFlowTheme.of(context).textColor,
                                    labelPadding:
                                        EdgeInsetsDirectional.fromSTEB(
                                            24, 0, 24, 0),
                                    labelStyle:
                                        FlutterFlowTheme.of(context).subtitle2,
                                    indicatorColor: Color(0xFF477905),
                                    indicatorWeight: 3,
                                    tabs: [
                                      Tab(
                                        text: 'Login',
                                        iconMargin:
                                            EdgeInsetsDirectional.fromSTEB(
                                                200, 200, 200, 20),
                                      ),
                                      Tab(
                                        text: 'Register',
                                      ),
                                    ],
                                  ),
                                  Expanded(
                                    child: TabBarView(
                                      children: [
                                        Align(
                                          alignment:
                                              AlignmentDirectional(0, -0.35),
                                          child: Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    24, 0, 24, 0),
                                            child: SingleChildScrollView(
                                              child: Column(
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(
                                                                0, 20, 0, 0),
                                                    child: TextFormField(
                                                      controller:
                                                          emailAddressLoginController,
                                                      obscureText: false,
                                                      decoration:
                                                          InputDecoration(
                                                        labelText:
                                                            'Email Address',
                                                        labelStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyText2,
                                                        hintText:
                                                            'Enter your email...',
                                                        hintStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyText2,
                                                        enabledBorder:
                                                            OutlineInputBorder(
                                                          borderSide:
                                                              BorderSide(
                                                            color: Color(
                                                                0x00000000),
                                                            width: 1,
                                                          ),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(8),
                                                        ),
                                                        focusedBorder:
                                                            OutlineInputBorder(
                                                          borderSide:
                                                              BorderSide(
                                                            color: Color(
                                                                0x00000000),
                                                            width: 1,
                                                          ),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(8),
                                                        ),
                                                        errorBorder:
                                                            OutlineInputBorder(
                                                          borderSide:
                                                              BorderSide(
                                                            color: Color(
                                                                0x00000000),
                                                            width: 1,
                                                          ),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(8),
                                                        ),
                                                        focusedErrorBorder:
                                                            OutlineInputBorder(
                                                          borderSide:
                                                              BorderSide(
                                                            color: Color(
                                                                0x00000000),
                                                            width: 1,
                                                          ),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(8),
                                                        ),
                                                        filled: true,
                                                        fillColor:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primaryBackground,
                                                        contentPadding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(20,
                                                                    24, 20, 24),
                                                      ),
                                                      style:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyText1,
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(
                                                                0, 12, 0, 0),
                                                    child: TextFormField(
                                                      controller:
                                                          passwordLoginController,
                                                      obscureText:
                                                          !passwordLoginVisibility,
                                                      decoration:
                                                          InputDecoration(
                                                        labelText: 'Password',
                                                        labelStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyText2,
                                                        hintText:
                                                            'Enter your password...',
                                                        hintStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyText2,
                                                        enabledBorder:
                                                            OutlineInputBorder(
                                                          borderSide:
                                                              BorderSide(
                                                            color: Color(
                                                                0x00000000),
                                                            width: 1,
                                                          ),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(8),
                                                        ),
                                                        focusedBorder:
                                                            OutlineInputBorder(
                                                          borderSide:
                                                              BorderSide(
                                                            color: Color(
                                                                0x00000000),
                                                            width: 1,
                                                          ),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(8),
                                                        ),
                                                        errorBorder:
                                                            OutlineInputBorder(
                                                          borderSide:
                                                              BorderSide(
                                                            color: Color(
                                                                0x00000000),
                                                            width: 1,
                                                          ),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(8),
                                                        ),
                                                        focusedErrorBorder:
                                                            OutlineInputBorder(
                                                          borderSide:
                                                              BorderSide(
                                                            color: Color(
                                                                0x00000000),
                                                            width: 1,
                                                          ),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(8),
                                                        ),
                                                        filled: true,
                                                        fillColor:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primaryBackground,
                                                        contentPadding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(20,
                                                                    24, 20, 24),
                                                        suffixIcon: InkWell(
                                                          onTap: () => setState(
                                                            () => passwordLoginVisibility =
                                                                !passwordLoginVisibility,
                                                          ),
                                                          focusNode: FocusNode(
                                                              skipTraversal:
                                                                  true),
                                                          child: Icon(
                                                            passwordLoginVisibility
                                                                ? Icons
                                                                    .visibility_outlined
                                                                : Icons
                                                                    .visibility_off_outlined,
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .secondaryText,
                                                            size: 20,
                                                          ),
                                                        ),
                                                      ),
                                                      style:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyText1,
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(
                                                                0, 24, 0, 0),
                                                    child: FFButtonWidget(
                                                      onPressed: () async {
                                                        GoRouter.of(context)
                                                            .prepareAuthEvent();

                                                        final user =
                                                            await signInWithEmail(
                                                          context,
                                                          emailAddressLoginController!
                                                              .text,
                                                          passwordLoginController!
                                                              .text,
                                                        );
                                                        if (user == null) {
                                                          return;
                                                        }

                                                        context.goNamedAuth(
                                                            'homePage',
                                                            mounted);
                                                      },
                                                      text: 'Login',
                                                      options: FFButtonOptions(
                                                        width: 230,
                                                        height: 50,
                                                        color:
                                                            Color(0xFF4B844F),
                                                        textStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .subtitle2
                                                                .override(
                                                                  fontFamily:
                                                                      'Outfit',
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .textColor,
                                                                ),
                                                        elevation: 3,
                                                        borderSide: BorderSide(
                                                          color: Colors
                                                              .transparent,
                                                          width: 1,
                                                        ),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(40),
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ),
                                        Align(
                                          alignment:
                                              AlignmentDirectional(0, -0.2),
                                          child: Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    24, 0, 24, 0),
                                            child: SingleChildScrollView(
                                              child: Column(
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(
                                                                0, 20, 0, 0),
                                                    child: TextFormField(
                                                      controller:
                                                          emailAddressController,
                                                      obscureText: false,
                                                      decoration:
                                                          InputDecoration(
                                                        labelText:
                                                            'Email Address',
                                                        labelStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyText2,
                                                        hintText:
                                                            'Enter your email...',
                                                        hintStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyText2,
                                                        enabledBorder:
                                                            OutlineInputBorder(
                                                          borderSide:
                                                              BorderSide(
                                                            color: Color(
                                                                0x00000000),
                                                            width: 1,
                                                          ),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(8),
                                                        ),
                                                        focusedBorder:
                                                            OutlineInputBorder(
                                                          borderSide:
                                                              BorderSide(
                                                            color: Color(
                                                                0x00000000),
                                                            width: 1,
                                                          ),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(8),
                                                        ),
                                                        errorBorder:
                                                            OutlineInputBorder(
                                                          borderSide:
                                                              BorderSide(
                                                            color: Color(
                                                                0x00000000),
                                                            width: 1,
                                                          ),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(8),
                                                        ),
                                                        focusedErrorBorder:
                                                            OutlineInputBorder(
                                                          borderSide:
                                                              BorderSide(
                                                            color: Color(
                                                                0x00000000),
                                                            width: 1,
                                                          ),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(8),
                                                        ),
                                                        filled: true,
                                                        fillColor:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primaryBackground,
                                                        contentPadding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(20,
                                                                    24, 20, 24),
                                                      ),
                                                      style:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyText1,
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(
                                                                0, 12, 0, 0),
                                                    child: TextFormField(
                                                      controller:
                                                          passwordCreateController,
                                                      obscureText:
                                                          !passwordCreateVisibility,
                                                      decoration:
                                                          InputDecoration(
                                                        labelText: 'Password',
                                                        labelStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyText2,
                                                        hintText:
                                                            'Enter your password...',
                                                        hintStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyText2,
                                                        enabledBorder:
                                                            OutlineInputBorder(
                                                          borderSide:
                                                              BorderSide(
                                                            color: Color(
                                                                0x00000000),
                                                            width: 1,
                                                          ),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(8),
                                                        ),
                                                        focusedBorder:
                                                            OutlineInputBorder(
                                                          borderSide:
                                                              BorderSide(
                                                            color: Color(
                                                                0x00000000),
                                                            width: 1,
                                                          ),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(8),
                                                        ),
                                                        errorBorder:
                                                            OutlineInputBorder(
                                                          borderSide:
                                                              BorderSide(
                                                            color: Color(
                                                                0x00000000),
                                                            width: 1,
                                                          ),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(8),
                                                        ),
                                                        focusedErrorBorder:
                                                            OutlineInputBorder(
                                                          borderSide:
                                                              BorderSide(
                                                            color: Color(
                                                                0x00000000),
                                                            width: 1,
                                                          ),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(8),
                                                        ),
                                                        filled: true,
                                                        fillColor:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primaryBackground,
                                                        contentPadding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(20,
                                                                    24, 20, 24),
                                                        suffixIcon: InkWell(
                                                          onTap: () => setState(
                                                            () => passwordCreateVisibility =
                                                                !passwordCreateVisibility,
                                                          ),
                                                          focusNode: FocusNode(
                                                              skipTraversal:
                                                                  true),
                                                          child: Icon(
                                                            passwordCreateVisibility
                                                                ? Icons
                                                                    .visibility_outlined
                                                                : Icons
                                                                    .visibility_off_outlined,
                                                            color: Color(
                                                                0x98FFFFFF),
                                                            size: 20,
                                                          ),
                                                        ),
                                                      ),
                                                      style:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyText1,
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(
                                                                0, 12, 0, 0),
                                                    child: TextFormField(
                                                      controller:
                                                          passwordConfirmController,
                                                      obscureText:
                                                          !passwordConfirmVisibility,
                                                      decoration:
                                                          InputDecoration(
                                                        labelText:
                                                            'Confirm Password',
                                                        labelStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyText2,
                                                        hintText:
                                                            'Enter your password...',
                                                        hintStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyText2,
                                                        enabledBorder:
                                                            OutlineInputBorder(
                                                          borderSide:
                                                              BorderSide(
                                                            color: Color(
                                                                0x00000000),
                                                            width: 1,
                                                          ),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(8),
                                                        ),
                                                        focusedBorder:
                                                            OutlineInputBorder(
                                                          borderSide:
                                                              BorderSide(
                                                            color: Color(
                                                                0x00000000),
                                                            width: 1,
                                                          ),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(8),
                                                        ),
                                                        errorBorder:
                                                            OutlineInputBorder(
                                                          borderSide:
                                                              BorderSide(
                                                            color: Color(
                                                                0x00000000),
                                                            width: 1,
                                                          ),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(8),
                                                        ),
                                                        focusedErrorBorder:
                                                            OutlineInputBorder(
                                                          borderSide:
                                                              BorderSide(
                                                            color: Color(
                                                                0x00000000),
                                                            width: 1,
                                                          ),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(8),
                                                        ),
                                                        filled: true,
                                                        fillColor:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primaryBackground,
                                                        contentPadding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(20,
                                                                    24, 20, 24),
                                                        suffixIcon: InkWell(
                                                          onTap: () => setState(
                                                            () => passwordConfirmVisibility =
                                                                !passwordConfirmVisibility,
                                                          ),
                                                          focusNode: FocusNode(
                                                              skipTraversal:
                                                                  true),
                                                          child: Icon(
                                                            passwordConfirmVisibility
                                                                ? Icons
                                                                    .visibility_outlined
                                                                : Icons
                                                                    .visibility_off_outlined,
                                                            color: Color(
                                                                0x98FFFFFF),
                                                            size: 20,
                                                          ),
                                                        ),
                                                      ),
                                                      style:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyText1,
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(
                                                                0, 24, 0, 24),
                                                    child: FFButtonWidget(
                                                      onPressed: () async {
                                                        GoRouter.of(context)
                                                            .prepareAuthEvent();

                                                        final user =
                                                            await createAccountWithEmail(
                                                          context,
                                                          emailAddressController!
                                                              .text,
                                                          passwordCreateController!
                                                              .text,
                                                        );
                                                        if (user == null) {
                                                          return;
                                                        }

                                                        context.pushNamedAuth(
                                                            'completeProfile',
                                                            mounted);
                                                      },
                                                      text: 'Create Account',
                                                      options: FFButtonOptions(
                                                        width: 230,
                                                        height: 50,
                                                        color:
                                                            Color(0xFF4B844F),
                                                        textStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .subtitle2
                                                                .override(
                                                                  fontFamily:
                                                                      'Outfit',
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .textColor,
                                                                ),
                                                        elevation: 3,
                                                        borderSide: BorderSide(
                                                          color: Colors
                                                              .transparent,
                                                          width: 1,
                                                        ),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(40),
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ).animateOnPageLoad(
                      animationsMap['containerOnPageLoadAnimation']!),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
