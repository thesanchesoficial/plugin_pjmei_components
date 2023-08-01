import 'package:plugin_pjmei_components/data/http/http_client.dart';
import 'package:plugin_pjmei_components/data/http/http_error.dart';
import 'package:plugin_pjmei_components/plugin_pjmei_components.dart';
import 'package:plugin_pjmei_components/domain/usecases/mei_management/post_notafiscal.dart';

class RemotePostNotaFiscal implements PostNotaFiscal {
  final HttpClient? httpClient;
  final String? url;

  RemotePostNotaFiscal({this.httpClient, this.url});

  Future<NotaFiscalEntity> exec(NotaFiscalEntity params) async {
    try {
      final httpResponse = await httpClient?.request(
          url: url ?? '',
          method: 'post',
          body: params.toMap(),
          headers: {
            'Content-Type': 'application/json',
            'x-api-key': Environment.current?.apiKey,
            'company_id': companySM.company?.id
          });
      return NotaFiscalEntity.fromMap(httpResponse['success']);
    } on HttpError catch (_) {
      throw DomainError.unexpected;
    }
  }
}
