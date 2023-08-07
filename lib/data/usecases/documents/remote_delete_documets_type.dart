import 'package:plugin_pjmei_components/plugin_pjmei_components.dart';

class RemoteDeleteDocumentType implements DeleteDocumentType {
  final HttpClient httpClient;
  final String url;

  RemoteDeleteDocumentType({required this.httpClient, required this.url});

  @override
  Future<bool> exec({bool log = false}) async {
    try {
      final httpResponse = await httpClient.request(
        url: url,
        log: log,
        method: 'delete',
      );

      return httpResponse["code"] == 204 || httpResponse == true;
    } on HttpError catch (_) {
      throw DomainError.unexpected;
    }
  }
}
