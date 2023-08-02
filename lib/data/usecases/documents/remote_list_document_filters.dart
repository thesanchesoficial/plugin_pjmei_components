import 'package:plugin_pjmei_components/data/http/http_client.dart';
import 'package:plugin_pjmei_components/data/http/http_error.dart';
import 'package:plugin_pjmei_components/domain/usecases/documents/list_document_filters.dart';
import 'package:plugin_pjmei_components/plugin_pjmei_components.dart';

class RemoteGetDocumentFilters implements ListDocumentFilters {
  final HttpClient httpClient;
  final String url;

  RemoteGetDocumentFilters({
    required this.httpClient,
    required this.url
  });

  @override
  Future<List<DocumentFilterEntity>> exec() async {
    try {
      final httpResponse = await httpClient.request(
        url: url, 
        method: 'get',
      );

      List temp = httpResponse["success"];
      List<DocumentFilterEntity> data = [];

      for (var element in temp) {
        data.add(DocumentFilterEntity.fromMap(element));
      }

      return data;
    } on HttpError catch(_) {
      throw DomainError.unexpected;
    }
  }
}