import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'rt_secondary_button_model.dart';
export 'rt_secondary_button_model.dart';

/// Full-width outlined button for secondary or exit actions.
class RtSecondaryButtonWidget extends StatefulWidget {
  const RtSecondaryButtonWidget({
    super.key,
    String? label,
    this.onTapAction,
  }) : this.label = label ?? 'Cancel';

  final String label;
  final Future Function()? onTapAction;

  @override
  State<RtSecondaryButtonWidget> createState() =>
      _RtSecondaryButtonWidgetState();
}

class _RtSecondaryButtonWidgetState extends State<RtSecondaryButtonWidget> {
  late RtSecondaryButtonModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => RtSecondaryButtonModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return FFButtonWidget(
      onPressed: () async {
        await widget.onTapAction?.call();
      },
      text: widget!.label,
      options: FFButtonOptions(
        height: 52.0,
        padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
        iconPadding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
        color: Colors.transparent,
        textStyle: TextStyle(
          color: FlutterFlowTheme.of(context).primaryText,
        ),
        elevation: 0.0,
        borderSide: BorderSide(
          color: FlutterFlowTheme.of(context).primary,
          width: 1.0,
        ),
        borderRadius: BorderRadius.circular(8.0),
      ),
    );
  }
}
