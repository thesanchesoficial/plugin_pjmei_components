import 'package:plugin_pjmei_components/plugin_pjmei_components.dart';

import '../../domain/usecase/verify_email_code.dart';

class RemoteVerifyEmailCode implements VerifyEmailCode {
  RemoteVerifyEmailCode({required this.httpClient, required this.url});
  final HttpClient httpClient;
  final String url;

  Future<String> exec({required String email, required String code, bool log = false}) async {
    try {
      final httpResponse = await httpClient.request(
        url: url,
        log: log,
        method: 'post',
        body: {
          'email': email,
          'code': code,
        },
        ignoreToken: true,
      );
      if (httpResponse != null && (httpResponse as Map<String, dynamic>).containsKey('error')) {
        throw httpResponse['error']['message'];
      }
      return httpResponse['success']['token'];
    } catch (e) {
      throw e;
    }
  }
}
