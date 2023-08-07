import 'package:plugin_pjmei_components/plugin_pjmei_components.dart';

class RemoteCreateDocumentFilters implements CreateDocumentFilters {
  final HttpClient httpClient;
  final String url;

  RemoteCreateDocumentFilters({required this.httpClient, required this.url});

  @override
  Future<DocumentFilterEntity> exec(DocumentFilterEntity params,
      {bool log = false}) async {
    try {
      await httpClient.request(
        url: url,
        log: log,
        method: 'post',
        body: params.toMap(),
      );

      return DocumentFilterEntity();
    } on HttpError catch (_) {
      throw DomainError.unexpected;
    }
  }
}
