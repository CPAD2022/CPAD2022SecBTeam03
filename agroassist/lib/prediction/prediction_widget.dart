import '../flutter_flow/flutter_flow_animations.dart';
import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';

class PredictionWidget extends StatefulWidget {
  const PredictionWidget({
    Key? key,
    this.predction,
  }) : super(key: key);

  final dynamic predction;

  @override
  _PredictionWidgetState createState() => _PredictionWidgetState();
}

class _PredictionWidgetState extends State<PredictionWidget>
    with TickerProviderStateMixin {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: Color(0xFF78937A),
      body: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(24, 4, 24, 0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    onTap: () async {
                      context.pop();
                    },
                    child: Icon(
                      Icons.arrow_back_outlined,
                      color: Colors.black,
                      size: 30,
                    ),
                  ),
                  Align(
                    alignment: AlignmentDirectional(-0.1, -0.05),
                    child: Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(40, 50, 0, 0),
                      child: Text(
                        'agro assist',
                        textAlign: TextAlign.center,
                        style: FlutterFlowTheme.of(context).title1.override(
                              fontFamily: 'Bodoni Moda',
                              fontSize: 50,
                            ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 40, 0, 0),
                  child: AutoSizeText(
                    getJsonField(
                      widget.predction,
                      r'''$.Disease''',
                    ).toString(),
                    textAlign: TextAlign.center,
                    style: GoogleFonts.getFont(
                      'Lexend Deca',
                      color: FlutterFlowTheme.of(context).primaryText,
                      fontWeight: FontWeight.w200,
                      fontSize: 25,
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 12),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Align(
                    alignment: AlignmentDirectional(0, -0.35),
                    child: AutoSizeText(
                      'Crop',
                      textAlign: TextAlign.center,
                      style: FlutterFlowTheme.of(context).bodyText2.override(
                            fontFamily: 'Outfit',
                            fontSize: 20,
                            fontWeight: FontWeight.w600,
                          ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 12),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  AutoSizeText(
                    getJsonField(
                      widget.predction,
                      r'''$.Crop''',
                    ).toString(),
                    textAlign: TextAlign.center,
                    style: FlutterFlowTheme.of(context).subtitle2.override(
                          fontFamily: 'Outfit',
                          color: FlutterFlowTheme.of(context).darkBackground,
                        ),
                  ),
                ],
              ),
            ),
            Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                  child: Container(
                    width: double.infinity,
                    height: 50,
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).secondaryBackground,
                    ),
                  ),
                ),
                Container(
                  width: double.infinity,
                  height: 600,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).secondaryBackground,
                  ),
                  child: Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Text(
                          'Cause',
                          style:
                              FlutterFlowTheme.of(context).bodyText1.override(
                                    fontFamily: 'Outfit',
                                    fontSize: 20,
                                    fontWeight: FontWeight.w600,
                                  ),
                        ),
                        Text(
                          getJsonField(
                            widget.predction,
                            r'''$.Cause''',
                          ).toString(),
                          style: FlutterFlowTheme.of(context).bodyText1,
                        ),
                        Text(
                          'Prevention',
                          textAlign: TextAlign.center,
                          style:
                              FlutterFlowTheme.of(context).bodyText1.override(
                                    fontFamily: 'Outfit',
                                    fontSize: 20,
                                    fontWeight: FontWeight.w600,
                                  ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                          child: Text(
                            getJsonField(
                              widget.predction,
                              r'''$.Prevention''',
                            ).toString(),
                            textAlign: TextAlign.center,
                            style: FlutterFlowTheme.of(context).bodyText1,
                          ),
                        ),
                        Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Container(
                              width: 10,
                              height: 10,
                              decoration: BoxDecoration(
                                color: FlutterFlowTheme.of(context)
                                    .secondaryBackground,
                              ),
                              child: Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                                child: FlutterFlowIconButton(
                                  borderColor: Colors.transparent,
                                  borderRadius: 70,
                                  borderWidth: 1,
                                  buttonSize: 60,
                                  icon: Icon(
                                    Icons.arrow_back_outlined,
                                    color: Color(0xFF215725),
                                    size: 30,
                                  ),
                                  onPressed: () async {
                                    context.pop();
                                  },
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
