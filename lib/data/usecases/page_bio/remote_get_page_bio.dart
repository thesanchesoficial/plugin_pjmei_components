import 'package:plugin_pjmei_components/data/http/http.dart';
import 'package:plugin_pjmei_components/plugin_pjmei_components.dart';
import 'package:plugin_pjmei_components/domain/usecases/page_bio/get_page_bio.dart';

class RemoteGetPageBio implements GetPageBio {
  RemoteGetPageBio({required this.httpClient, required this.url});
  final HttpClient httpClient;
  final String url;

  Future<PageBioEntity> exec() async {
    try {
      final httpResponse = await httpClient.request(
        url: url,
        method: 'get',
      );
      if ((httpResponse as Map<String, dynamic>).containsKey('erro')) {
        throw HttpError.notFound;
      }
      if (httpResponse['success'] != null) {
        return PageBioEntity.fromMap(httpResponse['success']);
      } else {
        return PageBioEntity();
      }
    } on HttpError catch (_) {
      throw DomainError.unexpected;
    }
  }
}
