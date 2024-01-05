import 'package:plugin_pjmei_components/test/data/http/http_client.dart';

import '../../domain/usecase/delete_user_in_white_label.dart';

class RemoteDeleteUserInWhiteLabel implements DeleteUserInWhiteLabel {
  RemoteDeleteUserInWhiteLabel({required this.httpClient, required this.url});
  final HttpClient httpClient;
  final String url;

  Future<bool> exec({bool log = false}) async {
    try {
      final httpResponse = await httpClient.request(
        url: url,
        log: log,
        method: 'delete',
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
