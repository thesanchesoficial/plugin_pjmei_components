import 'package:plugin_pjmei_components/plugin_pjmei_components.dart';

class RemoteListDocumentFilters implements ListDocumentFilters {
  final HttpClient httpClient;
  final String url;

  RemoteListDocumentFilters({
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