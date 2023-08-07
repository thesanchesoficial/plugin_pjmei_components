import 'package:plugin_pjmei_components/domain/usecases/auth/refresh_token.dart';
import 'package:plugin_pjmei_components/plugin_pjmei_components.dart';

class RemoteRefreshToken implements RefreshToken {
  RemoteRefreshToken({required this.httpClient, required this.url});
  final HttpClient httpClient;
  final String url;

  Future<RefreshTokenEntity> exec({bool log = false}) async {
    try {
      final httpResponse = await httpClient.request(
        url: url,
        log: log,
        method: 'post',
        body: {
          'refreshToken': '${userSM.user?.refreshToken}',
        },
      );
      return RefreshTokenEntity(
        accessToken: httpResponse['success']['accessToken'],
        refreshToken: httpResponse['success']['refreshToken'],
      );
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