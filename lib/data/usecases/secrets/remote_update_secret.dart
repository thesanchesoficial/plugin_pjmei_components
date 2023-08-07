import 'package:plugin_pjmei_components/plugin_pjmei_components.dart';

class RemoteUpdateSecret implements UpdateSecret {
  RemoteUpdateSecret({required this.httpClient, required this.url});
  final HttpClient httpClient;
  final String url;

  Future<SecretEntity> exec(SecretEntity params, {bool log = false}) async {
    try {
      final String? passwordCrypt = await encriptarTexto(params.password);
      final httpResponse =
          await httpClient.request(url: url, log: log, method: 'put', body: {
        'id': params.id,
        'description': params.description,
        'username': params.username,
        'password': passwordCrypt,
      });
      return SecretEntity.fromMap(httpResponse['success']);
    } on HttpError catch (_) {
      throw DomainError.unexpected;
    }
  }
}
