import '../../../../plugin_pjmei_components.dart';
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
        method: 'post',
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