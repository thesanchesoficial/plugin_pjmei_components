import 'package:plugin_pjmei_components/plugin_pjmei_components.dart';

class RemoteUpdatePageBio implements UpdatePageBio {
  RemoteUpdatePageBio({required this.httpClient, required this.url});
  final HttpClient httpClient;
  final String url;

  Future<PageBioEntity> exec(PageBioEntity params, {bool log = false}) async {
    try {
      final httpResponse = await httpClient.request(
          url: url, log: log, method: 'put', body: params.toMap());
      return PageBioEntity.fromMap(httpResponse['success']);
    } on HttpError catch (_) {
      throw DomainError.unexpected;
    }
  }
}
