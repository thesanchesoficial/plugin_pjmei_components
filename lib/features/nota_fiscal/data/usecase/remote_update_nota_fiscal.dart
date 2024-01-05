import 'package:plugin_pjmei_components/plugin_pjmei_components.dart';

import '../../domain/entity/nota_fiscal_entity.dart';
import '../../domain/usecase/update_nota_fiscal.dart';

class RemoteUpdateNotaFiscal implements UpdateNotaFiscal {
  final HttpClient httpClient;
  final String url;

  RemoteUpdateNotaFiscal({required this.httpClient, required this.url});

  @override
  Future<NotaFiscalEntity> exec(NotaFiscalEntity nota,
      {bool log = false}) async {
    try {
      final httpResponse = await httpClient.request(
        url: url,
        log: log,
        method: 'put',
        body: {"status": nota.link?.isNotEmpty ?? false, "link": nota.link},
      );
      return NotaFiscalEntity.fromMap(httpResponse["success"]);
    } on HttpError catch (_) {
      throw DomainError.unexpected;
    }
  }
}
