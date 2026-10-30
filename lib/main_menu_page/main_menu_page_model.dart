import '/backend/api_requests/api_calls.dart';
import '/components/rt_module_tile_widget.dart';
import '/components/rt_secondary_button_widget.dart';
import '/flutter_flow/ff_builtin_enums.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import '/index.dart';
import 'main_menu_page_widget.dart' show MainMenuPageWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class MainMenuPageModel extends FlutterFlowModel<MainMenuPageWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for StartRecipeTile.
  late RtModuleTileModel startRecipeTileModel;
  // Model for TrolleyTile.
  late RtModuleTileModel trolleyTileModel;
  // Model for SfgLinkTile.
  late RtModuleTileModel sfgLinkTileModel;
  // Model for SignOutButton.
  late RtSecondaryButtonModel signOutButtonModel;
  // Stores action output result for [Backend Call - API (Logout)] action in SignOutButton widget.
  ApiCallResponse? logoutResult;

  @override
  void initState(BuildContext context) {
    startRecipeTileModel = createModel(context, () => RtModuleTileModel());
    trolleyTileModel = createModel(context, () => RtModuleTileModel());
    sfgLinkTileModel = createModel(context, () => RtModuleTileModel());
    signOutButtonModel = createModel(context, () => RtSecondaryButtonModel());
  }

  @override
  void dispose() {
    startRecipeTileModel.dispose();
    trolleyTileModel.dispose();
    sfgLinkTileModel.dispose();
    signOutButtonModel.dispose();
  }
}
