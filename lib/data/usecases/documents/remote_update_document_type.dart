import 'package:plugin_pjmei_components/plugin_pjmei_components.dart';

class RemoteUpdateDocumentType implements UpdateDocumentType {
  final HttpClient httpClient;
  final String url;

  RemoteUpdateDocumentType({required this.httpClient, required this.url});

  @override
  Future<DocumentTypeEntity> exec(DocumentTypeEntity params,
      {bool log = false}) async {
    try {
      await httpClient.request(
        url: url,
        log: log,
        method: 'put',
        body: params.toMap(),
      );

      return DocumentTypeEntity();
    } on HttpError catch (_) {
      throw DomainError.unexpected;
    }
  }
}
