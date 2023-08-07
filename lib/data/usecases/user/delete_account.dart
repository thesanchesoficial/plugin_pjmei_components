import 'package:plugin_pjmei_components/plugin_pjmei_components.dart';

class RemoteDeleteAccount implements DeleteAccount {
  RemoteDeleteAccount({required this.httpClient, required this.url});
  final HttpClient httpClient;
  final String url;

  Future<bool> exec({bool log = false}) async {
    try {
      final httpResponse = await httpClient.request(
        url: url,
        log: log,
        method: 'delete',
      );
      return httpResponse == null;
    } on HttpError catch (_) {
      throw DomainError.unexpected;
    }
  }
}
