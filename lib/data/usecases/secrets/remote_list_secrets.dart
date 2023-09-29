import 'package:plugin_pjmei_components/plugin_pjmei_components.dart';

class RemoteListSecrets implements ListSecrets {
  RemoteListSecrets({required this.httpClient, required this.url});
  final HttpClient httpClient;
  final String url;

  Future<List<SecretEntity>> exec({bool log = false}) async {
    try {
      final httpResponse = await httpClient.request(
        url: url,
        log: log,
        method: 'get',
        newReturnErrorMsg: true,
      );
      if ((httpResponse as Map<String, dynamic>).containsKey('error')) {
        throw httpResponse['error']['message'];
      }
      final List<SecretEntity> _list = [];
      httpResponse['success']['secret'].map((e) {
        _list.add(SecretEntity.fromMap(e));
      }).toList();
      return _list;
    } catch (e) {
      throw e;
    }
  }
}
