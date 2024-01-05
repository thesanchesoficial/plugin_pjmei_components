import 'package:plugin_pjmei_components/test/data/http/http_client.dart';

import '../../domain/entity/document_entity.dart';
import '../../domain/usecase/create_document.dart';

class RemoteAddDocument implements AddDocument {
  final HttpClient httpClient;
  final String url;

  RemoteAddDocument({
    required this.httpClient,
    required this.url
  });

  @override
  Future<DocumentEntity> exec(DocumentEntity params, {bool log = false}) async {
    try {
      final httpResponse = await httpClient.request(
        url: url,
        log: log,
        method: 'post',
        body: params.toMap(),
        newReturnErrorMsg: true,
      );
      if ((httpResponse as Map<String, dynamic>).containsKey('error')) {
        throw httpResponse['error']['message'];
      }
      return DocumentEntity.fromMap(httpResponse['success']['document']);
    } catch (e) {
      throw e;
    }
  }
}