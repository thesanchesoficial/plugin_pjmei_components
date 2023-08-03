import 'package:plugin_pjmei_components/plugin_pjmei_components.dart';

class RemoteGetDocumentFilters implements GetDocumentFilters {
  RemoteGetDocumentFilters({required this.httpClient, required this.url});
  final HttpClient httpClient;
  final String url;

  Future<List<DocumentFilterEntity>> exec() async {
    try {
      final httpResponse =
          await httpClient.request(url: url, method: 'get', headers: {
        'Content-Type': 'application/json',
        'x-api-key': Environment.current!.apiKey,
      });
      final List temp = httpResponse['success']['documentSubtype'];
      final List<DocumentFilterEntity> data = [];

      temp.forEach((element) {
        data.add(DocumentFilterEntity.fromMap(element));
      });

      return data;
    } on HttpError catch (_) {
      throw DomainError.unexpected;
    }
  }
}
