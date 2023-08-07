import 'package:plugin_pjmei_components/plugin_pjmei_components.dart';

class RemoteCheckUser implements CheckUser {
  RemoteCheckUser({required this.httpClient, required this.url});
  final HttpClient httpClient;
  final String url;

  Future<CheckUserEntity> exec({bool log = false}) async {
    try {
      final httpResponse = await httpClient.request(
        url: url,
        log: log,
        method: 'get',
      );
      return CheckUserEntity.fromMap(httpResponse['success']['itens']);
    } on HttpError catch (_) {
      throw DomainError.unexpected;
    }
  }
}
