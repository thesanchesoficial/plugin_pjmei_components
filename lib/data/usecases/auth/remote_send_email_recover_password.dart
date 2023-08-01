import 'package:plugin_pjmei_components/data/http/http.dart';
import 'package:plugin_pjmei_components/domain/usecases/usecases.dart';
import 'package:plugin_pjmei_components/plugin_pjmei_components.dart';

class RemoteSendEmailRecoverPassword implements SendEmailRecoverPassword {
  RemoteSendEmailRecoverPassword({required this.httpClient, required this.url});
  final HttpClient httpClient;
  final String url;

  Future<UserEntity> exec() async {
    try {
      final httpResponse = await httpClient.request(
        url: url,
        method: 'put',
      );
      return UserEntity.fromMap(httpResponse['success']);
    } on HttpError catch (_) {
      throw DomainError.unexpected;
    }
  }
}
