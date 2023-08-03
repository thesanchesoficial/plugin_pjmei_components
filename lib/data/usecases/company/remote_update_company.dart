import 'package:plugin_pjmei_components/plugin_pjmei_components.dart';

class RemoteUpdateCompany implements UpdateCompany {
  final HttpClient httpClient;
  final String url;

  RemoteUpdateCompany({
    required this.httpClient,
    required this.url
  });

  @override
  Future<CompanyEntity> exec(CompanyEntity user) async {
    try {
      final httpResponse = await httpClient.request(
        url: url, 
        method: 'put',
        body: user.toMap(),
      );
      return CompanyEntity.fromMap(httpResponse["success"]);
    } on HttpError catch(_) {
      throw DomainError.unexpected;
    }
  }
}