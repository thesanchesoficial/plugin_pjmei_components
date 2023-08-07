import 'package:plugin_pjmei_components/plugin_pjmei_components.dart';

class RemotePostNotaFiscal implements PostNotaFiscal {
  final HttpClient? httpClient;
  final String? url;

  RemotePostNotaFiscal({this.httpClient, this.url});

  Future<NotaFiscalEntity> exec(NotaFiscalEntity params, {bool log = false}) async {
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
