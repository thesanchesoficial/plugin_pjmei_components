import 'package:plugin_pjmei_components/plugin_pjmei_components.dart';

class RemoteListNotasFiscais implements ListNotasFiscais {
  final HttpClient httpClient;
  final String url;

  RemoteListNotasFiscais({required this.httpClient, required this.url});

  @override
  Future<List<NotaFiscalEntity>> exec({bool log = false}) async {
    try {
      final httpResponse = await httpClient.request(
        url: url,
        log: log,
        method: 'get',
      );
      return (httpResponse["success"] as List)
          .map((e) => NotaFiscalEntity.fromMap(e))
          .toList();
    } on HttpError catch (_) {
      throw DomainError.unexpected;
    }
  }
}
