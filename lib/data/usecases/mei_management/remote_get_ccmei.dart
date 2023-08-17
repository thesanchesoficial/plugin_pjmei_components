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
      if ((httpResponse as Map<String, dynamic>).containsKey('error')) {
        throw httpResponse['error']['message'];
      }
      return CcmeiEntity.fromMap(httpResponse['success']['ccmei']);
    } catch (errorMsg) {
      throw errorMsg;
    }
  }
}
