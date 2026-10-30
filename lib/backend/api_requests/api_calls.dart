import 'dart:convert';
import 'dart:typed_data';
import '../schema/structs/index.dart';

import '/backend/mock/adapters/mock_api_adapter.dart';
import '/backend/mock/ff_data_source.dart';

import 'package:flutter/foundation.dart';

import '/flutter_flow/flutter_flow_util.dart';
import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

/// Start HealthApi Group Code

class HealthApiGroup {
  static String getBaseUrl() =>
      'https://demystify-unripe-striking.ngrok-free.dev';
  static Map<String, String> headers = {
    'Accept': 'application/json',
  };
  static GetHealthCall getHealthCall = GetHealthCall();
  static GetHealthReadyCall getHealthReadyCall = GetHealthReadyCall();
  static GetVersionCall getVersionCall = GetVersionCall();
}

class GetHealthCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = HealthApiGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'GetHealth',
      apiUrl: '${baseUrl}/health',
      callType: ApiCallType.GET,
      headers: {
        'Accept': 'application/json',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GetHealthReadyCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = HealthApiGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'GetHealthReady',
      apiUrl: '${baseUrl}/health/ready',
      callType: ApiCallType.GET,
      headers: {
        'Accept': 'application/json',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GetVersionCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = HealthApiGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'GetVersion',
      apiUrl: '${baseUrl}/version',
      callType: ApiCallType.GET,
      headers: {
        'Accept': 'application/json',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

/// End HealthApi Group Code

/// Start AuthApi Group Code

class AuthApiGroup {
  static String getBaseUrl() =>
      'https://demystify-unripe-striking.ngrok-free.dev/api';
  static Map<String, String> headers = {
    'Accept': 'application/json',
    'Content-Type': 'application/json',
  };
  static LoginCall loginCall = LoginCall();
  static RefreshTokenCall refreshTokenCall = RefreshTokenCall();
  static LogoutCall logoutCall = LogoutCall();
  static GetMeCall getMeCall = GetMeCall();
}

class LoginCall {
  Future<ApiCallResponse> call({
    String? username = '',
    String? password = '',
    String? deviceId = '',
  }) async {
    final baseUrl = AuthApiGroup.getBaseUrl();

    final ffApiRequestBody = '''
{"username":${username == null ? 'null' : '"${username}"'},"password":${password == null ? 'null' : '"${password}"'},"deviceId":${deviceId == null ? 'null' : '"${deviceId}"'}}''';
    if (FFDataSource.isMockFor('xjkc2r71')) {
      return MockApiAdapter.loginCall(
        username: username,
        password: password,
        deviceId: deviceId,
      );
    }
    return ApiManager.instance.makeApiCall(
      callName: 'Login',
      apiUrl: '${baseUrl}/v1/auth/login',
      callType: ApiCallType.POST,
      headers: {
        'Accept': 'application/json',
        'Content-Type': 'application/json',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class RefreshTokenCall {
  Future<ApiCallResponse> call({
    String? refreshToken = '',
  }) async {
    final baseUrl = AuthApiGroup.getBaseUrl();

    final ffApiRequestBody = '''
{"refreshToken":${refreshToken == null ? 'null' : '"${refreshToken}"'}}''';
    if (FFDataSource.isMockFor('5f7xyzri')) {
      return MockApiAdapter.refreshTokenCall(
        refreshToken: refreshToken,
      );
    }
    return ApiManager.instance.makeApiCall(
      callName: 'RefreshToken',
      apiUrl: '${baseUrl}/v1/auth/refresh',
      callType: ApiCallType.POST,
      headers: {
        'Accept': 'application/json',
        'Content-Type': 'application/json',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class LogoutCall {
  Future<ApiCallResponse> call({
    String? token = '',
  }) async {
    final baseUrl = AuthApiGroup.getBaseUrl();

    if (FFDataSource.isMockFor('s7smz8kq')) {
      return MockApiAdapter.logoutCall(
        token: token,
      );
    }
    return ApiManager.instance.makeApiCall(
      callName: 'Logout',
      apiUrl: '${baseUrl}/v1/auth/logout',
      callType: ApiCallType.POST,
      headers: {
        'Accept': 'application/json',
        'Content-Type': 'application/json',
        'Authorization': 'Bearer <token>',
      },
      params: {},
      bodyType: BodyType.NONE,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GetMeCall {
  Future<ApiCallResponse> call({
    String? token = '',
  }) async {
    final baseUrl = AuthApiGroup.getBaseUrl();

    if (FFDataSource.isMockFor('84oh9ifh')) {
      return MockApiAdapter.getMeCall(
        token: token,
      );
    }
    return ApiManager.instance.makeApiCall(
      callName: 'GetMe',
      apiUrl: '${baseUrl}/v1/auth/me',
      callType: ApiCallType.GET,
      headers: {
        'Accept': 'application/json',
        'Content-Type': 'application/json',
        'Authorization': 'Bearer <token>',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

/// End AuthApi Group Code

/// Start IamApi Group Code

class IamApiGroup {
  static String getBaseUrl() =>
      'https://demystify-unripe-striking.ngrok-free.dev';
  static Map<String, String> headers = {
    'Accept': 'application/json',
  };
  static ListPermissionsCall listPermissionsCall = ListPermissionsCall();
}

class ListPermissionsCall {
  Future<ApiCallResponse> call({
    String? token = '',
  }) async {
    final baseUrl = IamApiGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'ListPermissions',
      apiUrl: '${baseUrl}/v1/iam/permissions',
      callType: ApiCallType.GET,
      headers: {
        'Accept': 'application/json',
        'Authorization': 'Bearer <token>',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

/// End IamApi Group Code

/// Start RtApi Group Code

class RtApiGroup {
  static String getBaseUrl() =>
      'https://demystify-unripe-striking.ngrok-free.dev/api';
  static Map<String, String> headers = {
    'Accept': 'application/json',
    'ngrok-skip-browser-warning': 'true',
  };
  static GetServerVersionCall getServerVersionCall = GetServerVersionCall();
  static HandheldLoginCall handheldLoginCall = HandheldLoginCall();
  static RefreshSessionCall refreshSessionCall = RefreshSessionCall();
  static GetMyProfileCall getMyProfileCall = GetMyProfileCall();
  static SignOutCall signOutCall = SignOutCall();
  static ServerInfoCall serverInfoCall = ServerInfoCall();
  static SignInCall signInCall = SignInCall();
  static RenewSessionCall renewSessionCall = RenewSessionCall();
  static MyProfileCall myProfileCall = MyProfileCall();
  static SignOutSessionCall signOutSessionCall = SignOutSessionCall();
}

class GetServerVersionCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = RtApiGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'GetServerVersion',
      apiUrl: '${baseUrl}/version',
      callType: ApiCallType.GET,
      headers: {
        'Accept': 'application/json',
        'ngrok-skip-browser-warning': 'true',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class HandheldLoginCall {
  Future<ApiCallResponse> call({
    String? username = '',
    String? password = '',
    String? deviceCode = '',
    String? deviceSecret = '',
  }) async {
    final baseUrl = RtApiGroup.getBaseUrl();

    final ffApiRequestBody = '''
{"username":${username == null ? 'null' : '"${username}"'},"password":${password == null ? 'null' : '"${password}"'},"clientType":"HANDHELD","device":{"code":${deviceCode == null ? 'null' : '"${deviceCode}"'},"secret":${deviceSecret == null ? 'null' : '"${deviceSecret}"'}}}''';
    return ApiManager.instance.makeApiCall(
      callName: 'HandheldLogin',
      apiUrl: '${baseUrl}/v1/auth/login',
      callType: ApiCallType.POST,
      headers: {
        'Accept': 'application/json',
        'ngrok-skip-browser-warning': 'true',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class RefreshSessionCall {
  Future<ApiCallResponse> call({
    String? refreshToken = '',
    String? deviceCode = '',
    String? deviceSecret = '',
  }) async {
    final baseUrl = RtApiGroup.getBaseUrl();

    final ffApiRequestBody = '''
{"refreshToken":${refreshToken == null ? 'null' : '"${refreshToken}"'},"device":{"code":${deviceCode == null ? 'null' : '"${deviceCode}"'},"secret":${deviceSecret == null ? 'null' : '"${deviceSecret}"'}}}''';
    return ApiManager.instance.makeApiCall(
      callName: 'RefreshSession',
      apiUrl: '${baseUrl}/v1/auth/refresh',
      callType: ApiCallType.POST,
      headers: {
        'Accept': 'application/json',
        'ngrok-skip-browser-warning': 'true',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GetMyProfileCall {
  Future<ApiCallResponse> call({
    String? token = '',
  }) async {
    final baseUrl = RtApiGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'GetMyProfile',
      apiUrl: '${baseUrl}/v1/auth/me',
      callType: ApiCallType.GET,
      headers: {
        'Accept': 'application/json',
        'ngrok-skip-browser-warning': 'true',
        'Authorization': 'Bearer <token>',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class SignOutCall {
  Future<ApiCallResponse> call({
    String? token = '',
  }) async {
    final baseUrl = RtApiGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'SignOut',
      apiUrl: '${baseUrl}/v1/auth/logout',
      callType: ApiCallType.POST,
      headers: {
        'Accept': 'application/json',
        'ngrok-skip-browser-warning': 'true',
        'Authorization': 'Bearer <token>',
      },
      params: {},
      bodyType: BodyType.NONE,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class ServerInfoCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = RtApiGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'ServerInfo',
      apiUrl: '${baseUrl}/version',
      callType: ApiCallType.GET,
      headers: {
        'Accept': 'application/json',
        'ngrok-skip-browser-warning': 'true',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class SignInCall {
  Future<ApiCallResponse> call({
    String? username = '',
    String? password = '',
    String? deviceCode = '',
    String? deviceSecret = '',
  }) async {
    final baseUrl = RtApiGroup.getBaseUrl();

    final ffApiRequestBody = '''
{"username":${username == null ? 'null' : '"${username}"'},"password":${password == null ? 'null' : '"${password}"'},"clientType":"HANDHELD","device":{"code":${deviceCode == null ? 'null' : '"${deviceCode}"'},"secret":${deviceSecret == null ? 'null' : '"${deviceSecret}"'}}}''';
    return ApiManager.instance.makeApiCall(
      callName: 'SignIn',
      apiUrl: '${baseUrl}/v1/auth/login',
      callType: ApiCallType.POST,
      headers: {
        'Accept': 'application/json',
        'ngrok-skip-browser-warning': 'true',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class RenewSessionCall {
  Future<ApiCallResponse> call({
    String? refreshToken = '',
    String? deviceCode = '',
    String? deviceSecret = '',
  }) async {
    final baseUrl = RtApiGroup.getBaseUrl();

    final ffApiRequestBody = '''
{"refreshToken":${refreshToken == null ? 'null' : '"${refreshToken}"'},"device":{"code":${deviceCode == null ? 'null' : '"${deviceCode}"'},"secret":${deviceSecret == null ? 'null' : '"${deviceSecret}"'}}}''';
    return ApiManager.instance.makeApiCall(
      callName: 'RenewSession',
      apiUrl: '${baseUrl}/v1/auth/refresh',
      callType: ApiCallType.POST,
      headers: {
        'Accept': 'application/json',
        'ngrok-skip-browser-warning': 'true',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class MyProfileCall {
  Future<ApiCallResponse> call({
    String? token = '',
  }) async {
    final baseUrl = RtApiGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'MyProfile',
      apiUrl: '${baseUrl}/v1/auth/me',
      callType: ApiCallType.GET,
      headers: {
        'Accept': 'application/json',
        'ngrok-skip-browser-warning': 'true',
        'Authorization': 'Bearer <token>',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class SignOutSessionCall {
  Future<ApiCallResponse> call({
    String? token = '',
  }) async {
    final baseUrl = RtApiGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'SignOutSession',
      apiUrl: '${baseUrl}/v1/auth/logout',
      callType: ApiCallType.POST,
      headers: {
        'Accept': 'application/json',
        'ngrok-skip-browser-warning': 'true',
        'Authorization': 'Bearer <token>',
      },
      params: {},
      bodyType: BodyType.NONE,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

/// End RtApi Group Code

class ApiPagingParams {
  int nextPageNumber = 0;
  int numItems = 0;
  dynamic lastResponse;

  ApiPagingParams({
    required this.nextPageNumber,
    required this.numItems,
    required this.lastResponse,
  });

  @override
  String toString() =>
      'PagingParams(nextPageNumber: $nextPageNumber, numItems: $numItems, lastResponse: $lastResponse,)';
}

String _toEncodable(dynamic item) {
  return item;
}

String _serializeList(List? list) {
  list ??= <String>[];
  try {
    return json.encode(list, toEncodable: _toEncodable);
  } catch (_) {
    if (kDebugMode) {
      print("List serialization failed. Returning empty list.");
    }
    return '[]';
  }
}

String _serializeJson(dynamic jsonVar, [bool isList = false]) {
  jsonVar ??= (isList ? [] : {});
  try {
    return json.encode(jsonVar, toEncodable: _toEncodable);
  } catch (_) {
    if (kDebugMode) {
      print("Json serialization failed. Returning empty json.");
    }
    return isList ? '[]' : '{}';
  }
}
