// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

/// DSL struct HealthReport
class HealthReportStruct extends BaseStruct {
  HealthReportStruct({
    /// HealthReport.status
    String? status,

    /// HealthReport.service
    String? service,

    /// HealthReport.environment
    String? environment,

    /// HealthReport.version
    String? version,

    /// HealthReport.checkedAt
    String? checkedAt,
  })  : _status = status,
        _service = service,
        _environment = environment,
        _version = version,
        _checkedAt = checkedAt;

  // "status" field.
  String? _status;
  String get status => _status ?? '';
  set status(String? val) => _status = val;

  bool hasStatus() => _status != null;

  // "service" field.
  String? _service;
  String get service => _service ?? '';
  set service(String? val) => _service = val;

  bool hasService() => _service != null;

  // "environment" field.
  String? _environment;
  String get environment => _environment ?? '';
  set environment(String? val) => _environment = val;

  bool hasEnvironment() => _environment != null;

  // "version" field.
  String? _version;
  String get version => _version ?? '';
  set version(String? val) => _version = val;

  bool hasVersion() => _version != null;

  // "checkedAt" field.
  String? _checkedAt;
  String get checkedAt => _checkedAt ?? '';
  set checkedAt(String? val) => _checkedAt = val;

  bool hasCheckedAt() => _checkedAt != null;

  static HealthReportStruct fromMap(Map<String, dynamic> data) =>
      HealthReportStruct(
        status: data['status'] as String?,
        service: data['service'] as String?,
        environment: data['environment'] as String?,
        version: data['version'] as String?,
        checkedAt: data['checkedAt'] as String?,
      );

  static HealthReportStruct? maybeFromMap(dynamic data) => data is Map
      ? HealthReportStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'status': _status,
        'service': _service,
        'environment': _environment,
        'version': _version,
        'checkedAt': _checkedAt,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'status': serializeParam(
          _status,
          ParamType.String,
        ),
        'service': serializeParam(
          _service,
          ParamType.String,
        ),
        'environment': serializeParam(
          _environment,
          ParamType.String,
        ),
        'version': serializeParam(
          _version,
          ParamType.String,
        ),
        'checkedAt': serializeParam(
          _checkedAt,
          ParamType.String,
        ),
      }.withoutNulls;

  static HealthReportStruct fromSerializableMap(Map<String, dynamic> data) =>
      HealthReportStruct(
        status: deserializeParam(
          data['status'],
          ParamType.String,
          false,
        ),
        service: deserializeParam(
          data['service'],
          ParamType.String,
          false,
        ),
        environment: deserializeParam(
          data['environment'],
          ParamType.String,
          false,
        ),
        version: deserializeParam(
          data['version'],
          ParamType.String,
          false,
        ),
        checkedAt: deserializeParam(
          data['checkedAt'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'HealthReportStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is HealthReportStruct &&
        status == other.status &&
        service == other.service &&
        environment == other.environment &&
        version == other.version &&
        checkedAt == other.checkedAt;
  }

  @override
  int get hashCode => const ListEquality()
      .hash([status, service, environment, version, checkedAt]);
}

HealthReportStruct createHealthReportStruct({
  String? status,
  String? service,
  String? environment,
  String? version,
  String? checkedAt,
}) =>
    HealthReportStruct(
      status: status,
      service: service,
      environment: environment,
      version: version,
      checkedAt: checkedAt,
    );
