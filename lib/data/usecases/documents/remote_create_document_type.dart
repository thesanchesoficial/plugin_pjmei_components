import 'package:plugin_pjmei_components/data/http/http_client.dart';
import 'package:plugin_pjmei_components/data/http/http_error.dart';
import 'package:plugin_pjmei_components/domain/usecases/documents/create_document_type.dart';
import 'package:plugin_pjmei_components/plugin_pjmei_components.dart';

class RemoteCreateDocumentType implements CreateDocumentType {
  final HttpClient httpClient;
  final String url;

  RemoteCreateDocumentType({
    required this.httpClient,
    required this.url
  });

  @override
  Future<DocumentTypeEntity> exec(DocumentTypeEntity params) async {
    try {
      await httpClient.request(
        url: url, 
        method: 'post',
        body: params.toMap(),
      );

      return DocumentTypeEntity();
    } on HttpError catch(_) {
      throw DomainError.unexpected;
    }
  }
}