import 'package:plugin_pjmei_components/plugin_pjmei_components.dart';

class RemoteAddLink implements AddLink {
  RemoteAddLink({required this.httpClient, required this.url});
  final HttpClient httpClient;
  final String url;

  Future<LinkEntity> exec(LinkEntity params) async {
    try {
      final httpResponse =
          await httpClient.request(url: url, method: 'post', body: {
        'name': params.name,
        'url': params.url,
        'company_id': companySM.company?.id,
      });
      return LinkEntity.fromMap(httpResponse['success']);
    } on HttpError catch (_) {
      throw DomainError.unexpected;
    }
  }
}
