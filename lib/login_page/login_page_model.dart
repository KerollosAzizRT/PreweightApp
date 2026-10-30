import '/backend/api_requests/api_calls.dart';
import '/components/rt_brand_header_widget.dart';
import '/components/rt_error_banner_widget.dart';
import '/components/rt_server_status_widget.dart';
import '/flutter_flow/ff_builtin_enums.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import '/backend/schema/structs/index.dart';
import '/custom_code/actions/index.dart' as actions;
import '/index.dart';
import 'login_page_widget.dart' show LoginPageWidget;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class LoginPageModel extends FlutterFlowModel<LoginPageWidget> {
  ///  Local state fields for this page.

  String? errorMessage = '';

  String? statusText = 'Checking server…';

  String? versionText = '';

  bool? isSigningIn = false;

  String? serverState = 'checking';

  String? deviceSecret = '';

  bool? deviceReady = false;

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Backend Call - API (ServerInfo)] action in LoginPage widget.
  ApiCallResponse? versionResult;
  // Stores action output result for [Custom Action - ReadDeviceSecret] action in LoginPage widget.
  String? storedSecret;
  // Model for RtBrandHeader.
  late RtBrandHeaderModel rtBrandHeaderModel;
  // Model for LoginErrorBanner.
  late RtErrorBannerModel loginErrorBannerModel;
  // State field(s) for deviceCodeField widget.
  FocusNode? deviceCodeFieldFocusNode;
  TextEditingController? deviceCodeFieldTextController;
  String? Function(BuildContext, String?)?
      deviceCodeFieldTextControllerValidator;
  // State field(s) for deviceSecretField widget.
  late FocusNode deviceSecretFieldPasswordVisibilityFocusNode;
  FocusNode? deviceSecretFieldFocusNode;
  TextEditingController? deviceSecretFieldTextController;
  late bool deviceSecretFieldVisibility;
  String? Function(BuildContext, String?)?
      deviceSecretFieldTextControllerValidator;
  // Stores action output result for [Custom Action - SaveDeviceSecret] action in saveDeviceButton widget.
  bool? savedSecret;
  // State field(s) for usernameField widget.
  FocusNode? usernameFieldFocusNode;
  TextEditingController? usernameFieldTextController;
  String? Function(BuildContext, String?)? usernameFieldTextControllerValidator;
  // State field(s) for passwordField widget.
  late FocusNode passwordFieldPasswordVisibilityFocusNode;
  FocusNode? passwordFieldFocusNode;
  TextEditingController? passwordFieldTextController;
  late bool passwordFieldVisibility;
  String? Function(BuildContext, String?)? passwordFieldTextControllerValidator;
  // Stores action output result for [Backend Call - API (SignIn)] action in signInButton widget.
  ApiCallResponse? loginResult;
  // Stores action output result for [Backend Call - API (MyProfile)] action in signInButton widget.
  ApiCallResponse? profileResult;
  // Stores action output result for [Custom Action - ClearDeviceSecret] action in changeDeviceButton widget.
  bool? clearedSecret;
  // Stores action output result for [Backend Call - API (ServerInfo)] action in ServerStatusTapTarget widget.
  ApiCallResponse? recheckResult;
  // Model for LoginServerStatus.
  late RtServerStatusModel loginServerStatusModel;

  @override
  void initState(BuildContext context) {
    rtBrandHeaderModel = createModel(context, () => RtBrandHeaderModel());
    loginErrorBannerModel = createModel(context, () => RtErrorBannerModel());
    deviceSecretFieldPasswordVisibilityFocusNode = FocusNode();
    deviceSecretFieldVisibility = false;
    passwordFieldPasswordVisibilityFocusNode = FocusNode();
    passwordFieldVisibility = false;
    loginServerStatusModel = createModel(context, () => RtServerStatusModel());
  }

  @override
  void dispose() {
    rtBrandHeaderModel.dispose();
    loginErrorBannerModel.dispose();
    deviceCodeFieldFocusNode?.dispose();
    deviceCodeFieldTextController?.dispose();

    deviceSecretFieldFocusNode?.dispose();
    deviceSecretFieldTextController?.dispose();
    deviceSecretFieldPasswordVisibilityFocusNode.dispose();
    usernameFieldFocusNode?.dispose();
    usernameFieldTextController?.dispose();

    passwordFieldFocusNode?.dispose();
    passwordFieldTextController?.dispose();
    passwordFieldPasswordVisibilityFocusNode.dispose();
    loginServerStatusModel.dispose();
  }
}
