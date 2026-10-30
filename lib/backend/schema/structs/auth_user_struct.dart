// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

/// DSL struct AuthUser
class AuthUserStruct extends BaseStruct {
  AuthUserStruct({
    /// AuthUser.id
    String? id,

    /// AuthUser.username
    String? username,

    /// AuthUser.displayName
    String? displayName,

    /// AuthUser.permissions
    List<String>? permissions,
  })  : _id = id,
        _username = username,
        _displayName = displayName,
        _permissions = permissions;

  // "id" field.
  String? _id;
  String get id => _id ?? '';
  set id(String? val) => _id = val;

  bool hasId() => _id != null;

  // "username" field.
  String? _username;
  String get username => _username ?? '';
  set username(String? val) => _username = val;

  bool hasUsername() => _username != null;

  // "displayName" field.
  String? _displayName;
  String get displayName => _displayName ?? '';
  set displayName(String? val) => _displayName = val;

  bool hasDisplayName() => _displayName != null;

  // "permissions" field.
  List<String>? _permissions;
  List<String> get permissions => _permissions ?? const [];
  set permissions(List<String>? val) => _permissions = val;

  void updatePermissions(Function(List<String>) updateFn) {
    updateFn(_permissions ??= []);
  }

  bool hasPermissions() => _permissions != null;

  static AuthUserStruct fromMap(Map<String, dynamic> data) => AuthUserStruct(
        id: data['id'] as String?,
        username: data['username'] as String?,
        displayName: data['displayName'] as String?,
        permissions: getDataList(data['permissions']),
      );

  static AuthUserStruct? maybeFromMap(dynamic data) =>
      data is Map ? AuthUserStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'username': _username,
        'displayName': _displayName,
        'permissions': _permissions,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'id': serializeParam(
          _id,
          ParamType.String,
        ),
        'username': serializeParam(
          _username,
          ParamType.String,
        ),
        'displayName': serializeParam(
          _displayName,
          ParamType.String,
        ),
        'permissions': serializeParam(
          _permissions,
          ParamType.String,
          isList: true,
        ),
      }.withoutNulls;

  static AuthUserStruct fromSerializableMap(Map<String, dynamic> data) =>
      AuthUserStruct(
        id: deserializeParam(
          data['id'],
          ParamType.String,
          false,
        ),
        username: deserializeParam(
          data['username'],
          ParamType.String,
          false,
        ),
        displayName: deserializeParam(
          data['displayName'],
          ParamType.String,
          false,
        ),
        permissions: deserializeParam<String>(
          data['permissions'],
          ParamType.String,
          true,
        ),
      );

  @override
  String toString() => 'AuthUserStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is AuthUserStruct &&
        id == other.id &&
        username == other.username &&
        displayName == other.displayName &&
        listEquality.equals(permissions, other.permissions);
  }

  @override
  int get hashCode => const ListEquality().hash(
      [id, username, displayName, const ListEquality().hash(permissions)]);
}

AuthUserStruct createAuthUserStruct({
  String? id,
  String? username,
  String? displayName,
}) =>
    AuthUserStruct(
      id: id,
      username: username,
      displayName: displayName,
    );
