import 'package:plugin_pjmei_components/data/http/http_client.dart';
import 'package:plugin_pjmei_components/data/http/http_error.dart';
import 'package:plugin_pjmei_components/plugin_pjmei_components.dart';
import 'package:plugin_pjmei_components/domain/usecases/mei_management/post_das.dart';

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
