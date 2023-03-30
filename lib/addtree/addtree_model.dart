import '/auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'package:provider/provider.dart';

class AddtreeModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  // State field(s) for Name widget.
  TextEditingController? nameController;
  String? Function(BuildContext, String?)? nameControllerValidator;
  // State field(s) for Organiser widget.
  TextEditingController? organiserController;
  String? Function(BuildContext, String?)? organiserControllerValidator;
  // State field(s) for Date widget.
  TextEditingController? dateController;
  String? Function(BuildContext, String?)? dateControllerValidator;
  // State field(s) for Time widget.
  TextEditingController? timeController;
  final timeMask = MaskTextInputFormatter(mask: '## AA');
  String? Function(BuildContext, String?)? timeControllerValidator;
  // State field(s) for Address widget.
  TextEditingController? addressController;
  String? Function(BuildContext, String?)? addressControllerValidator;
  // State field(s) for Description widget.
  TextEditingController? descriptionController;
  String? Function(BuildContext, String?)? descriptionControllerValidator;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    nameController?.dispose();
    organiserController?.dispose();
    dateController?.dispose();
    timeController?.dispose();
    addressController?.dispose();
    descriptionController?.dispose();
  }

  /// Additional helper methods are added here.

}
