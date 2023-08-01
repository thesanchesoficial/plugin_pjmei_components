import 'package:plugin_pjmei_components/data/http/http.dart';
import 'package:plugin_pjmei_components/plugin_pjmei_components.dart';
import 'package:plugin_pjmei_components/domain/usecases/page_bio/update_page_bio.dart';

class RemoteUpdatePageBio implements UpdatePageBio {
  RemoteUpdatePageBio({required this.httpClient, required this.url});
  final HttpClient httpClient;
  final String url;

  Future<PageBioEntity> exec(PageBioEntity params) async {
    try {
      final httpResponse = await httpClient.request(
          url: url, method: 'put', body: params.toMap());
      return PageBioEntity.fromMap(httpResponse['success']);
    } on HttpError catch (_) {
      throw DomainError.unexpected;
    }
  }
}
