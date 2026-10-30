// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

/// DSL struct SignInResult
class SignInResultStruct extends BaseStruct {
  SignInResultStruct({
    /// SignInResult.accessToken
    String? accessToken,

    /// SignInResult.accessTokenExpiresAt
    String? accessTokenExpiresAt,

    /// SignInResult.refreshToken
    String? refreshToken,

    /// SignInResult.sessionId
    String? sessionId,

    /// SignInResult.sessionExpiresAt
    String? sessionExpiresAt,

    /// SignInResult.user
    SessionUserStruct? user,

    /// SignInResult.mustChangePassword
    bool? mustChangePassword,
  })  : _accessToken = accessToken,
        _accessTokenExpiresAt = accessTokenExpiresAt,
        _refreshToken = refreshToken,
        _sessionId = sessionId,
        _sessionExpiresAt = sessionExpiresAt,
        _user = user,
        _mustChangePassword = mustChangePassword;

  // "accessToken" field.
  String? _accessToken;
  String get accessToken => _accessToken ?? '';
  set accessToken(String? val) => _accessToken = val;

  bool hasAccessToken() => _accessToken != null;

  // "accessTokenExpiresAt" field.
  String? _accessTokenExpiresAt;
  String get accessTokenExpiresAt => _accessTokenExpiresAt ?? '';
  set accessTokenExpiresAt(String? val) => _accessTokenExpiresAt = val;

  bool hasAccessTokenExpiresAt() => _accessTokenExpiresAt != null;

  // "refreshToken" field.
  String? _refreshToken;
  String get refreshToken => _refreshToken ?? '';
  set refreshToken(String? val) => _refreshToken = val;

  bool hasRefreshToken() => _refreshToken != null;

  // "sessionId" field.
  String? _sessionId;
  String get sessionId => _sessionId ?? '';
  set sessionId(String? val) => _sessionId = val;

  bool hasSessionId() => _sessionId != null;

  // "sessionExpiresAt" field.
  String? _sessionExpiresAt;
  String get sessionExpiresAt => _sessionExpiresAt ?? '';
  set sessionExpiresAt(String? val) => _sessionExpiresAt = val;

  bool hasSessionExpiresAt() => _sessionExpiresAt != null;

  // "user" field.
  SessionUserStruct? _user;
  SessionUserStruct get user => _user ?? SessionUserStruct();
  set user(SessionUserStruct? val) => _user = val;

  void updateUser(Function(SessionUserStruct) updateFn) {
    updateFn(_user ??= SessionUserStruct());
  }

  bool hasUser() => _user != null;

  // "mustChangePassword" field.
  bool? _mustChangePassword;
  bool get mustChangePassword => _mustChangePassword ?? false;
  set mustChangePassword(bool? val) => _mustChangePassword = val;

  bool hasMustChangePassword() => _mustChangePassword != null;

  static SignInResultStruct fromMap(Map<String, dynamic> data) =>
      SignInResultStruct(
        accessToken: data['accessToken'] as String?,
        accessTokenExpiresAt: data['accessTokenExpiresAt'] as String?,
        refreshToken: data['refreshToken'] as String?,
        sessionId: data['sessionId'] as String?,
        sessionExpiresAt: data['sessionExpiresAt'] as String?,
        user: data['user'] is SessionUserStruct
            ? data['user']
            : SessionUserStruct.maybeFromMap(data['user']),
        mustChangePassword: data['mustChangePassword'] as bool?,
      );

  static SignInResultStruct? maybeFromMap(dynamic data) => data is Map
      ? SignInResultStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'accessToken': _accessToken,
        'accessTokenExpiresAt': _accessTokenExpiresAt,
        'refreshToken': _refreshToken,
        'sessionId': _sessionId,
        'sessionExpiresAt': _sessionExpiresAt,
        'user': _user?.toMap(),
        'mustChangePassword': _mustChangePassword,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'accessToken': serializeParam(
          _accessToken,
          ParamType.String,
        ),
        'accessTokenExpiresAt': serializeParam(
          _accessTokenExpiresAt,
          ParamType.String,
        ),
        'refreshToken': serializeParam(
          _refreshToken,
          ParamType.String,
        ),
        'sessionId': serializeParam(
          _sessionId,
          ParamType.String,
        ),
        'sessionExpiresAt': serializeParam(
          _sessionExpiresAt,
          ParamType.String,
        ),
        'user': serializeParam(
          _user,
          ParamType.DataStruct,
        ),
        'mustChangePassword': serializeParam(
          _mustChangePassword,
          ParamType.bool,
        ),
      }.withoutNulls;

  static SignInResultStruct fromSerializableMap(Map<String, dynamic> data) =>
      SignInResultStruct(
        accessToken: deserializeParam(
          data['accessToken'],
          ParamType.String,
          false,
        ),
        accessTokenExpiresAt: deserializeParam(
          data['accessTokenExpiresAt'],
          ParamType.String,
          false,
        ),
        refreshToken: deserializeParam(
          data['refreshToken'],
          ParamType.String,
          false,
        ),
        sessionId: deserializeParam(
          data['sessionId'],
          ParamType.String,
          false,
        ),
        sessionExpiresAt: deserializeParam(
          data['sessionExpiresAt'],
          ParamType.String,
          false,
        ),
        user: deserializeStructParam(
          data['user'],
          ParamType.DataStruct,
          false,
          structBuilder: SessionUserStruct.fromSerializableMap,
        ),
        mustChangePassword: deserializeParam(
          data['mustChangePassword'],
          ParamType.bool,
          false,
        ),
      );

  @override
  String toString() => 'SignInResultStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is SignInResultStruct &&
        accessToken == other.accessToken &&
        accessTokenExpiresAt == other.accessTokenExpiresAt &&
        refreshToken == other.refreshToken &&
        sessionId == other.sessionId &&
        sessionExpiresAt == other.sessionExpiresAt &&
        user == other.user &&
        mustChangePassword == other.mustChangePassword;
  }

  @override
  int get hashCode => const ListEquality().hash([
        accessToken,
        accessTokenExpiresAt,
        refreshToken,
        sessionId,
        sessionExpiresAt,
        user,
        mustChangePassword
      ]);
}

SignInResultStruct createSignInResultStruct({
  String? accessToken,
  String? accessTokenExpiresAt,
  String? refreshToken,
  String? sessionId,
  String? sessionExpiresAt,
  SessionUserStruct? user,
  bool? mustChangePassword,
}) =>
    SignInResultStruct(
      accessToken: accessToken,
      accessTokenExpiresAt: accessTokenExpiresAt,
      refreshToken: refreshToken,
      sessionId: sessionId,
      sessionExpiresAt: sessionExpiresAt,
      user: user ?? SessionUserStruct(),
      mustChangePassword: mustChangePassword,
    );
