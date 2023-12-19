import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'signup_widget.dart' show SignupWidget;
import 'package:flutter/material.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class SignupModel extends FlutterFlowModel<SignupWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for Username widget.
  FocusNode? usernameFocusNode;
  TextEditingController? usernameController;
  String? Function(BuildContext, String?)? usernameControllerValidator;
  // State field(s) for Mobile_number01 widget.
  FocusNode? mobileNumber01FocusNode;
  TextEditingController? mobileNumber01Controller;
  String? Function(BuildContext, String?)? mobileNumber01ControllerValidator;
  // State field(s) for email01 widget.
  FocusNode? email01FocusNode;
  TextEditingController? email01Controller;
  String? Function(BuildContext, String?)? email01ControllerValidator;
  // State field(s) for password01 widget.
  FocusNode? password01FocusNode;
  TextEditingController? password01Controller;
  final password01Mask = MaskTextInputFormatter(mask: '........');
  String? Function(BuildContext, String?)? password01ControllerValidator;
  // State field(s) for confirm_password01 widget.
  FocusNode? confirmPassword01FocusNode;
  TextEditingController? confirmPassword01Controller;
  final confirmPassword01Mask = MaskTextInputFormatter(mask: '........');
  String? Function(BuildContext, String?)? confirmPassword01ControllerValidator;
  // State field(s) for University01 widget.
  String? university01Value;
  FormFieldController<String>? university01ValueController;
  // State field(s) for Department01 widget.
  String? department01Value;
  FormFieldController<String>? department01ValueController;
  // State field(s) for Gender01 widget.
  String? gender01Value;
  FormFieldController<String>? gender01ValueController;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    usernameFocusNode?.dispose();
    usernameController?.dispose();

    mobileNumber01FocusNode?.dispose();
    mobileNumber01Controller?.dispose();

    email01FocusNode?.dispose();
    email01Controller?.dispose();

    password01FocusNode?.dispose();
    password01Controller?.dispose();

    confirmPassword01FocusNode?.dispose();
    confirmPassword01Controller?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
