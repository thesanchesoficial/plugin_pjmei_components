import 'package:plugin_pjmei_components/plugin_pjmei_components.dart';

class RemoteGetCcmei implements GetCcmei {
  RemoteGetCcmei({required this.httpClient, required this.url});
  final HttpClient httpClient;
  final String url;

  Future<CcmeiEntity> exec({bool log = false}) async {
    try {
      final httpResponse = await httpClient.request(
        url: url,
        method: 'get',
        newReturnErrorMsg: true,
      );
      if(httpResponse == null) {
        throw DomainError.waitingInfoSimples;
      } else if(httpResponse is String) {
        throw httpResponse;
      } else if((httpResponse as Map<String, dynamic>).containsKey('error')) {
        // final error = jsonDecode(httpResponse['error']);
        // error
        if(httpResponse['error']['errors'][0]['type'] == 'credentialsGov') {
          throw DomainError.credentialsGov;
        } else if (httpResponse['error']['errors'][0]['type'] == 'invalidCredentialsGov') {
          throw DomainError.invalidCredentialsGov;
        }
        throw httpResponse['error']['message'];
      }
      return CcmeiEntity.fromMap(httpResponse['success']['mei']);
    } catch (errorMsg) {
      throw errorMsg;
    }
  }
}
