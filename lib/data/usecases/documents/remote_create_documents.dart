import 'package:plugin_pjmei_components/data/http/http_client.dart';
import 'package:plugin_pjmei_components/data/http/http_error.dart';
import 'package:plugin_pjmei_components/domain/usecases/documents/create_documents.dart';
import 'package:plugin_pjmei_components/plugin_pjmei_components.dart';
import 'package:http/http.dart' as http;
import 'package:http_parser/http_parser.dart';


class RemoteCreateDocuments implements CreateDocuments {
  final HttpClient httpClient;
  final String url;

  RemoteCreateDocuments({
    required this.httpClient,
    required this.url
  });

  @override
  Future<bool> exec(DocumentEntity params, List<int>? file) async {
    try {
      var req = http.MultipartRequest('POST', Uri.parse(url));
      req.headers['Content-Type'] = 'multipart/form-data';
      req.headers['x_api_key'] = '${Environment.current?.apiKey}';
      req.headers['Authorization'] = 'Bearer ${userSM.user?.authorization}';
      req.files.add(http.MultipartFile.fromBytes(
        'file', file!,
        contentType: MediaType('application', 'pdf'),
        filename: "arquivo.pdf"),
      );
      req.fields['cnpj'] = params.cnpj ?? '';
      req.fields['due_date'] = params.dueDate?.toLocal().toString() ?? '';
      req.fields['value'] = params.value.toString();
      req.fields['status'] = 'devedor';
      final streamedResponse = await req.send();
      return streamedResponse.statusCode == 200;
    } on HttpError catch(_) {
      throw DomainError.unexpected;
    }
  }
}