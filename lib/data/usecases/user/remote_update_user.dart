import 'package:plugin_pjmei_components/plugin_pjmei_components.dart';

class RemoteUpdateUser implements UpdateUser {
  final HttpClient httpClient;
  final String url;

  RemoteUpdateUser({required this.httpClient, required this.url});

  @override
  Future<UserEntity> exec(UserEntity user, {bool log = false}) async {
    try {
      final httpResponse = await httpClient.request(
        url: url,
        log: log,
        method: 'put',
        body: user.toMap().remove({"email": user.email}),
      );
      return UserEntity.fromMap(httpResponse["success"]);
    } on HttpError catch (_) {
      throw DomainError.unexpected;
    }
  }
}
