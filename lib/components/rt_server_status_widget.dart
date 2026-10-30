import '/flutter_flow/ff_builtin_enums.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'rt_server_status_model.dart';
export 'rt_server_status_model.dart';

/// Shows API reachability and the server version.
class RtServerStatusWidget extends StatefulWidget {
  const RtServerStatusWidget({
    super.key,
    String? statusText,
    String? versionText,
    String? state,
  })  : this.statusText = statusText ?? 'Checking server…',
        this.versionText = versionText ?? '',
        this.state = state ?? 'checking';

  final String statusText;
  final String versionText;
  final String state;

  @override
  State<RtServerStatusWidget> createState() => _RtServerStatusWidgetState();
}

class _RtServerStatusWidgetState extends State<RtServerStatusWidget> {
  late RtServerStatusModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => RtServerStatusModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).secondaryBackground,
        borderRadius: BorderRadius.circular(8.0),
        border: Border.all(
          color: FlutterFlowTheme.of(context).alternate,
          width: 1.0,
        ),
      ),
      child: Padding(
        padding: EdgeInsets.all(12.0),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: (FFMainAxisAlignment.start).flutterValue,
          crossAxisAlignment: (FFCrossAxisAlignment.center).flutterValue,
          textBaseline: TextBaseline.alphabetic,
          children: [
            if (widget!.state == 'checking')
              Icon(
                Icons.sync,
                color: FlutterFlowTheme.of(context).secondaryText,
                size: 20.0,
              ),
            if (widget!.state == 'online')
              Icon(
                Icons.check_circle,
                color: FlutterFlowTheme.of(context).success,
                size: 20.0,
              ),
            if (widget!.state == 'offline')
              Icon(
                Icons.cloud_off,
                color: FlutterFlowTheme.of(context).error,
                size: 20.0,
              ),
            Flexible(
              flex: 1,
              child: Text(
                widget!.statusText,
                maxLines: 2,
                style: FlutterFlowTheme.of(context).bodySmall.override(
                      font: GoogleFonts.inter(
                        fontWeight:
                            FlutterFlowTheme.of(context).bodySmall.fontWeight,
                        fontStyle:
                            FlutterFlowTheme.of(context).bodySmall.fontStyle,
                      ),
                      color: FlutterFlowTheme.of(context).primaryText,
                      letterSpacing: 0.0,
                      fontWeight:
                          FlutterFlowTheme.of(context).bodySmall.fontWeight,
                      fontStyle:
                          FlutterFlowTheme.of(context).bodySmall.fontStyle,
                    ),
                overflow: TextOverflow.ellipsis,
              ),
            ),
            Text(
              widget!.versionText,
              style: FlutterFlowTheme.of(context).bodySmall.override(
                    font: GoogleFonts.inter(
                      fontWeight:
                          FlutterFlowTheme.of(context).bodySmall.fontWeight,
                      fontStyle:
                          FlutterFlowTheme.of(context).bodySmall.fontStyle,
                    ),
                    color: FlutterFlowTheme.of(context).secondaryText,
                    letterSpacing: 0.0,
                    fontWeight:
                        FlutterFlowTheme.of(context).bodySmall.fontWeight,
                    fontStyle: FlutterFlowTheme.of(context).bodySmall.fontStyle,
                  ),
            ),
          ].divide(SizedBox(width: 10.0)),
        ),
      ),
    );
  }
}
