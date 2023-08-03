import 'package:plugin_pjmei_components/plugin_pjmei_components.dart';
import 'package:http/http.dart' as http;

class RemoteUpdateDocuments implements UpdateDocuments {
  final HttpClient httpClient;
  final String url;

  RemoteUpdateDocuments({
    required this.httpClient,
    required this.url
  });

  @override
  Future<bool> exec(DocumentEntity params) async {
    try {
      var req = http.MultipartRequest('PUT', Uri.parse(url));
      req.headers['Content-Type'] = 'multipart/form-data';
      req.headers['x_api_key'] = '${Environment.current?.apiKey}';
      req.headers['Authorization'] = 'Bearer ${userSM.user?.authorization}';
      req.fields['cnpj'] = params.cnpj ?? '';
      req.fields['due_date'] = params.dueDate?.toLocal().toString() ?? '';
      req.fields['value'] = params.value.toString();
      req.fields['status'] = 'devedor';
      req.fields['url'] = params.url!;
      final streamedResponse = await req.send();
    
      return streamedResponse.statusCode == 200;
    } on HttpError catch(_) {
      throw DomainError.unexpected;
    }
  }
}