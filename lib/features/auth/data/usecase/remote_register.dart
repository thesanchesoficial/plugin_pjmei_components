import 'package:plugin_pjmei_components/data/http/http_client.dart';

import '../../../user/domain/entity/user_entity.dart';
import '../../domain/entity/register_params_entity.dart';
import '../../domain/usecase/register.dart';

class RemoteRegister implements Register {
  RemoteRegister({required this.httpClient, required this.url});
  final HttpClient httpClient;
  final String url;

  Future<UserEntity> exec(RegisterParams params, {bool log = false}) async {
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
      return temp;
    } catch (errorMsg) {
      throw errorMsg;
    }
  }
}