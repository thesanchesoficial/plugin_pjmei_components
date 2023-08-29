import 'package:plugin_pjmei_components/plugin_pjmei_components.dart';

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