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
      }
      if ((httpResponse as Map<String, dynamic>).containsKey('error')) {
        if(httpResponse['error']['errors'][0]['type'] == "no_mei") {
          throw DomainError.noMei;
        }
        throw httpResponse['error']['message'];
      }
      return CcmeiEntity.fromMap(httpResponse['success']['mei']);
    } catch (errorMsg) {
      throw errorMsg;
    }
  }
}
