import 'package:plugin_pjmei_components/data/http/http.dart';
import 'package:plugin_pjmei_components/domain/usecases/user/update_user.dart';
import 'package:plugin_pjmei_components/plugin_pjmei_components.dart';

class RemoteUpdateUser implements UpdateUser {
  final HttpClient httpClient;
  final String url;

  RemoteUpdateUser({
    required this.httpClient,
    required this.url
  });

  @override
  Future<UserEntity> exec(UserEntity user) async {
    try {
      final httpResponse = await httpClient.request(
        url: url, 
        method: 'put',
        body: user.toMap().remove({"email": user.email}),
      );
      return UserEntity.fromMap(httpResponse["success"]);
    } on HttpError catch(_) {
      throw DomainError.unexpected;
    }
  }
}