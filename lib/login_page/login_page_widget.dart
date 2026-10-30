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
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'login_page_model.dart';
export 'login_page_model.dart';

/// Named-user sign-in for the handheld.
///
/// Checks server reachability on load.
class LoginPageWidget extends StatefulWidget {
  const LoginPageWidget({super.key});

  static String routeName = 'LoginPage';
  static String routePath = '/login';

  @override
  State<LoginPageWidget> createState() => _LoginPageWidgetState();
}

class _LoginPageWidgetState extends State<LoginPageWidget> {
  late LoginPageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => LoginPageModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      _model.versionResult = await RtApiGroup.serverInfoCall.call();

      if ((_model.versionResult?.succeeded ?? true)) {
        _model.statusText = 'Server online';
        safeSetState(() {});
        _model.versionText = ServerVersionStruct.maybeFromMap(
                (_model.versionResult?.jsonBody ?? ''))
            ?.version;
        safeSetState(() {});
        _model.storedSecret = await actions.readDeviceSecret();
        _model.deviceSecret = _model.storedSecret;
        safeSetState(() {});
        _model.deviceReady = _model.storedSecret == ''
            ? false
            : (FFAppState().deviceCode == '' ? false : true);
        safeSetState(() {});
      } else {
        _model.statusText =
            'Can\'t reach the server. Check Wi-Fi, then tap to retry.';
        safeSetState(() {});
      }
    });

    _model.deviceCodeFieldTextController ??= TextEditingController();
    _model.deviceCodeFieldFocusNode ??= FocusNode();

    _model.deviceSecretFieldTextController ??= TextEditingController();
    _model.deviceSecretFieldFocusNode ??= FocusNode();

    _model.usernameFieldTextController ??= TextEditingController();
    _model.usernameFieldFocusNode ??= FocusNode();

    _model.passwordFieldTextController ??= TextEditingController();
    _model.passwordFieldFocusNode ??= FocusNode();
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        body: SafeArea(
          top: true,
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: (FFMainAxisAlignment.start).flutterValue,
              crossAxisAlignment: (FFCrossAxisAlignment.stretch).flutterValue,
              textBaseline: TextBaseline.alphabetic,
              children: [
                wrapWithModel(
                  model: _model.rtBrandHeaderModel,
                  updateCallback: () => safeSetState(() {}),
                  child: RtBrandHeaderWidget(
                    subtitle: 'Raw-material pre-weigh traceability',
                    title: 'RT PreWeigh',
                  ),
                ),
                Container(
                  child: Padding(
                    padding: EdgeInsets.all(20.0),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment:
                          (FFMainAxisAlignment.start).flutterValue,
                      crossAxisAlignment:
                          (FFCrossAxisAlignment.stretch).flutterValue,
                      textBaseline: TextBaseline.alphabetic,
                      children: [
                        if (!(_model.errorMessage == ''))
                          Container(
                            child: wrapWithModel(
                              model: _model.loginErrorBannerModel,
                              updateCallback: () => safeSetState(() {}),
                              child: RtErrorBannerWidget(
                                message: _model.errorMessage,
                              ),
                            ),
                          ),
                        if (!_model.deviceReady!)
                          Container(
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                              borderRadius: BorderRadius.circular(12.0),
                              border: Border.all(
                                color: FlutterFlowTheme.of(context).alternate,
                                width: 1.0,
                              ),
                            ),
                            child: Padding(
                              padding: EdgeInsets.all(20.0),
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment:
                                    (FFMainAxisAlignment.start).flutterValue,
                                crossAxisAlignment:
                                    (FFCrossAxisAlignment.stretch).flutterValue,
                                textBaseline: TextBaseline.alphabetic,
                                children: [
                                  Text(
                                    'Register this handheld',
                                    style: FlutterFlowTheme.of(context)
                                        .titleLarge
                                        .override(
                                          font: GoogleFonts.inter(
                                            fontWeight:
                                                FlutterFlowTheme.of(context)
                                                    .titleLarge
                                                    .fontWeight,
                                            fontStyle:
                                                FlutterFlowTheme.of(context)
                                                    .titleLarge
                                                    .fontStyle,
                                          ),
                                          letterSpacing: 0.0,
                                          fontWeight:
                                              FlutterFlowTheme.of(context)
                                                  .titleLarge
                                                  .fontWeight,
                                          fontStyle:
                                              FlutterFlowTheme.of(context)
                                                  .titleLarge
                                                  .fontStyle,
                                        ),
                                  ),
                                  Text(
                                    'Enter the handheld ID and password from the Handhelds page on the website. You do this once on each handheld.',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          font: GoogleFonts.inter(
                                            fontWeight:
                                                FlutterFlowTheme.of(context)
                                                    .bodyMedium
                                                    .fontWeight,
                                            fontStyle:
                                                FlutterFlowTheme.of(context)
                                                    .bodyMedium
                                                    .fontStyle,
                                          ),
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryText,
                                          letterSpacing: 0.0,
                                          fontWeight:
                                              FlutterFlowTheme.of(context)
                                                  .bodyMedium
                                                  .fontWeight,
                                          fontStyle:
                                              FlutterFlowTheme.of(context)
                                                  .bodyMedium
                                                  .fontStyle,
                                        ),
                                  ),
                                  TextFormField(
                                    controller:
                                        _model.deviceCodeFieldTextController,
                                    focusNode: _model.deviceCodeFieldFocusNode,
                                    obscureText: false,
                                    decoration: InputDecoration(
                                      labelText: 'Handheld ID',
                                      hintText: 'e.g. HH-01',
                                      enabledBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: Color(0x00000000),
                                          width: 1.0,
                                        ),
                                        borderRadius: const BorderRadius.only(
                                          topLeft: Radius.circular(4.0),
                                          topRight: Radius.circular(4.0),
                                        ),
                                      ),
                                      focusedBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: Color(0x00000000),
                                          width: 1.0,
                                        ),
                                        borderRadius: const BorderRadius.only(
                                          topLeft: Radius.circular(4.0),
                                          topRight: Radius.circular(4.0),
                                        ),
                                      ),
                                      errorBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: Color(0x00000000),
                                          width: 1.0,
                                        ),
                                        borderRadius: const BorderRadius.only(
                                          topLeft: Radius.circular(4.0),
                                          topRight: Radius.circular(4.0),
                                        ),
                                      ),
                                      focusedErrorBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: Color(0x00000000),
                                          width: 1.0,
                                        ),
                                        borderRadius: const BorderRadius.only(
                                          topLeft: Radius.circular(4.0),
                                          topRight: Radius.circular(4.0),
                                        ),
                                      ),
                                      filled: true,
                                      prefixIcon: Icon(
                                        Icons.smartphone,
                                      ),
                                    ),
                                    style: TextStyle(),
                                    validator: _model
                                        .deviceCodeFieldTextControllerValidator
                                        .asValidator(context),
                                  ),
                                  TextFormField(
                                    controller:
                                        _model.deviceSecretFieldTextController,
                                    focusNode:
                                        _model.deviceSecretFieldFocusNode,
                                    obscureText:
                                        !_model.deviceSecretFieldVisibility,
                                    decoration: InputDecoration(
                                      labelText: 'Handheld password',
                                      enabledBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: Color(0x00000000),
                                          width: 1.0,
                                        ),
                                        borderRadius: const BorderRadius.only(
                                          topLeft: Radius.circular(4.0),
                                          topRight: Radius.circular(4.0),
                                        ),
                                      ),
                                      focusedBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: Color(0x00000000),
                                          width: 1.0,
                                        ),
                                        borderRadius: const BorderRadius.only(
                                          topLeft: Radius.circular(4.0),
                                          topRight: Radius.circular(4.0),
                                        ),
                                      ),
                                      errorBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: Color(0x00000000),
                                          width: 1.0,
                                        ),
                                        borderRadius: const BorderRadius.only(
                                          topLeft: Radius.circular(4.0),
                                          topRight: Radius.circular(4.0),
                                        ),
                                      ),
                                      focusedErrorBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: Color(0x00000000),
                                          width: 1.0,
                                        ),
                                        borderRadius: const BorderRadius.only(
                                          topLeft: Radius.circular(4.0),
                                          topRight: Radius.circular(4.0),
                                        ),
                                      ),
                                      filled: true,
                                      prefixIcon: Icon(
                                        Icons.key,
                                      ),
                                      suffixIcon: InkWell(
                                        onTap: () async {
                                          safeSetState(() => _model
                                                  .deviceSecretFieldVisibility =
                                              !_model
                                                  .deviceSecretFieldVisibility);
                                        },
                                        focusNode: _model
                                            .deviceSecretFieldPasswordVisibilityFocusNode
                                          ..skipTraversal = !(false),
                                        child: Icon(
                                          _model.deviceSecretFieldVisibility
                                              ? Icons.visibility_outlined
                                              : Icons.visibility_off_outlined,
                                          size: 22,
                                        ),
                                      ),
                                    ),
                                    style: TextStyle(),
                                    validator: _model
                                        .deviceSecretFieldTextControllerValidator
                                        .asValidator(context),
                                  ),
                                  FFButtonWidget(
                                    onPressed: () async {
                                      if (_model.deviceCodeFieldTextController
                                                  .text ==
                                              null ||
                                          _model.deviceCodeFieldTextController
                                                  .text ==
                                              '') {
                                        _model.errorMessage =
                                            'Enter the handheld ID.';
                                        safeSetState(() {});
                                      } else {
                                        if (_model.deviceSecretFieldTextController
                                                    .text ==
                                                null ||
                                            _model.deviceSecretFieldTextController
                                                    .text ==
                                                '') {
                                          _model.errorMessage =
                                              'Enter the handheld password.';
                                          safeSetState(() {});
                                        } else {
                                          _model.savedSecret =
                                              await actions.saveDeviceSecret(
                                            _model
                                                .deviceSecretFieldTextController
                                                .text,
                                          );
                                          FFAppState().deviceCode = _model
                                              .deviceCodeFieldTextController
                                              .text;
                                          safeSetState(() {});
                                          _model.deviceSecret = _model
                                              .deviceSecretFieldTextController
                                              .text;
                                          safeSetState(() {});
                                          _model.errorMessage = '';
                                          safeSetState(() {});
                                          _model.deviceReady = true;
                                          safeSetState(() {});
                                        }
                                      }

                                      safeSetState(() {});
                                    },
                                    text: 'Save handheld',
                                    icon: Icon(
                                      Icons.save,
                                      size: 20.0,
                                    ),
                                    options: FFButtonOptions(
                                      height: 56.0,
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 0.0, 0.0, 0.0),
                                      iconPadding:
                                          EdgeInsetsDirectional.fromSTEB(
                                              0.0, 0.0, 0.0, 0.0),
                                      iconColor: Colors.white,
                                      color:
                                          FlutterFlowTheme.of(context).primary,
                                      textStyle: TextStyle(
                                        color: Colors.white,
                                      ),
                                      borderRadius: BorderRadius.circular(8.0),
                                    ),
                                  ),
                                ].divide(SizedBox(height: 16.0)),
                              ),
                            ),
                          ),
                        if (_model.deviceReady ?? true)
                          Container(
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                              borderRadius: BorderRadius.circular(12.0),
                              border: Border.all(
                                color: FlutterFlowTheme.of(context).alternate,
                                width: 1.0,
                              ),
                            ),
                            child: Padding(
                              padding: EdgeInsets.all(20.0),
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment:
                                    (FFMainAxisAlignment.start).flutterValue,
                                crossAxisAlignment:
                                    (FFCrossAxisAlignment.stretch).flutterValue,
                                textBaseline: TextBaseline.alphabetic,
                                children: [
                                  Text(
                                    'Sign In',
                                    style: FlutterFlowTheme.of(context)
                                        .titleLarge
                                        .override(
                                          font: GoogleFonts.inter(
                                            fontWeight:
                                                FlutterFlowTheme.of(context)
                                                    .titleLarge
                                                    .fontWeight,
                                            fontStyle:
                                                FlutterFlowTheme.of(context)
                                                    .titleLarge
                                                    .fontStyle,
                                          ),
                                          letterSpacing: 0.0,
                                          fontWeight:
                                              FlutterFlowTheme.of(context)
                                                  .titleLarge
                                                  .fontWeight,
                                          fontStyle:
                                              FlutterFlowTheme.of(context)
                                                  .titleLarge
                                                  .fontStyle,
                                        ),
                                  ),
                                  Text(
                                    'Use the account your supervisor set up for you.',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          font: GoogleFonts.inter(
                                            fontWeight:
                                                FlutterFlowTheme.of(context)
                                                    .bodyMedium
                                                    .fontWeight,
                                            fontStyle:
                                                FlutterFlowTheme.of(context)
                                                    .bodyMedium
                                                    .fontStyle,
                                          ),
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryText,
                                          letterSpacing: 0.0,
                                          fontWeight:
                                              FlutterFlowTheme.of(context)
                                                  .bodyMedium
                                                  .fontWeight,
                                          fontStyle:
                                              FlutterFlowTheme.of(context)
                                                  .bodyMedium
                                                  .fontStyle,
                                        ),
                                  ),
                                  TextFormField(
                                    controller:
                                        _model.usernameFieldTextController,
                                    focusNode: _model.usernameFieldFocusNode,
                                    obscureText: false,
                                    decoration: InputDecoration(
                                      labelText: 'Username',
                                      enabledBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: Color(0x00000000),
                                          width: 1.0,
                                        ),
                                        borderRadius: const BorderRadius.only(
                                          topLeft: Radius.circular(4.0),
                                          topRight: Radius.circular(4.0),
                                        ),
                                      ),
                                      focusedBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: Color(0x00000000),
                                          width: 1.0,
                                        ),
                                        borderRadius: const BorderRadius.only(
                                          topLeft: Radius.circular(4.0),
                                          topRight: Radius.circular(4.0),
                                        ),
                                      ),
                                      errorBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: Color(0x00000000),
                                          width: 1.0,
                                        ),
                                        borderRadius: const BorderRadius.only(
                                          topLeft: Radius.circular(4.0),
                                          topRight: Radius.circular(4.0),
                                        ),
                                      ),
                                      focusedErrorBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: Color(0x00000000),
                                          width: 1.0,
                                        ),
                                        borderRadius: const BorderRadius.only(
                                          topLeft: Radius.circular(4.0),
                                          topRight: Radius.circular(4.0),
                                        ),
                                      ),
                                      filled: true,
                                      prefixIcon: Icon(
                                        Icons.person_outline,
                                      ),
                                    ),
                                    style: TextStyle(),
                                    validator: _model
                                        .usernameFieldTextControllerValidator
                                        .asValidator(context),
                                  ),
                                  TextFormField(
                                    controller:
                                        _model.passwordFieldTextController,
                                    focusNode: _model.passwordFieldFocusNode,
                                    obscureText:
                                        !_model.passwordFieldVisibility,
                                    decoration: InputDecoration(
                                      labelText: 'Password',
                                      enabledBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: Color(0x00000000),
                                          width: 1.0,
                                        ),
                                        borderRadius: const BorderRadius.only(
                                          topLeft: Radius.circular(4.0),
                                          topRight: Radius.circular(4.0),
                                        ),
                                      ),
                                      focusedBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: Color(0x00000000),
                                          width: 1.0,
                                        ),
                                        borderRadius: const BorderRadius.only(
                                          topLeft: Radius.circular(4.0),
                                          topRight: Radius.circular(4.0),
                                        ),
                                      ),
                                      errorBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: Color(0x00000000),
                                          width: 1.0,
                                        ),
                                        borderRadius: const BorderRadius.only(
                                          topLeft: Radius.circular(4.0),
                                          topRight: Radius.circular(4.0),
                                        ),
                                      ),
                                      focusedErrorBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: Color(0x00000000),
                                          width: 1.0,
                                        ),
                                        borderRadius: const BorderRadius.only(
                                          topLeft: Radius.circular(4.0),
                                          topRight: Radius.circular(4.0),
                                        ),
                                      ),
                                      filled: true,
                                      prefixIcon: Icon(
                                        Icons.lock_outline,
                                      ),
                                      suffixIcon: InkWell(
                                        onTap: () async {
                                          safeSetState(() => _model
                                                  .passwordFieldVisibility =
                                              !_model.passwordFieldVisibility);
                                        },
                                        focusNode: _model
                                            .passwordFieldPasswordVisibilityFocusNode
                                          ..skipTraversal = !(false),
                                        child: Icon(
                                          _model.passwordFieldVisibility
                                              ? Icons.visibility_outlined
                                              : Icons.visibility_off_outlined,
                                          size: 22,
                                        ),
                                      ),
                                    ),
                                    style: TextStyle(),
                                    validator: _model
                                        .passwordFieldTextControllerValidator
                                        .asValidator(context),
                                  ),
                                  FFButtonWidget(
                                    onPressed: _model.isSigningIn!
                                        ? null
                                        : () async {
                                            if (_model.usernameFieldTextController
                                                        .text ==
                                                    null ||
                                                _model.usernameFieldTextController
                                                        .text ==
                                                    '') {
                                              _model.errorMessage =
                                                  'Enter your username.';
                                              safeSetState(() {});
                                            } else {
                                              if (_model.passwordFieldTextController
                                                          .text ==
                                                      null ||
                                                  _model.passwordFieldTextController
                                                          .text ==
                                                      '') {
                                                _model.errorMessage =
                                                    'Enter your password.';
                                                safeSetState(() {});
                                              } else {
                                                _model.errorMessage = '';
                                                safeSetState(() {});
                                                _model.isSigningIn = true;
                                                safeSetState(() {});
                                                _model.loginResult =
                                                    await RtApiGroup.signInCall
                                                        .call(
                                                  username: _model
                                                      .usernameFieldTextController
                                                      .text,
                                                  password: _model
                                                      .passwordFieldTextController
                                                      .text,
                                                  deviceCode:
                                                      FFAppState().deviceCode,
                                                  deviceSecret:
                                                      _model.deviceSecret,
                                                );

                                                if ((_model.loginResult
                                                        ?.succeeded ??
                                                    true)) {
                                                  FFAppState()
                                                      .accessToken = SignInResultStruct
                                                          .maybeFromMap((_model
                                                                  .loginResult
                                                                  ?.jsonBody ??
                                                              ''))!
                                                      .accessToken;
                                                  safeSetState(() {});
                                                  FFAppState().refreshToken =
                                                      SignInResultStruct
                                                              .maybeFromMap((_model
                                                                      .loginResult
                                                                      ?.jsonBody ??
                                                                  ''))!
                                                          .refreshToken;
                                                  safeSetState(() {});
                                                  FFAppState().currentUserId =
                                                      SignInResultStruct
                                                              .maybeFromMap((_model
                                                                      .loginResult
                                                                      ?.jsonBody ??
                                                                  ''))!
                                                          .user
                                                          .id;
                                                  safeSetState(() {});
                                                  FFAppState()
                                                          .currentUserDisplayName =
                                                      SignInResultStruct
                                                              .maybeFromMap((_model
                                                                      .loginResult
                                                                      ?.jsonBody ??
                                                                  ''))!
                                                          .user
                                                          .displayName;
                                                  safeSetState(() {});
                                                  FFAppState()
                                                          .sessionExpiresAt =
                                                      SignInResultStruct
                                                              .maybeFromMap((_model
                                                                      .loginResult
                                                                      ?.jsonBody ??
                                                                  ''))!
                                                          .accessTokenExpiresAt;
                                                  safeSetState(() {});
                                                  _model.profileResult =
                                                      await RtApiGroup
                                                          .myProfileCall
                                                          .call(
                                                    token: FFAppState()
                                                        .accessToken,
                                                  );

                                                  if ((_model.profileResult
                                                          ?.succeeded ??
                                                      true)) {
                                                    FFAppState()
                                                            .currentUserPermissions =
                                                        ProfileResultStruct
                                                                .maybeFromMap((_model
                                                                        .profileResult
                                                                        ?.jsonBody ??
                                                                    ''))!
                                                            .permissions
                                                            .toList()
                                                            .cast<String>();
                                                    safeSetState(() {});
                                                    if (ProfileResultStruct
                                                                .maybeFromMap((_model
                                                                        .profileResult
                                                                        ?.jsonBody ??
                                                                    ''))
                                                            ?.mustChangePassword ==
                                                        true) {
                                                      _model.errorMessage =
                                                          'Your password must be changed first. Sign in on the website, change it, then sign in here.';
                                                      safeSetState(() {});
                                                    } else {
                                                      context.pushNamed(
                                                          MainMenuPageWidget
                                                              .routeName);
                                                    }

                                                    _model.isSigningIn = false;
                                                    safeSetState(() {});
                                                  } else {
                                                    _model.errorMessage =
                                                        'Signed in, but your profile could not be loaded. Try again.';
                                                    safeSetState(() {});
                                                  }
                                                } else {
                                                  _model.errorMessage =
                                                      'Sign-in failed. Check your username and password. If it keeps failing, ask a supervisor to check this handheld on the website.';
                                                  safeSetState(() {});
                                                }
                                              }
                                            }

                                            safeSetState(() {});
                                          },
                                    text: _model.isSigningIn!
                                        ? 'Signing In…'
                                        : 'Sign In',
                                    icon: Icon(
                                      Icons.login,
                                      size: 20.0,
                                    ),
                                    options: FFButtonOptions(
                                      height: 56.0,
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 0.0, 0.0, 0.0),
                                      iconPadding:
                                          EdgeInsetsDirectional.fromSTEB(
                                              0.0, 0.0, 0.0, 0.0),
                                      iconColor: Colors.white,
                                      color:
                                          FlutterFlowTheme.of(context).primary,
                                      textStyle: TextStyle(
                                        color: Colors.white,
                                      ),
                                      borderRadius: BorderRadius.circular(8.0),
                                    ),
                                  ),
                                  Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment:
                                        (FFMainAxisAlignment.spaceBetween)
                                            .flutterValue,
                                    crossAxisAlignment:
                                        (FFCrossAxisAlignment.center)
                                            .flutterValue,
                                    textBaseline: TextBaseline.alphabetic,
                                    children: [
                                      Row(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            (FFMainAxisAlignment.start)
                                                .flutterValue,
                                        crossAxisAlignment:
                                            (FFCrossAxisAlignment.center)
                                                .flutterValue,
                                        textBaseline: TextBaseline.alphabetic,
                                        children: [
                                          Text(
                                            'Handheld',
                                            style: FlutterFlowTheme.of(context)
                                                .bodySmall
                                                .override(
                                                  font: GoogleFonts.inter(
                                                    fontWeight:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .bodySmall
                                                            .fontWeight,
                                                    fontStyle:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .bodySmall
                                                            .fontStyle,
                                                  ),
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .secondaryText,
                                                  letterSpacing: 0.0,
                                                  fontWeight:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodySmall
                                                          .fontWeight,
                                                  fontStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodySmall
                                                          .fontStyle,
                                                ),
                                          ),
                                          Text(
                                            FFAppState().deviceCode,
                                            style: FlutterFlowTheme.of(context)
                                                .bodySmall
                                                .override(
                                                  font: GoogleFonts.inter(
                                                    fontWeight:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .bodySmall
                                                            .fontWeight,
                                                    fontStyle:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .bodySmall
                                                            .fontStyle,
                                                  ),
                                                  letterSpacing: 0.0,
                                                  fontWeight:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodySmall
                                                          .fontWeight,
                                                  fontStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodySmall
                                                          .fontStyle,
                                                ),
                                          ),
                                        ].divide(SizedBox(width: 6.0)),
                                      ),
                                      FFButtonWidget(
                                        onPressed: () async {
                                          _model.clearedSecret =
                                              await actions.clearDeviceSecret();
                                          FFAppState().deviceCode = '';
                                          safeSetState(() {});
                                          _model.deviceSecret = '';
                                          safeSetState(() {});
                                          _model.deviceReady = false;
                                          safeSetState(() {});

                                          safeSetState(() {});
                                        },
                                        text: 'Change handheld',
                                        options: FFButtonOptions(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 0.0, 0.0, 0.0),
                                          iconPadding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 0.0, 0.0, 0.0),
                                          color: Colors.transparent,
                                          textStyle: TextStyle(
                                            color: FlutterFlowTheme.of(context)
                                                .primary,
                                          ),
                                          elevation: 0.0,
                                          borderRadius:
                                              BorderRadius.circular(8.0),
                                        ),
                                      ),
                                    ],
                                  ),
                                ].divide(SizedBox(height: 16.0)),
                              ),
                            ),
                          ),
                        InkWell(
                          splashColor: Colors.transparent,
                          focusColor: Colors.transparent,
                          hoverColor: Colors.transparent,
                          highlightColor: Colors.transparent,
                          onTap: () async {
                            _model.statusText = 'Checking server…';
                            safeSetState(() {});
                            _model.recheckResult =
                                await RtApiGroup.serverInfoCall.call();

                            if ((_model.recheckResult?.succeeded ?? true)) {
                              _model.statusText = 'Server online';
                              safeSetState(() {});
                            } else {
                              _model.statusText =
                                  'Can\'t reach the server. Check Wi-Fi, then tap to retry.';
                              safeSetState(() {});
                            }

                            safeSetState(() {});
                          },
                          child: Container(
                            child: wrapWithModel(
                              model: _model.loginServerStatusModel,
                              updateCallback: () => safeSetState(() {}),
                              child: RtServerStatusWidget(
                                statusText: _model.statusText,
                                versionText: _model.versionText,
                                state: _model.statusText == 'Server online'
                                    ? 'online'
                                    : (_model.statusText == 'Checking server…'
                                        ? 'checking'
                                        : 'offline'),
                              ),
                            ),
                          ),
                        ),
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment:
                              (FFMainAxisAlignment.center).flutterValue,
                          crossAxisAlignment:
                              (FFCrossAxisAlignment.center).flutterValue,
                          textBaseline: TextBaseline.alphabetic,
                          children: [
                            Text(
                              'Prepared for Unilever',
                              style: FlutterFlowTheme.of(context)
                                  .bodySmall
                                  .override(
                                    font: GoogleFonts.inter(
                                      fontWeight: FlutterFlowTheme.of(context)
                                          .bodySmall
                                          .fontWeight,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .bodySmall
                                          .fontStyle,
                                    ),
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryText,
                                    letterSpacing: 0.0,
                                    fontWeight: FlutterFlowTheme.of(context)
                                        .bodySmall
                                        .fontWeight,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .bodySmall
                                        .fontStyle,
                                  ),
                            ),
                          ],
                        ),
                      ].divide(SizedBox(height: 16.0)),
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
