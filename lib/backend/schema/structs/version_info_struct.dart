// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

/// DSL struct VersionInfo
class VersionInfoStruct extends BaseStruct {
  VersionInfoStruct({
    /// VersionInfo.service
    String? service,

    /// VersionInfo.version
    String? version,

    /// VersionInfo.gitSha
    String? gitSha,

    /// VersionInfo.buildTime
    String? buildTime,

    /// VersionInfo.environment
    String? environment,

    /// VersionInfo.apiVersion
    String? apiVersion,
  })  : _service = service,
        _version = version,
        _gitSha = gitSha,
        _buildTime = buildTime,
        _environment = environment,
        _apiVersion = apiVersion;

  // "service" field.
  String? _service;
  String get service => _service ?? '';
  set service(String? val) => _service = val;

  bool hasService() => _service != null;

  // "version" field.
  String? _version;
  String get version => _version ?? '';
  set version(String? val) => _version = val;

  bool hasVersion() => _version != null;

  // "gitSha" field.
  String? _gitSha;
  String get gitSha => _gitSha ?? '';
  set gitSha(String? val) => _gitSha = val;

  bool hasGitSha() => _gitSha != null;

  // "buildTime" field.
  String? _buildTime;
  String get buildTime => _buildTime ?? '';
  set buildTime(String? val) => _buildTime = val;

  bool hasBuildTime() => _buildTime != null;

  // "environment" field.
  String? _environment;
  String get environment => _environment ?? '';
  set environment(String? val) => _environment = val;

  bool hasEnvironment() => _environment != null;

  // "apiVersion" field.
  String? _apiVersion;
  String get apiVersion => _apiVersion ?? '';
  set apiVersion(String? val) => _apiVersion = val;

  bool hasApiVersion() => _apiVersion != null;

  static VersionInfoStruct fromMap(Map<String, dynamic> data) =>
      VersionInfoStruct(
        service: data['service'] as String?,
        version: data['version'] as String?,
        gitSha: data['gitSha'] as String?,
        buildTime: data['buildTime'] as String?,
        environment: data['environment'] as String?,
        apiVersion: data['apiVersion'] as String?,
      );

  static VersionInfoStruct? maybeFromMap(dynamic data) => data is Map
      ? VersionInfoStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'service': _service,
        'version': _version,
        'gitSha': _gitSha,
        'buildTime': _buildTime,
        'environment': _environment,
        'apiVersion': _apiVersion,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'service': serializeParam(
          _service,
          ParamType.String,
        ),
        'version': serializeParam(
          _version,
          ParamType.String,
        ),
        'gitSha': serializeParam(
          _gitSha,
          ParamType.String,
        ),
        'buildTime': serializeParam(
          _buildTime,
          ParamType.String,
        ),
        'environment': serializeParam(
          _environment,
          ParamType.String,
        ),
        'apiVersion': serializeParam(
          _apiVersion,
          ParamType.String,
        ),
      }.withoutNulls;

  static VersionInfoStruct fromSerializableMap(Map<String, dynamic> data) =>
      VersionInfoStruct(
        service: deserializeParam(
          data['service'],
          ParamType.String,
          false,
        ),
        version: deserializeParam(
          data['version'],
          ParamType.String,
          false,
        ),
        gitSha: deserializeParam(
          data['gitSha'],
          ParamType.String,
          false,
        ),
        buildTime: deserializeParam(
          data['buildTime'],
          ParamType.String,
          false,
        ),
        environment: deserializeParam(
          data['environment'],
          ParamType.String,
          false,
        ),
        apiVersion: deserializeParam(
          data['apiVersion'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'VersionInfoStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is VersionInfoStruct &&
        service == other.service &&
        version == other.version &&
        gitSha == other.gitSha &&
        buildTime == other.buildTime &&
        environment == other.environment &&
        apiVersion == other.apiVersion;
  }

  @override
  int get hashCode => const ListEquality()
      .hash([service, version, gitSha, buildTime, environment, apiVersion]);
}

VersionInfoStruct createVersionInfoStruct({
  String? service,
  String? version,
  String? gitSha,
  String? buildTime,
  String? environment,
  String? apiVersion,
}) =>
    VersionInfoStruct(
      service: service,
      version: version,
      gitSha: gitSha,
      buildTime: buildTime,
      environment: environment,
      apiVersion: apiVersion,
    );
