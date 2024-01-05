import 'package:plugin_pjmei_components/test/data/http/http_client.dart';

import '../../domain/usecase/put_ccmei.dart';

class RemotePutCcmei implements PutCcmei {
  RemotePutCcmei({required this.httpClient, required this.url});
  final HttpClient httpClient;
  final String url;

  Future<bool> exec({bool log = false}) async {
    try {
      final httpResponse = await httpClient.request(
        url: url,
        method: 'put',
        newReturnErrorMsg: true,
      );
      if(httpResponse == null) {
        return true;
      }
      if ((httpResponse as Map<String, dynamic>).containsKey('error')) {
        throw httpResponse['error']['message'];
      }
      return false;
    } catch (errorMsg) {
      throw errorMsg;
    }
  }
}
