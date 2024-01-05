

import 'package:plugin_pjmei_components/test/data/http/http_client.dart';

import '../../domain/entity/user_entity.dart';
import '../../domain/usecase/update_user.dart';

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
        body: {
          'id': user.id,
          'name': user.name,
          'email': user.email,
          'phone': user.phone,
        },
      );
      if (httpResponse != null && (httpResponse as Map<String, dynamic>).containsKey('error')) {
        throw httpResponse['error']['message'];
      }
      return UserEntity.fromMap(httpResponse['success']['user']);
    } catch (e) {
      throw e;
    }
  }
}
