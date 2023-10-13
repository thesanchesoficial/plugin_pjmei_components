import 'package:plugin_pjmei_components/plugin_pjmei_components.dart';

class RemoteCreateCreditCard implements CreateCreditCard {
  RemoteCreateCreditCard({required this.httpClient, required this.url});
  final HttpClient httpClient;
  final String url;

  Future<String> exec(String token, {bool log = false}) async {
    try {
      final httpResponse = await httpClient.request(
        url: url,
        log: log,
        method: 'post',
        body: {
          'card': token
        },
        newReturnErrorMsg: true,
      );
      if ((httpResponse as Map<String, dynamic>).containsKey('error')) {
        throw httpResponse['error']['message'];
      }
      return httpResponse['success'];
    } catch (e) {
      throw e;
    }
  }
}
