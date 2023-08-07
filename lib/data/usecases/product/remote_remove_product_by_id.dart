import 'package:plugin_pjmei_components/plugin_pjmei_components.dart';

class RemoteRemoveProductById implements RemoveProductById {
  RemoteRemoveProductById({required this.httpClient, required this.url});
  final HttpClient httpClient;
  final String url;

  Future<bool> exec({bool log = false}) async {
    try {
      await httpClient.request(
        url: url,
        log: log,
        method: 'remove',
      );
      return true;
    } on HttpError catch (_) {
      throw DomainError.unexpected;
    }
  }
}
