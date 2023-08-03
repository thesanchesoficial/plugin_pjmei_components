import 'package:plugin_pjmei_components/plugin_pjmei_components.dart';

class RemoteListCompanies implements ListCompanies {
  RemoteListCompanies({required this.httpClient, required this.url});
  final HttpClient httpClient;
  final String url;

  Future<List<CompanyEntity>> exec() async {
    try {
      final httpResponse = await httpClient.request(
        url: url,
        method: 'get',
      );
      if ((httpResponse as Map<String, dynamic>).containsKey('erro')) {
        throw HttpError.notFound;
      }
      return ((httpResponse['success']['items']) as List)
          .map((e) => CompanyEntity.fromMap(e))
          .toList();
    } on HttpError catch (_) {
      throw DomainError.unexpected;
    }
  }
}
