import 'package:plugin_pjmei_components/data/http/http.dart';
import 'package:plugin_pjmei_components/domain/usecases/check-user/check_user.dart';
import 'package:plugin_pjmei_components/main/factories/usecases/check-user/check_user_factory.dart';
import 'package:plugin_pjmei_components/plugin_pjmei_components.dart';

class RemoteCheckUser implements CheckUser {
  RemoteCheckUser({required this.httpClient, required this.url});
  final HttpClient httpClient;
  final String url;

  Future<CheckUserEntity> exec() async {
    try {
      final httpResponse = await httpClient.request(
        url: url,
        method: 'get',
      );
      return CheckUserEntity.fromMap(httpResponse['success']['itens']);
    } on HttpError catch (_) {
      throw DomainError.unexpected;
    }
  }
}
