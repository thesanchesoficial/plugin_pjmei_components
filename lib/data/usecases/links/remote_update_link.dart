import 'package:plugin_pjmei_components/plugin_pjmei_components.dart';

class RemoteUpdateLink implements UpdateLink {
  RemoteUpdateLink({required this.httpClient, required this.url});
  final HttpClient httpClient;
  final String url;

  Future<LinkEntity> exec(LinkEntity params) async {
    try {
      final Map body = params.toMap();
      body['company_id'] = companySM.company?.id;
      final httpResponse = await httpClient.request(url: url, method: 'put', body: body);
      return LinkEntity.fromMap(httpResponse['success']);
    } on HttpError catch (_) {
      throw DomainError.unexpected;
    }
  }
}
