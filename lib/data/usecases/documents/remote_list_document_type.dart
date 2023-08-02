import 'package:plugin_pjmei_components/data/http/http_client.dart';
import 'package:plugin_pjmei_components/data/http/http_error.dart';
import 'package:plugin_pjmei_components/domain/usecases/documents/list_document_type.dart';
import 'package:plugin_pjmei_components/plugin_pjmei_components.dart';

class RemoteListDocumentType implements ListDocumentType {
  final HttpClient httpClient;
  final String url;

  RemoteListDocumentType({
    required this.httpClient,
    required this.url
  });

  @override
  Future<List<DocumentTypeEntity>> exec() async {
    try {
      final httpResponse = await httpClient.request(
        url: url, 
        method: 'get',
      );

      List temp = httpResponse["success"];
      List<DocumentTypeEntity> data = [];

      for (var element in temp) {
        data.add(DocumentTypeEntity.fromMap(element));
      }

      return data;
    } on HttpError catch(_) {
      throw DomainError.unexpected;
    }
  }
}