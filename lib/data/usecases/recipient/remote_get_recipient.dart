import 'package:plugin_pjmei_components/plugin_pjmei_components.dart';

class RemoteGetRecipient implements GetRecipient {
  RemoteGetRecipient({required this.httpClient, required this.url});
  final HttpClient httpClient;
  final String url;

  Future<RecipientEntity> exec() async {
    try {
      final httpResponse = await httpClient.request(
        url: url,
        method: 'get',
      );
      if ((httpResponse as Map<String, dynamic>).containsKey('erro')) {
        throw HttpError.notFound;
      }
      return RecipientEntity.fromMap((httpResponse['success']));
    } on HttpError catch (_) {
      throw DomainError.unexpected;
    }
  }
}
