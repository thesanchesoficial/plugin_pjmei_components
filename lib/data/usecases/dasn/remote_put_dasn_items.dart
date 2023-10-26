import 'package:plugin_pjmei_components/plugin_pjmei_components.dart';

class RemotePutDasnItem implements PutDasnItem {
  final HttpClient httpClient;
  final String url;
  final String method;

  RemotePutDasnItem({required this.httpClient, required this.url, this.method = 'put'});

  Future<bool> exec({bool log = false}) async {
    try {
      final httpResponse = await httpClient.request(
        url: url,
        method: method,
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
