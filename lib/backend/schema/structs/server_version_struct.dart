// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

/// DSL struct ServerVersion
class ServerVersionStruct extends BaseStruct {
  ServerVersionStruct({
    /// ServerVersion.service
    String? service,

    /// ServerVersion.version
    String? version,

    /// ServerVersion.apiVersion
    String? apiVersion,

    /// ServerVersion.environment
    String? environment,
  })  : _service = service,
        _version = version,
        _apiVersion = apiVersion,
        _environment = environment;

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

  // "apiVersion" field.
  String? _apiVersion;
  String get apiVersion => _apiVersion ?? '';
  set apiVersion(String? val) => _apiVersion = val;

  bool hasApiVersion() => _apiVersion != null;

  // "environment" field.
  String? _environment;
  String get environment => _environment ?? '';
  set environment(String? val) => _environment = val;

  bool hasEnvironment() => _environment != null;

  static ServerVersionStruct fromMap(Map<String, dynamic> data) =>
      ServerVersionStruct(
        service: data['service'] as String?,
        version: data['version'] as String?,
        apiVersion: data['apiVersion'] as String?,
        environment: data['environment'] as String?,
      );

  static ServerVersionStruct? maybeFromMap(dynamic data) => data is Map
      ? ServerVersionStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'service': _service,
        'version': _version,
        'apiVersion': _apiVersion,
        'environment': _environment,
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
        'apiVersion': serializeParam(
          _apiVersion,
          ParamType.String,
        ),
        'environment': serializeParam(
          _environment,
          ParamType.String,
        ),
      }.withoutNulls;

  static ServerVersionStruct fromSerializableMap(Map<String, dynamic> data) =>
      ServerVersionStruct(
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
        apiVersion: deserializeParam(
          data['apiVersion'],
          ParamType.String,
          false,
        ),
        environment: deserializeParam(
          data['environment'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'ServerVersionStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is ServerVersionStruct &&
        service == other.service &&
        version == other.version &&
        apiVersion == other.apiVersion &&
        environment == other.environment;
  }

  @override
  int get hashCode =>
      const ListEquality().hash([service, version, apiVersion, environment]);
}

ServerVersionStruct createServerVersionStruct({
  String? service,
  String? version,
  String? apiVersion,
  String? environment,
}) =>
    ServerVersionStruct(
      service: service,
      version: version,
      apiVersion: apiVersion,
      environment: environment,
    );
