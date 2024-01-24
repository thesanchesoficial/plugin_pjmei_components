import 'package:plugin_pjmei_components/plugin_pjmei_components.dart';
import '../../domain/usecase/login.dart';

class RemoteLogin implements Login {
  RemoteLogin({required this.httpClient, required this.url});
  final HttpClient httpClient;
  final String url;

  Future<UserEntity> exec(LoginParams params, {bool log = false}) async {
    try {
      final httpResponse = await httpClient.request(
        url: url,
        log: log,
        method: 'post',
        ignoreToken: true,
        newReturnErrorMsg: true,
        body: params.toMap(),
      );
      if ((httpResponse as Map<String, dynamic>).containsKey('error')) {
        throw httpResponse['error']['message'];
      }
      UserEntity temp = UserEntity.fromMap(httpResponse['success']['user']);
      temp = temp.copyWith(
        refreshToken: httpResponse['success']['refreshToken'],
        accessToken: httpResponse['success']['accessToken'],
      );
      if(httpResponse['success']['subscription'] != null) {
        userSM.subscription = SubscriptionEntity.fromMap(httpResponse['success']['subscription']);
      }
      return temp;
    } catch (errorMsg) {
      throw errorMsg;
    }
  }
}