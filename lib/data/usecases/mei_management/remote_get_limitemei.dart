import 'package:plugin_pjmei_components/plugin_pjmei_components.dart';

class RemoteGetLimiteMei implements GetLimiteMei {
  RemoteGetLimiteMei({required this.httpClient, required this.url});
  final HttpClient httpClient;
  final String url;

  Future<LimiteMeiEntity> exec({bool log = false}) async {
    try {
      final httpResponse = await httpClient.request(
        url: url,
        method: 'get',
      );
      return LimiteMeiEntity.fromMap(httpResponse['success']);
    } on HttpError catch (_) {
      throw DomainError.unexpected;
    }
  }
}
