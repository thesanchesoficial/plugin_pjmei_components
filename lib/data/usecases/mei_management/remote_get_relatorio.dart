import 'package:plugin_pjmei_components/plugin_pjmei_components.dart';

class RemoteGetRelatorio implements GetRelatorioMeiEntity {
  final HttpClient? httpClient;
  final String? url;

  RemoteGetRelatorio({this.httpClient, this.url});

  Future<RelatorioMeiEntity> exec() async {
    // print(url);
    try {
      final httpResponse =
          await httpClient?.request(url: url ?? '', method: 'get', headers: {
        'Content-Type': 'application/json',
        'x-api-key': Environment.current?.apiKey,
      });

      return RelatorioMeiEntity.fromMap(httpResponse['success']);
    } on HttpError catch (_) {
      throw DomainError.unexpected;
    }
  }
}
