import 'package:plugin_pjmei_components/plugin_pjmei_components.dart';

class RemotePostDas implements PostDas {
  final HttpClient? httpClient;
  final String? url;

  RemotePostDas({this.httpClient, this.url});

  Future<DasEntity> exec() async {
    try {
      final httpResponse =
          await httpClient?.request(url: url ?? '', method: 'post', headers: {
        'Content-Type': 'application/json',
        'x-api-key': Environment.current?.apiKey,
      }, body: {});

      final DasEntity dasentity = DasEntity.fromMap(httpResponse['success']);
      return dasentity;
    } on HttpError catch (_) {
      throw DomainError.unexpected;
    }
  }
}
