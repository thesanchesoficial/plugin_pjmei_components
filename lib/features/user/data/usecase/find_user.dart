import 'package:plugin_pjmei_components/data/http/http_client.dart';

import '../../domain/entity/user_entity.dart';
import '../../domain/usecase/find_user.dart';

class RemoteFindUser implements FindUser {
  final HttpClient httpClient;
  final String url;

  RemoteFindUser({required this.httpClient, required this.url});

  @override
  Future<UserEntity> exec({bool log = false}) async {
    try {
      final httpResponse = await httpClient.request(
        url: url,
        log: log,
        method: 'get',
        newReturnErrorMsg: true,
      );
      if ((httpResponse as Map<String, dynamic>).containsKey('error')) {
        throw httpResponse['error']['message'];
      }
      if(httpResponse["success"]["user"] != null) {
        return UserEntity.fromMap(httpResponse["success"]["user"]);
      } else {
        return UserEntity.fromMap(httpResponse["success"]);
      }
    } catch (e) {
      throw e;
    }
  }
}
