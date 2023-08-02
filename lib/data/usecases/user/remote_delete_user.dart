import 'package:plugin_pjmei_components/plugin_pjmei_components.dart';

class RemoteDeleteUser implements DeleteUser {
  final HttpClient httpClient;
  final String url;

  RemoteDeleteUser({
    required this.httpClient,
    required this.url
  });

  @override
  Future<bool> exec() async {
    try {
      final httpResponse = await httpClient.request(
        url: url, 
        method: 'delete',
      );
      return httpResponse["code"] == 200;
    } on HttpError catch(_) {
      throw DomainError.unexpected;
    }
  }
}