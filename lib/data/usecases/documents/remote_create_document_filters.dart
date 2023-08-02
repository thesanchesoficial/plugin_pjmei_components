import 'package:plugin_pjmei_components/data/http/http_client.dart';
import 'package:plugin_pjmei_components/data/http/http_error.dart';
import 'package:plugin_pjmei_components/domain/usecases/documents/create_document_filters.dart';
import 'package:plugin_pjmei_components/plugin_pjmei_components.dart';

class RemoteCreateDocumentFilters implements CreateDocumentFilters {
  final HttpClient httpClient;
  final String url;

  RemoteCreateDocumentFilters ({
    required this.httpClient,
    required this.url
  });

  @override
  Future<DocumentFilterEntity> exec(DocumentFilterEntity params) async {
    try {
      await httpClient.request(
        url: url, 
        method: 'post',
        body: params.toMap(),
      );

      return DocumentFilterEntity();
    } on HttpError catch(_) {
      throw DomainError.unexpected;
    }
  }
}