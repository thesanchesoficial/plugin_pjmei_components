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
        ignoreToken: true,
        newReturnErrorMsg: true,
      );
      if ((httpResponse as Map<String, dynamic>).containsKey('error')) {
        if(httpResponse['error']['errors'][0]['type'] == 'notFound') {
          throw DomainError.userNotFound;
        }
        throw httpResponse['error']['message'];
      }
      return RemoteCheckIfUserExistsParams.fromMap(httpResponse['success']).toEntity();
    } catch (errorMsg) {
      throw errorMsg;
    }
  }
}

class RemoteCheckIfUserExistsParams {
  RemoteCheckIfUserExistsParams({
    required this.email,
    required this.name,
  });

  factory RemoteCheckIfUserExistsParams.fromMap(Map<String, dynamic> map) {
    return RemoteCheckIfUserExistsParams(
      email: map['email'] ?? '',
      name: map['name'] ?? '',
    );
  }

  factory RemoteCheckIfUserExistsParams.fromJson(String source) => RemoteCheckIfUserExistsParams.fromMap(json.decode(source));
  String email;
  String name;

  Map<String, dynamic> toMap() {
    return {
      'email': email,
      'name': name,
    };
  }

  String toJson() => json.encode(toMap());

  CheckIfUserExistsParams toEntity() {
    return CheckIfUserExistsParams(
      email: email,
      name: name,
    );
  }
}
