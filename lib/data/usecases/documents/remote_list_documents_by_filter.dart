import 'package:plugin_pjmei_components/plugin_pjmei_components.dart';

class RemoteListDocumentsByFilter implements ListDocuments {
  final HttpClient httpClient;
  final String url;

  RemoteListDocumentsByFilter({
    required this.httpClient,
    required this.url
  });

  @override
  Future<List<DocumentEntity>> exec() async {
    try {
      final httpResponse = await httpClient.request(
        url: url, 
        method: 'get',
        // headers: {
        //   'x_api_key': BackofficeApp.current!.apiKey,
        //   'Content-Type': 'application/json'
        // }
      );

      List temp = httpResponse["success"];
      List<DocumentEntity> data = temp.map((e) => DocumentEntity.fromMap(e)).toList();

      return data;
    } on HttpError catch(_) {
      throw DomainError.unexpected;
    }
  }
}