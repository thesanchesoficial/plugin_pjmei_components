import 'package:plugin_pjmei_components/plugin_pjmei_components.dart';

class RemoteChangePassword implements ChangePassword {
  RemoteChangePassword({required this.httpClient, required this.url});
  final HttpClient httpClient;
  final String url;

  Future<UserEntity> exec({bool log = false}) async {
    try {
      final httpResponse = await httpClient.request(
        url: url,
        log: log,
        method: 'put',
      );
      return UserEntity.fromMap(httpResponse['success']);
    } on HttpError catch (_) {
      throw DomainError.unexpected;
    }
  }
}
