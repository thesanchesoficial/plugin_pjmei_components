import 'package:plugin_pjmei_components/plugin_pjmei_components.dart';

class RemoteAddSecret implements AddSecret {
  RemoteAddSecret({required this.httpClient, required this.url});
  final HttpClient httpClient;
  final String url;

  Future<SecretEntity> exec(SecretEntity params, {bool log = false}) async {
    try {
      final String? passwordCrypt = await encriptarTexto(params.password);
      final httpResponse = await httpClient.request(
        url: url,
        log: log,
        method: 'post',
        body: {
          'description': params.description,
          'username': params.username,
          'password': passwordCrypt,
          'companyId': companySM.company?.id,
          'type': params.type,
        },
        newReturnErrorMsg: true,
      );
      if ((httpResponse as Map<String, dynamic>).containsKey('error')) {
        throw httpResponse['error']['message'];
      }
      return SecretEntity.fromMap(httpResponse['success']['secret']);
    } catch (e) {
      throw e;
    }
  }
}
