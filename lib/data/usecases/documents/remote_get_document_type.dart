import 'package:plugin_pjmei_components/plugin_pjmei_components.dart';

class RemoteGetDocumentType implements GetDocumentType {
  RemoteGetDocumentType({required this.httpClient, required this.url});
  final HttpClient httpClient;
  final String url;

  Future<List<DocumentTypeEntity>> exec({bool log = false}) async {
    try {
      final httpResponse =
          await httpClient.request(url: url, log: log, method: 'get', headers: {
        'Content-Type': 'application/json',
        'x-api-key': Environment.current!.apiKey,
      });
      final List temp = httpResponse['success']['documentType'];
      final List<DocumentTypeEntity> data = [];

      temp.forEach((element) {
        data.add(DocumentTypeEntity.fromMap(element));
      });

      return data;
    } on HttpError catch (_) {
      throw DomainError.unexpected;
    }
  }
}
