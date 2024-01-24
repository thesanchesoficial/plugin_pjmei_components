import 'package:plugin_pjmei_components/test/data/http/http_client.dart';

import '../../../../utils/variable.dart';
import '../../../plans/domain/entity/subscription_entity.dart';
import '../../../user/domain/entity/user_entity.dart';
import '../../domain/usecase/refresh_token.dart';

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
        newReturnErrorMsg: true,
        body: {
          'refreshToken': '${userSM.user?.refreshToken}',
        },
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
      userSM.setUser(temp);
      return temp;
    } catch (errorMsg) {
      throw errorMsg;
    }
  }
}