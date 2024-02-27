import 'dart:convert';

import '../../../../plugin_pjmei_components.dart';
import '../../domain/usecase/create_document.dart';

import 'package:http/http.dart' as http;
import 'package:http_parser/http_parser.dart';

class RemoteAddDocument implements AddDocument {
  final HttpClient httpClient;
  final String url;

  RemoteAddDocument({
    required this.httpClient,
    required this.url
  });

  @override
  Future<DocumentEntity> exec(DocumentEntity params, List<int>? file) async {
    try {
      var req = http.MultipartRequest('POST', Uri.parse(url));
      req.headers['Content-Type'] = 'multipart/form-data';
      req.headers['x_api_key'] = '${Environment.current?.apiKey}';
      req.headers['Authorization'] = 'Bearer ${userSM.user?.accessToken}';
      req.files.add(
        http.MultipartFile.fromBytes(
          'file', file!,
          contentType: MediaType('application', 'pdf'),
          filename: "arquivo.pdf",
        ),
      );

      req.fields['companyId'] = params.companyId;
      req.fields['category'] = params.category;
      final streamedResponse = await req.send();

      if (streamedResponse.statusCode == 200) {
        var responseData = await streamedResponse.stream.toBytes();
        var responseString = String.fromCharCodes(responseData);
        var decodedResponse = jsonDecode(responseString);
        final doc = DocumentEntity.fromMap(decodedResponse);
        return doc;
      } else {
        throw DomainError.unexpected;
      }
    } catch(e) {
      throw e;
    }
  }
}