import 'package:plugin_pjmei_components/plugin_pjmei_components.dart';

class RemoteGetDocumentFiltersByType implements ListDocumentFilters {
  final HttpClient httpClient;
  final String url;

  RemoteGetDocumentFiltersByType({required this.httpClient, required this.url});

  @override
  Future<List<DocumentFilterEntity>> exec({bool log = false}) async {
    try {
      final httpResponse = await httpClient.request(
        url: url,
        log: log,
        method: 'get',
      );

      List temp = httpResponse["success"][0]["filtro"];
      List<DocumentFilterEntity> data = [];

      for (var element in temp) {
        data.add(DocumentFilterEntity.fromMap(element));
      }

      return data;
    } on HttpError catch (_) {
      throw DomainError.unexpected;
    }
  }
}
