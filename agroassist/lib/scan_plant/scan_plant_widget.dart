import '../auth/auth_util.dart';
import '../backend/api_requests/api_calls.dart';
import '../backend/backend.dart';
import '../backend/firebase_storage/storage.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import '../flutter_flow/upload_media.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';

class ScanPlantWidget extends StatefulWidget {
  const ScanPlantWidget({Key? key}) : super(key: key);

  @override
  _ScanPlantWidgetState createState() => _ScanPlantWidgetState();
}

class _ScanPlantWidgetState extends State<ScanPlantWidget> {
  bool isMediaUploading = false;
  String uploadedFileUrl = '';

  ApiCallResponse? apiResultzib;
  ImagesRecord? uploadedImage;
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
      backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
      appBar: AppBar(
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        automaticallyImplyLeading: false,
        title: Text(
          'Test your plant',
          style: FlutterFlowTheme.of(context).title1,
        ),
        actions: [],
        centerTitle: false,
        elevation: 0,
      ),
      body: SafeArea(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Align(
              alignment: AlignmentDirectional(0, 0),
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 100, 0, 0),
                child: Container(
                  width: 250,
                  height: 250,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).secondaryBackground,
                  ),
                  child: InkWell(
                    onTap: () async {
                      final selectedMedia =
                          await selectMediaWithSourceBottomSheet(
                        context: context,
                        allowPhoto: true,
                        backgroundColor: FlutterFlowTheme.of(context).textColor,
                        textColor: Colors.black,
                      );
                      if (selectedMedia != null &&
                          selectedMedia.every((m) =>
                              validateFileFormat(m.storagePath, context))) {
                        setState(() => isMediaUploading = true);
                        var downloadUrls = <String>[];
                        try {
                          showUploadMessage(
                            context,
                            'Uploading file...',
                            showLoading: true,
                          );
                          downloadUrls = (await Future.wait(
                            selectedMedia.map(
                              (m) async =>
                                  await uploadData(m.storagePath, m.bytes),
                            ),
                          ))
                              .where((u) => u != null)
                              .map((u) => u!)
                              .toList();
                        } finally {
                          ScaffoldMessenger.of(context).hideCurrentSnackBar();
                          isMediaUploading = false;
                        }
                        if (downloadUrls.length == selectedMedia.length) {
                          setState(() => uploadedFileUrl = downloadUrls.first);
                          showUploadMessage(context, 'Success!');
                        } else {
                          setState(() {});
                          showUploadMessage(context, 'Failed to upload media');
                          return;
                        }
                      }
                    },
                    child: Image.network(
                      valueOrDefault<String>(
                        uploadedFileUrl,
                        'https://firebasestorage.googleapis.com/v0/b/agroassist-cc17f.appspot.com/o/A_black_image.jpg?alt=media&token=868cbf7f-c504-45c8-aa18-bd3ef9418f1c',
                      ),
                      width: 100,
                      height: 100,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0, 50, 0, 0),
              child: FFButtonWidget(
                onPressed: () async {
                  apiResultzib = await PredictCall.call(
                    abc: uploadedFileUrl,
                  );

                  final imagesCreateData = createImagesRecordData(
                    img: uploadedFileUrl,
                  );
                  var imagesRecordReference = ImagesRecord.collection.doc();
                  await imagesRecordReference.set(imagesCreateData);
                  uploadedImage = ImagesRecord.getDocumentFromData(
                      imagesCreateData, imagesRecordReference);

                  setState(() {});
                },
                text: 'Predict',
                options: FFButtonOptions(
                  width: 130,
                  height: 40,
                  color: FlutterFlowTheme.of(context).primaryColor,
                  textStyle: FlutterFlowTheme.of(context).subtitle2.override(
                        fontFamily: 'Outfit',
                        color: Colors.white,
                      ),
                  borderSide: BorderSide(
                    color: Colors.transparent,
                    width: 1,
                  ),
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
