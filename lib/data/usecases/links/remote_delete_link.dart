import 'package:plugin_pjmei_components/plugin_pjmei_components.dart';

class RemoteDeleteLink implements DeleteLink {
  RemoteDeleteLink({required this.httpClient, required this.url});
  final HttpClient httpClient;
  final String url;

  Future<bool> exec() async {
    try {
      await httpClient.request(
        url: url,
        method: 'delete',
      );
      return true;
    } on HttpError catch (_) {
      throw DomainError.unexpected;
    }
  }
}
