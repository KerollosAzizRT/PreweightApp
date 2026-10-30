// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

/// DSL struct ApiError
class ApiErrorStruct extends BaseStruct {
  ApiErrorStruct({
    /// ApiError.errorCode
    String? errorCode,

    /// ApiError.message
    String? message,

    /// ApiError.correlationId
    String? correlationId,
  })  : _errorCode = errorCode,
        _message = message,
        _correlationId = correlationId;

  // "errorCode" field.
  String? _errorCode;
  String get errorCode => _errorCode ?? '';
  set errorCode(String? val) => _errorCode = val;

  bool hasErrorCode() => _errorCode != null;

  // "message" field.
  String? _message;
  String get message => _message ?? '';
  set message(String? val) => _message = val;

  bool hasMessage() => _message != null;

  // "correlationId" field.
  String? _correlationId;
  String get correlationId => _correlationId ?? '';
  set correlationId(String? val) => _correlationId = val;

  bool hasCorrelationId() => _correlationId != null;

  static ApiErrorStruct fromMap(Map<String, dynamic> data) => ApiErrorStruct(
        errorCode: data['errorCode'] as String?,
        message: data['message'] as String?,
        correlationId: data['correlationId'] as String?,
      );

  static ApiErrorStruct? maybeFromMap(dynamic data) =>
      data is Map ? ApiErrorStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'errorCode': _errorCode,
        'message': _message,
        'correlationId': _correlationId,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'errorCode': serializeParam(
          _errorCode,
          ParamType.String,
        ),
        'message': serializeParam(
          _message,
          ParamType.String,
        ),
        'correlationId': serializeParam(
          _correlationId,
          ParamType.String,
        ),
      }.withoutNulls;

  static ApiErrorStruct fromSerializableMap(Map<String, dynamic> data) =>
      ApiErrorStruct(
        errorCode: deserializeParam(
          data['errorCode'],
          ParamType.String,
          false,
        ),
        message: deserializeParam(
          data['message'],
          ParamType.String,
          false,
        ),
        correlationId: deserializeParam(
          data['correlationId'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'ApiErrorStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is ApiErrorStruct &&
        errorCode == other.errorCode &&
        message == other.message &&
        correlationId == other.correlationId;
  }

  @override
  int get hashCode =>
      const ListEquality().hash([errorCode, message, correlationId]);
}

ApiErrorStruct createApiErrorStruct({
  String? errorCode,
  String? message,
  String? correlationId,
}) =>
    ApiErrorStruct(
      errorCode: errorCode,
      message: message,
      correlationId: correlationId,
    );
