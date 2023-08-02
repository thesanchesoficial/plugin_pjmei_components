import 'package:plugin_pjmei_components/data/http/http.dart';
import 'package:plugin_pjmei_components/domain/usecases/nota_fiscal/update_nota_fiscal.dart';
import 'package:plugin_pjmei_components/plugin_pjmei_components.dart';

class RemoteUpdateNotaFiscal implements UpdateNotaFiscal {
  final HttpClient httpClient;
  final String url;

  RemoteUpdateNotaFiscal({
    required this.httpClient,
    required this.url
  });

  @override
  Future<NotaFiscalEntity> exec(NotaFiscalEntity nota) async {
    try {
      final httpResponse = await httpClient.request(
        url: url, 
        method: 'put',
        body: {
          "status": nota.link?.isNotEmpty ?? false,
          "link": nota.link
        },
      );
      return NotaFiscalEntity.fromMap(httpResponse["success"]);
    } on HttpError catch(_) {
      throw DomainError.unexpected;
    }
  }
}