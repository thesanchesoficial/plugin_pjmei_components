import 'package:plugin_pjmei_components/plugin_pjmei_components.dart';

import '../../domain/usecase/get_notafiscal.dart';

class RemoteGetNotaFiscal implements GetNotaFiscal {
  final HttpClient httpClient;
  final String url;

  RemoteGetNotaFiscal({required this.httpClient, required this.url});

  Future<List<NotaFiscalEntity>> exec({bool log = false}) async {
    try {
      final httpResponse = await httpClient.request(
        url: url,
        method: 'get',
        newReturnErrorMsg: true,
      );
      final List temp = httpResponse['success'];
      final List<NotaFiscalEntity> data = [];

      temp.forEach((element) {
        data.add(NotaFiscalEntity.fromMap(element));
      });

      return data;
    } on HttpError catch (_) {
      throw DomainError.unexpected;
    }
  }
}
