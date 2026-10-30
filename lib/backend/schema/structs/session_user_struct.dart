// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

/// DSL struct SessionUser
class SessionUserStruct extends BaseStruct {
  SessionUserStruct({
    /// SessionUser.id
    String? id,

    /// SessionUser.displayName
    String? displayName,
  })  : _id = id,
        _displayName = displayName;

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

  static SessionUserStruct fromMap(Map<String, dynamic> data) =>
      SessionUserStruct(
        id: data['id'] as String?,
        displayName: data['displayName'] as String?,
      );

  static SessionUserStruct? maybeFromMap(dynamic data) => data is Map
      ? SessionUserStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'displayName': _displayName,
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
      }.withoutNulls;

  static SessionUserStruct fromSerializableMap(Map<String, dynamic> data) =>
      SessionUserStruct(
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
      );

  @override
  String toString() => 'SessionUserStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is SessionUserStruct &&
        id == other.id &&
        displayName == other.displayName;
  }

  @override
  int get hashCode => const ListEquality().hash([id, displayName]);
}

SessionUserStruct createSessionUserStruct({
  String? id,
  String? displayName,
}) =>
    SessionUserStruct(
      id: id,
      displayName: displayName,
    );
