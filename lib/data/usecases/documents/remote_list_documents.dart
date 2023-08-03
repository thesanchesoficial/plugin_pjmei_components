import 'package:plugin_pjmei_components/plugin_pjmei_components.dart';

class RemoteListDocuments implements ListDocuments {
  final HttpClient httpClient;
  final String url;

  RemoteListDocuments({
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
      List<DocumentEntity> data = [];

      for (var element in temp) {
        Map<String, dynamic> filtro = {'id': element['filtro'][0]['id_filter'], 'name': element['filtro'][0]['filter_name']};
        Map<String, dynamic> tipo = {'id': element['tipo'][0]['id_type'], 'name': element['tipo'][0]['type_name']};

        Map<String, dynamic> document = {...element, 'filtro': filtro, 'tipo': tipo};

        data.add(DocumentEntity.fromMap(document));
      }

      return data;
    } on HttpError catch(_) {
      throw DomainError.unexpected;
    }
  }
}