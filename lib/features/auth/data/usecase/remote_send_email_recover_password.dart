import 'package:plugin_pjmei_components/plugin_pjmei_components.dart';

import '../../domain/usecase/send_email_recover_password.dart';

class RemoteSendEmailRecoverPassword implements SendEmailRecoverPassword {
  RemoteSendEmailRecoverPassword({required this.httpClient, required this.url});
  final HttpClient httpClient;
  final String url;

  Future<bool> exec(String email, {bool log = false}) async {
    try {
      final httpResponse = await httpClient.request(
        url: url,
        log: log,
        method: 'post',
        body: {
          'email': email
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
