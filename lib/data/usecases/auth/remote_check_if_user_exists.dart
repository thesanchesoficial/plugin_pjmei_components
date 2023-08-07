import 'dart:convert';
import 'package:plugin_pjmei_components/plugin_pjmei_components.dart';

class RemoteCheckIfUserExists implements CheckIfUserExists {
  RemoteCheckIfUserExists({required this.httpClient, required this.url});
  final HttpClient httpClient;
  final String url;

  Future<CheckIfUserExistsParams> exec({bool log = false}) async {
    try {
      final httpResponse = await httpClient.request(
        url: url,
        log: log,
        method: 'get',
      );
      return RemoteCheckIfUserExistsParams.fromMap(httpResponse['success'])
          .toEntity();
    } on HttpError catch (error) {
      if (error == HttpError.notFound) {
        throw DomainError.userNotFound;
      }
      throw DomainError.unexpected;
    }
  }
}

class RemoteCheckIfUserExistsParams {
  RemoteCheckIfUserExistsParams({
    required this.email,
    required this.nome,
  });

  factory RemoteCheckIfUserExistsParams.fromMap(Map<String, dynamic> map) {
    return RemoteCheckIfUserExistsParams(
      email: map['email'] ?? '',
      nome: map['nome'] ?? '',
    );
  }

  factory RemoteCheckIfUserExistsParams.fromJson(String source) =>
      RemoteCheckIfUserExistsParams.fromMap(json.decode(source));
  String email;
  String nome;

  Map<String, dynamic> toMap() {
    return {
      'email': email,
      'nome': nome,
    };
  }

  String toJson() => json.encode(toMap());

  CheckIfUserExistsParams toEntity() {
    return CheckIfUserExistsParams(
      email: email,
      nome: nome,
    );
  }
}
