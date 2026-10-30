// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

/// DSL struct ProfileResult
class ProfileResultStruct extends BaseStruct {
  ProfileResultStruct({
    /// ProfileResult.id
    String? id,

    /// ProfileResult.displayName
    String? displayName,

    /// ProfileResult.deviceId
    String? deviceId,

    /// ProfileResult.permissions
    List<String>? permissions,

    /// ProfileResult.mustChangePassword
    bool? mustChangePassword,
  })  : _id = id,
        _displayName = displayName,
        _deviceId = deviceId,
        _permissions = permissions,
        _mustChangePassword = mustChangePassword;

  // "id" field.
  String? _id;
  String get id => _id ?? '';
  set id(String? val) => _id = val;

  bool hasId() => _id != null;

  // "displayName" field.
  String? _displayName;
  String get displayName => _displayName ?? '';
  set displayName(String? val) => _displayName = val;

  bool hasDisplayName() => _displayName != null;

  // "deviceId" field.
  String? _deviceId;
  String get deviceId => _deviceId ?? '';
  set deviceId(String? val) => _deviceId = val;

  bool hasDeviceId() => _deviceId != null;

  // "permissions" field.
  List<String>? _permissions;
  List<String> get permissions => _permissions ?? const [];
  set permissions(List<String>? val) => _permissions = val;

  void updatePermissions(Function(List<String>) updateFn) {
    updateFn(_permissions ??= []);
  }

  bool hasPermissions() => _permissions != null;

  // "mustChangePassword" field.
  bool? _mustChangePassword;
  bool get mustChangePassword => _mustChangePassword ?? false;
  set mustChangePassword(bool? val) => _mustChangePassword = val;

  bool hasMustChangePassword() => _mustChangePassword != null;

  static ProfileResultStruct fromMap(Map<String, dynamic> data) =>
      ProfileResultStruct(
        id: data['id'] as String?,
        displayName: data['displayName'] as String?,
        deviceId: data['deviceId'] as String?,
        permissions: getDataList(data['permissions']),
        mustChangePassword: data['mustChangePassword'] as bool?,
      );

  static ProfileResultStruct? maybeFromMap(dynamic data) => data is Map
      ? ProfileResultStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'displayName': _displayName,
        'deviceId': _deviceId,
        'permissions': _permissions,
        'mustChangePassword': _mustChangePassword,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'id': serializeParam(
          _id,
          ParamType.String,
        ),
        'displayName': serializeParam(
          _displayName,
          ParamType.String,
        ),
        'deviceId': serializeParam(
          _deviceId,
          ParamType.String,
        ),
        'permissions': serializeParam(
          _permissions,
          ParamType.String,
          isList: true,
        ),
        'mustChangePassword': serializeParam(
          _mustChangePassword,
          ParamType.bool,
        ),
      }.withoutNulls;

  static ProfileResultStruct fromSerializableMap(Map<String, dynamic> data) =>
      ProfileResultStruct(
        id: deserializeParam(
          data['id'],
          ParamType.String,
          false,
        ),
        displayName: deserializeParam(
          data['displayName'],
          ParamType.String,
          false,
        ),
        deviceId: deserializeParam(
          data['deviceId'],
          ParamType.String,
          false,
        ),
        permissions: deserializeParam<String>(
          data['permissions'],
          ParamType.String,
          true,
        ),
        mustChangePassword: deserializeParam(
          data['mustChangePassword'],
          ParamType.bool,
          false,
        ),
      );

  @override
  String toString() => 'ProfileResultStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is ProfileResultStruct &&
        id == other.id &&
        displayName == other.displayName &&
        deviceId == other.deviceId &&
        listEquality.equals(permissions, other.permissions) &&
        mustChangePassword == other.mustChangePassword;
  }

  @override
  int get hashCode => const ListEquality().hash([
        id,
        displayName,
        deviceId,
        const ListEquality().hash(permissions),
        mustChangePassword
      ]);
}

ProfileResultStruct createProfileResultStruct({
  String? id,
  String? displayName,
  String? deviceId,
  bool? mustChangePassword,
}) =>
    ProfileResultStruct(
      id: id,
      displayName: displayName,
      deviceId: deviceId,
      mustChangePassword: mustChangePassword,
    );
