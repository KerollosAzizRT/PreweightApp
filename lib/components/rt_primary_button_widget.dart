import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'rt_primary_button_model.dart';
export 'rt_primary_button_model.dart';

/// Full-width black primary action button.
class RtPrimaryButtonWidget extends StatefulWidget {
  const RtPrimaryButtonWidget({
    super.key,
    String? label,
    this.onTapAction,
  }) : this.label = label ?? 'Continue';

  final String label;
  final Future Function()? onTapAction;

  @override
  State<RtPrimaryButtonWidget> createState() => _RtPrimaryButtonWidgetState();
}

class _RtPrimaryButtonWidgetState extends State<RtPrimaryButtonWidget> {
  late RtPrimaryButtonModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => RtPrimaryButtonModel());
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
        color: FlutterFlowTheme.of(context).primary,
        textStyle: TextStyle(
          color: Colors.white,
        ),
        borderRadius: BorderRadius.circular(8.0),
      ),
    );
  }
}
