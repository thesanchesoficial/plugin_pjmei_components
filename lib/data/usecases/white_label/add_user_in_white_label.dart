import 'package:plugin_pjmei_components/plugin_pjmei_components.dart';

class RemoteAddUserInWhiteLabel implements AddUserInWhiteLabel {
  RemoteAddUserInWhiteLabel({required this.httpClient, required this.url});
  final HttpClient httpClient;
  final String url;

  Future<bool> exec(List<String> data, {bool log = false}) async {
    try {
      final httpResponse = await httpClient.request(
        url: url,
        log: log,
        method: 'post',
        body: {
          "userIds": data,
        },
        newReturnErrorMsg: true,
      );
      if (httpResponse != null && (httpResponse as Map<String, dynamic>).containsKey('error')) {
        throw httpResponse['error']['message'];
      }
      return httpResponse != null;
    } catch (e) {
      throw e;
    }
  }
}
