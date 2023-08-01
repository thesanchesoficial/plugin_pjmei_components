import 'package:plugin_pjmei_components/data/http/http.dart';
import 'package:plugin_pjmei_components/plugin_pjmei_components.dart';
import 'package:plugin_pjmei_components/domain/usecases/user/delete_account.dart';

class RemoteDeleteAccount implements DeleteAccount {
  RemoteDeleteAccount({required this.httpClient, required this.url});
  final HttpClient httpClient;
  final String url;

  Future<bool> exec() async {
    try {
      final httpResponse = await httpClient.request(
        url: url,
        method: 'delete',
      );
      return httpResponse == null;
    } on HttpError catch (_) {
      throw DomainError.unexpected;
    }
  }
}
