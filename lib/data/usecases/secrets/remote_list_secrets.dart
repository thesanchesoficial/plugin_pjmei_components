import 'package:plugin_pjmei_components/data/http/http.dart';
import 'package:plugin_pjmei_components/plugin_pjmei_components.dart';
import 'package:plugin_pjmei_components/domain/usecases/secrets/list_secrets.dart';

class RemoteListSecrets implements ListSecrets {
  RemoteListSecrets({required this.httpClient, required this.url});
  final HttpClient httpClient;
  final String url;

  Future<List<SecretEntity>> exec() async {
    try {
      final httpResponse = await httpClient.request(
        url: url,
        method: 'get',
      );
      final List<SecretEntity> _list = [];
      httpResponse['success'].map((e) {
        _list.add(SecretEntity.fromMap(e));
      }).toList();
      return _list;
    } on HttpError catch (_) {
      throw DomainError.unexpected;
    }
  }
}
