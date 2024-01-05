import 'package:plugin_pjmei_components/plugin_pjmei_components.dart';

import '../../domain/usecase/new_password.dart';

class RemoteNewPassword implements NewPassword {
  RemoteNewPassword({required this.httpClient, required this.url});
  final HttpClient httpClient;
  final String url;

  Future<bool> exec(String password, {bool log = false}) async {
    try {
      final httpResponse = await httpClient.request(
        url: url,
        log: log,
        method: 'post',
        body: {
          'password': password,
        },
        ignoreToken: true,
      );
      if (httpResponse != null && (httpResponse as Map<String, dynamic>).containsKey('error')) {
        throw httpResponse['error']['message'];
      }
      return httpResponse == null;
    } catch (e) {
      throw e;
    }
  }
}
