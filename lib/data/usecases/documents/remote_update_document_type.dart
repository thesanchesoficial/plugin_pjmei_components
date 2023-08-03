import 'package:plugin_pjmei_components/plugin_pjmei_components.dart';

class RemoteUpdateDocumentType implements UpdateDocumentType {
  final HttpClient httpClient;
  final String url;

  RemoteUpdateDocumentType({
    required this.httpClient,
    required this.url
  });

  @override
  Future<DocumentTypeEntity> exec(DocumentTypeEntity params) async {
    try {
      await httpClient.request(
        url: url, 
        method: 'put',
        body: params.toMap(),
      );

      return DocumentTypeEntity();
    } on HttpError catch(_) {
      throw DomainError.unexpected;
    }
  }
}