import 'package:plugin_pjmei_components/features/auth/domain/usecase/send_verification_email.dart';
import 'package:plugin_pjmei_components/plugin_pjmei_components.dart';

class RemoteSendVerificationEmail implements SendVerificationEmail {
  RemoteSendVerificationEmail({required this.httpClient, required this.url});
  final HttpClient httpClient;
  final String url;

  Future<bool> exec({required String email, bool log = false}) async {
    try {
      final httpResponse = await httpClient.request(
        url: url,
        log: log,
        method: 'post',
        body: {
          'email': email,
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
