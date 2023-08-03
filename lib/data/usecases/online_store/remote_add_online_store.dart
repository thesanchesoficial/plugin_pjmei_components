import 'package:plugin_pjmei_components/plugin_pjmei_components.dart';

class RemoteAddOnlineStore implements AddOnlineStore {
  RemoteAddOnlineStore({required this.httpClient, required this.url});
  final HttpClient httpClient;
  final String url;

  Future<EstablishmentEntity> exec(Map params) async {
    try {
      final httpResponse =
          await httpClient.request(url: url, method: 'post', body: params);
      return EstablishmentEntity.fromMap(httpResponse['success']);
    } on HttpError catch (_) {
      throw DomainError.unexpected;
    }
  }
}
