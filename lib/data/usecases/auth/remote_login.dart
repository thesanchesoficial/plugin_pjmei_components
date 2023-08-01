import 'dart:convert';
import 'package:plugin_pjmei_components/data/http/http.dart';
import 'package:plugin_pjmei_components/domain/usecases/usecases.dart';
import 'package:plugin_pjmei_components/plugin_pjmei_components.dart';

class RemoteLogin implements Login {
  RemoteLogin({required this.httpClient, required this.url});
  final HttpClient httpClient;
  final String url;

  Future<UserEntity> exec(LoginParams params) async {
    try {
      final httpResponse = await httpClient.request(
          url: url,
          method: 'post',
          body: RemoteLoginParams.fromDomain(params).toMap());
      UserEntity temp = UserEntity.fromMap(httpResponse['success']['usuario']);
      temp = temp.copyWith(
        senha: params.password,
        authorization: httpResponse['success']['access_token'],
      );
      return temp;
    } on HttpError catch (error) {
      if (error == HttpError.notFound) {
        throw DomainError.invalidCredentials;
      }
      throw DomainError.unexpected;
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
