import 'package:plugin_pjmei_components/plugin_pjmei_components.dart';

class RemoteRefreshToken implements RefreshToken {
  RemoteRefreshToken({required this.httpClient, required this.url});
  final HttpClient httpClient;
  final String url;

  Future<UserEntity> exec({bool log = false}) async {
    try {
      final httpResponse = await httpClient.request(
        url: url,
        log: log,
        method: 'post',
        ignoreToken: true,
        body: {
          'refreshToken': '${userSM.user?.refreshToken}',
        },
      );
      UserEntity temp = UserEntity.fromMap(httpResponse['success']['user']);
      temp = temp.copyWith(
        refreshToken: httpResponse['success']['refreshToken'],
        accessToken: httpResponse['success']['accessToken'],
      );
      return temp;
    } on HttpError catch (error) {
      if (error == HttpError.notFound) {
        throw DomainError.invalidCredentials;
      } else if (error == HttpError.badRequest) {
        throw DomainError.invalidCredentials;
      }
      throw error;
    }
  }
}