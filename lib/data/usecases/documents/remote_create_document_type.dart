import 'package:plugin_pjmei_components/plugin_pjmei_components.dart';

class RemoteCreateDocumentType implements CreateDocumentType {
  final HttpClient httpClient;
  final String url;

  RemoteCreateDocumentType({required this.httpClient, required this.url});

  @override
  Future<DocumentTypeEntity> exec(DocumentTypeEntity params,
      {bool log = false}) async {
    try {
      await httpClient.request(
        url: url,
        log: log,
        method: 'post',
        body: params.toMap(),
      );

      return DocumentTypeEntity();
    } on HttpError catch (_) {
      throw DomainError.unexpected;
    }
  }
}
