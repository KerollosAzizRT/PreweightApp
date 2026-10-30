// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

/// DSL struct LoginResponse
class LoginResponseStruct extends BaseStruct {
  LoginResponseStruct({
    /// LoginResponse.accessToken
    String? accessToken,

    /// LoginResponse.refreshToken
    String? refreshToken,

    /// LoginResponse.expiresIn
    int? expiresIn,

    /// LoginResponse.user
    AuthUserStruct? user,
  })  : _accessToken = accessToken,
        _refreshToken = refreshToken,
        _expiresIn = expiresIn,
        _user = user;

  // "accessToken" field.
  String? _accessToken;
  String get accessToken => _accessToken ?? '';
  set accessToken(String? val) => _accessToken = val;

  bool hasAccessToken() => _accessToken != null;

  // "refreshToken" field.
  String? _refreshToken;
  String get refreshToken => _refreshToken ?? '';
  set refreshToken(String? val) => _refreshToken = val;

  bool hasRefreshToken() => _refreshToken != null;

  // "expiresIn" field.
  int? _expiresIn;
  int get expiresIn => _expiresIn ?? 0;
  set expiresIn(int? val) => _expiresIn = val;

  void incrementExpiresIn(int amount) => expiresIn = expiresIn + amount;

  bool hasExpiresIn() => _expiresIn != null;

  // "user" field.
  AuthUserStruct? _user;
  AuthUserStruct get user => _user ?? AuthUserStruct();
  set user(AuthUserStruct? val) => _user = val;

  void updateUser(Function(AuthUserStruct) updateFn) {
    updateFn(_user ??= AuthUserStruct());
  }

  bool hasUser() => _user != null;

  static LoginResponseStruct fromMap(Map<String, dynamic> data) =>
      LoginResponseStruct(
        accessToken: data['accessToken'] as String?,
        refreshToken: data['refreshToken'] as String?,
        expiresIn: castToType<int>(data['expiresIn']),
        user: data['user'] is AuthUserStruct
            ? data['user']
            : AuthUserStruct.maybeFromMap(data['user']),
      );

  static LoginResponseStruct? maybeFromMap(dynamic data) => data is Map
      ? LoginResponseStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'accessToken': _accessToken,
        'refreshToken': _refreshToken,
        'expiresIn': _expiresIn,
        'user': _user?.toMap(),
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'accessToken': serializeParam(
          _accessToken,
          ParamType.String,
        ),
        'refreshToken': serializeParam(
          _refreshToken,
          ParamType.String,
        ),
        'expiresIn': serializeParam(
          _expiresIn,
          ParamType.int,
        ),
        'user': serializeParam(
          _user,
          ParamType.DataStruct,
        ),
      }.withoutNulls;

  static LoginResponseStruct fromSerializableMap(Map<String, dynamic> data) =>
      LoginResponseStruct(
        accessToken: deserializeParam(
          data['accessToken'],
          ParamType.String,
          false,
        ),
        refreshToken: deserializeParam(
          data['refreshToken'],
          ParamType.String,
          false,
        ),
        expiresIn: deserializeParam(
          data['expiresIn'],
          ParamType.int,
          false,
        ),
        user: deserializeStructParam(
          data['user'],
          ParamType.DataStruct,
          false,
          structBuilder: AuthUserStruct.fromSerializableMap,
        ),
      );

  @override
  String toString() => 'LoginResponseStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is LoginResponseStruct &&
        accessToken == other.accessToken &&
        refreshToken == other.refreshToken &&
        expiresIn == other.expiresIn &&
        user == other.user;
  }

  @override
  int get hashCode =>
      const ListEquality().hash([accessToken, refreshToken, expiresIn, user]);
}

LoginResponseStruct createLoginResponseStruct({
  String? accessToken,
  String? refreshToken,
  int? expiresIn,
  AuthUserStruct? user,
}) =>
    LoginResponseStruct(
      accessToken: accessToken,
      refreshToken: refreshToken,
      expiresIn: expiresIn,
      user: user ?? AuthUserStruct(),
    );
