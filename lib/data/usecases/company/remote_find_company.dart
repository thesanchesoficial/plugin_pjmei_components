import 'package:plugin_pjmei_components/plugin_pjmei_components.dart';

class RemoteFindCompany implements FindCompany {
  RemoteFindCompany({required this.httpClient, required this.url});
  final HttpClient httpClient;
  final String url;

  Future<CompanyEntity> exec({bool log = false}) async {
    try {
      final httpResponse = await httpClient.request(
        url: url,
        log: log,
        method: 'get',
      );
      if ((httpResponse as Map<String, dynamic>).containsKey('error')) {
        throw httpResponse['error']['message'];
      }
      return CompanyEntity.fromMap(httpResponse['success']);
    } catch (errorMsg) {
      throw errorMsg;
    }
  }
}
