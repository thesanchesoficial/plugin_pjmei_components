import 'package:plugin_pjmei_components/plugin_pjmei_components.dart';

class RemoteUpdateDocument implements UpdateDocument {
  final HttpClient httpClient;
  final String url;

  RemoteUpdateDocument({
    required this.httpClient,
    required this.url
  });

  @override
  Future<DocumentEntity> exec(DocumentEntity params, {bool log = false}) async {
    try {
      final httpResponse = await httpClient.request(
        url: url,
        log: log,
        method: 'put',
        body: params.toMap(),
        newReturnErrorMsg: true,
      );
      if ((httpResponse as Map<String, dynamic>).containsKey('error')) {
        throw httpResponse['error']['message'];
      }
      if(httpResponse['success']['document'] != null) {
        return DocumentEntity.fromMap(httpResponse['success']['document']);
      }
      return DocumentEntity.fromMap(httpResponse['success']);
    } catch (e) {
      throw e;
    }
  }
}