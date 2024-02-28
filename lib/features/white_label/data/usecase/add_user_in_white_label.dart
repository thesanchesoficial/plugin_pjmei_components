import 'package:plugin_pjmei_components/data/http/http_client.dart';

import '../../domain/usecase/add_user_in_white_label.dart';

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
      if(httpResponse == null) {
        return true;
      }
      if (httpResponse != null && (httpResponse as Map<String, dynamic>).containsKey('error')) {
        throw httpResponse['error']['message'];
      }
      return httpResponse != null || httpResponse["code"] == 204;
    } catch (e) {
      throw e;
    }
  }
}
