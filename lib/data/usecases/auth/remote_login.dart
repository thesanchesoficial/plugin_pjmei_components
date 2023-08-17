import 'dart:convert';
import 'package:plugin_pjmei_components/plugin_pjmei_components.dart';

class RemoteLogin implements Login {
  RemoteLogin({required this.httpClient, required this.url});
  final HttpClient httpClient;
  final String url;

  Future<UserEntity> exec(LoginParams params, {bool log = false}) async {
    try {
      final httpResponse = await httpClient.request(
        url: url,
        log: log,
        method: 'post',
        ignoreToken: true,
        newReturnErrorMsg: true,
        body: RemoteLoginParams.fromDomain(params).toMap(),
      );
      UserEntity temp = UserEntity.fromMap(httpResponse['success']['user']);
      temp = temp.copyWith(
        refreshToken: httpResponse['success']['refreshToken'],
        accessToken: httpResponse['success']['accessToken'],
      );
      return temp;
    } catch (errorMsg) {
      throw errorMsg;
    }
  }
}

class RemoteLoginParams {
  RemoteLoginParams({
    required this.email,
    required this.password,
  });

  factory RemoteLoginParams.fromMap(Map<String, dynamic> map) {
    return RemoteLoginParams(
      email: map['email'] ?? '',
      password: map['password'] ?? '',
    );
  }

  factory RemoteLoginParams.fromJson(String source) =>
      RemoteLoginParams.fromMap(json.decode(source));

  factory RemoteLoginParams.fromDomain(LoginParams params) {
    return RemoteLoginParams(
      email: params.email,
      password: params.password,
    );
  }
  String email;
  String password;

  Map<String, dynamic> toMap() {
    return {
      'email': email,
      'password': password,
    };
  }

  String toJson() => json.encode(toMap());

  LoginParams toEntity() {
    return LoginParams(
      email: email,
      password: password,
    );
  }
}
