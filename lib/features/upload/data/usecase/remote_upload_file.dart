import 'dart:convert';

import '../../../../plugin_pjmei_components.dart';

import 'package:http/http.dart' as http;

import '../../domain/usecase/upload_file.dart';

class RemoteUploadFile implements UploadFile {
  final HttpClient httpClient;
  final String url;

  RemoteUploadFile({
    required this.httpClient,
    required this.url
  });

  @override
  Future<FileEntity> exec(List<int>? file, {bool log = false}) async {
    try {
      var req = http.MultipartRequest('POST', Uri.parse(url));
      req.headers['Content-Type'] = 'multipart/form-data';
      req.headers['x_api_key'] = '${Environment.current?.apiKey}';
      req.headers['Authorization'] = 'Bearer ${userSM.user?.accessToken}';
      req.files.add(http.MultipartFile.fromBytes('file', file!));
      final streamedResponse = await req.send();

      if (streamedResponse.statusCode == 200 || streamedResponse.statusCode == 201) {
        var responseData = await streamedResponse.stream.toBytes();
        var responseString = String.fromCharCodes(responseData);
        var decodedResponse = jsonDecode(responseString);
        if(decodedResponse['success'] != null) {
          return FileEntity.fromMap(decodedResponse['success']);
        } else if (decodedResponse['url'] != null) {
          return FileEntity(url: decodedResponse['url']);
        } else {
          throw decodedResponse;
        }
      } else {
        throw streamedResponse.statusCode;
      }
    } catch(e) {
      throw e;
    }
  }
}