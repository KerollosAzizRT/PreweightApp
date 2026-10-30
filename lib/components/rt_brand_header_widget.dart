import '/flutter_flow/ff_builtin_enums.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'rt_brand_header_model.dart';
export 'rt_brand_header_model.dart';

/// RT PreWeigh brand block: product mark, title and subtitle.
class RtBrandHeaderWidget extends StatefulWidget {
  const RtBrandHeaderWidget({
    super.key,
    String? title,
    String? subtitle,
  })  : this.title = title ?? 'RT PreWeigh',
        this.subtitle = subtitle ?? 'Prepared for Unilever';

  final String title;
  final String subtitle;

  @override
  State<RtBrandHeaderWidget> createState() => _RtBrandHeaderWidgetState();
}

class _RtBrandHeaderWidgetState extends State<RtBrandHeaderWidget> {
  late RtBrandHeaderModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => RtBrandHeaderModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsDirectional.fromSTEB(24.0, 40.0, 24.0, 40.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: (FFMainAxisAlignment.start).flutterValue,
        crossAxisAlignment: (FFCrossAxisAlignment.center).flutterValue,
        textBaseline: TextBaseline.alphabetic,
        children: [
          Container(
            width: 72.0,
            height: 72.0,
            decoration: BoxDecoration(
              color: Colors.transparent,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: (FFMainAxisAlignment.center).flutterValue,
              crossAxisAlignment: (FFCrossAxisAlignment.center).flutterValue,
              textBaseline: TextBaseline.alphabetic,
              children: [
                Image.asset(
                  'assets/images/rt-logo-inverse.png',
                  width: 72.0,
                  height: 72.0,
                  fit: BoxFit.contain,
                ),
                Text(
                  'RT',
                  style: FlutterFlowTheme.of(context).titleLarge.override(
                        font: GoogleFonts.inter(
                          fontWeight: FlutterFlowTheme.of(context)
                              .titleLarge
                              .fontWeight,
                          fontStyle:
                              FlutterFlowTheme.of(context).titleLarge.fontStyle,
                        ),
                        color: FlutterFlowTheme.of(context).secondaryBackground,
                        letterSpacing: 0.0,
                        fontWeight:
                            FlutterFlowTheme.of(context).titleLarge.fontWeight,
                        fontStyle:
                            FlutterFlowTheme.of(context).titleLarge.fontStyle,
                      ),
                ),
              ],
            ),
          ),
          Text(
            widget!.title,
            style: FlutterFlowTheme.of(context).headlineSmall.override(
                  font: GoogleFonts.inter(
                    fontWeight:
                        FlutterFlowTheme.of(context).headlineSmall.fontWeight,
                    fontStyle:
                        FlutterFlowTheme.of(context).headlineSmall.fontStyle,
                  ),
                  color: FlutterFlowTheme.of(context).secondaryBackground,
                  letterSpacing: 0.0,
                  fontWeight:
                      FlutterFlowTheme.of(context).headlineSmall.fontWeight,
                  fontStyle:
                      FlutterFlowTheme.of(context).headlineSmall.fontStyle,
                ),
          ),
          Text(
            widget!.subtitle,
            style: FlutterFlowTheme.of(context).bodyMedium.override(
                  font: GoogleFonts.inter(
                    fontWeight:
                        FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                    fontStyle:
                        FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                  ),
                  color: Color(0xFFBDBDBD),
                  letterSpacing: 0.0,
                  fontWeight:
                      FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                  fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                ),
          ),
        ].divide(SizedBox(height: 12.0)),
      ),
    );
  }
}
