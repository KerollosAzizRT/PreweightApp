import 'package:flutter/material.dart'
    show ChangeNotifier, Color, Colors, VoidCallback;
import '/backend/schema/structs/index.dart';
import '/backend/api_requests/api_manager.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/flutter_flow_util.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {
    prefs = await SharedPreferences.getInstance();
    _safeInit(() {
      _deviceCode = prefs.getString('ff_deviceCode') ?? _deviceCode;
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

  /// DSL app state accessToken
  String _accessToken = '';
  String get accessToken => _accessToken;
  set accessToken(String value) {
    _accessToken = value;
  }

  /// DSL app state refreshToken
  String _refreshToken = '';
  String get refreshToken => _refreshToken;
  set refreshToken(String value) {
    _refreshToken = value;
  }

  /// DSL app state currentUserId
  String _currentUserId = '';
  String get currentUserId => _currentUserId;
  set currentUserId(String value) {
    _currentUserId = value;
  }

  /// DSL app state currentUserDisplayName
  String _currentUserDisplayName = '';
  String get currentUserDisplayName => _currentUserDisplayName;
  set currentUserDisplayName(String value) {
    _currentUserDisplayName = value;
  }

  /// DSL app state currentUserPermissions
  List<String> _currentUserPermissions = [];
  List<String> get currentUserPermissions => _currentUserPermissions;
  set currentUserPermissions(List<String> value) {
    _currentUserPermissions = value;
  }

  void addToCurrentUserPermissions(String value) {
    currentUserPermissions.add(value);
  }

  void removeFromCurrentUserPermissions(String value) {
    currentUserPermissions.remove(value);
  }

  void removeAtIndexFromCurrentUserPermissions(int index) {
    currentUserPermissions.removeAt(index);
  }

  void updateCurrentUserPermissionsAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    currentUserPermissions[index] = updateFn(_currentUserPermissions[index]);
  }

  void insertAtIndexInCurrentUserPermissions(int index, String value) {
    currentUserPermissions.insert(index, value);
  }

  /// Handheld ID registered on the website (not secret).
  String _deviceCode = '';
  String get deviceCode => _deviceCode;
  set deviceCode(String value) {
    _deviceCode = value;
    prefs.setString('ff_deviceCode', value);
  }

  /// When the access token expires (ISO time from the server).
  String _sessionExpiresAt = '';
  String get sessionExpiresAt => _sessionExpiresAt;
  set sessionExpiresAt(String value) {
    _sessionExpiresAt = value;
  }
}

void _safeInit(Function() initializeField) {
  try {
    initializeField();
  } catch (_) {}
}

Future _safeInitAsync(Function() initializeField) async {
  try {
    await initializeField();
  } catch (_) {}
}
