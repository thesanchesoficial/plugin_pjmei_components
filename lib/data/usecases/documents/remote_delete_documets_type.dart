import 'package:plugin_pjmei_components/data/http/http_client.dart';
import 'package:plugin_pjmei_components/data/http/http_error.dart';
import 'package:plugin_pjmei_components/domain/usecases/documents/delete_document_type.dart';
import 'package:plugin_pjmei_components/plugin_pjmei_components.dart';

class RemoteDeleteDocumentType implements DeleteDocumentType {
  final HttpClient httpClient;
  final String url;

  RemoteDeleteDocumentType({
    required this.httpClient,
    required this.url
  });

  @override
  Future<bool> exec() async {
    try {
      final httpResponse = await httpClient.request(
        url: url, 
        method: 'delete',
      );

      return httpResponse["code"] == 204 || httpResponse == true;
    } on HttpError catch(_) {
      throw DomainError.unexpected;
    }
  }
}