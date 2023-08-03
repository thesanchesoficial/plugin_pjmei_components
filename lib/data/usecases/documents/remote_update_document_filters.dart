import 'package:plugin_pjmei_components/plugin_pjmei_components.dart';

class RemoteUpdateDocumentFilters implements UpdateDocumentFilters {
  final HttpClient httpClient;
  final String url;

  RemoteUpdateDocumentFilters ({
    required this.httpClient,
    required this.url
  });

  @override
  Future<DocumentFilterEntity> exec(DocumentFilterEntity params) async {
    try {
      await httpClient.request(
        url: url, 
        method: 'put',
        body: params.toMap(),
      );

      return DocumentFilterEntity();
    } on HttpError catch(_) {
      throw DomainError.unexpected;
    }
  }
}