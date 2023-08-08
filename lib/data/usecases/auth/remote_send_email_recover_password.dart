import 'package:plugin_pjmei_components/plugin_pjmei_components.dart';

class RemoteSendEmailRecoverPassword implements SendEmailRecoverPassword {
  RemoteSendEmailRecoverPassword({required this.httpClient, required this.url});
  final HttpClient httpClient;
  final String url;

  Future<UserEntity> exec({bool log = false}) async {
    try {
      final httpResponse = await httpClient.request(
        url: url,
        log: log,
        method: 'put',
        ignoreToken: true,
      );
      return UserEntity.fromMap(httpResponse['success']);
    } on HttpError catch (_) {
      throw DomainError.unexpected;
    }
  }
}
