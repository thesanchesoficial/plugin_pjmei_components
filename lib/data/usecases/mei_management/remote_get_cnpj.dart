import 'package:plugin_pjmei_components/plugin_pjmei_components.dart';

class RemoteGetCnpj implements GetCnpj {
  final HttpClient httpClient;
  final String url;
  final String method;

  RemoteGetCnpj({required this.httpClient, required this.url, this.method = 'get'});

  Future<CnpjEntity> exec({bool log = false}) async {
    try {
      final httpResponse = await httpClient.request(
        url: url,
        method: method,
        newReturnErrorMsg: true,
      );
      if ((httpResponse as Map<String, dynamic>).containsKey('error')) {
        throw httpResponse['error']['message'];
      }
      return CnpjEntity.fromMap(httpResponse['success']['cnpj']);
    } catch (errorMsg) {
      throw errorMsg;
    }
  }
}
