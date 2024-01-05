import 'package:plugin_pjmei_components/test/data/http/http_client.dart';

import '../../domain/entity/company_entity.dart';
import '../../domain/usecase/update_company.dart';

class RemoteUpdateCompany implements UpdateCompany {
  final HttpClient httpClient;
  final String url;

  RemoteUpdateCompany({required this.httpClient, required this.url});

  @override
  Future<CompanyEntity> exec(CompanyEntity user, {bool log = false}) async {
    try {
      final httpResponse = await httpClient.request(
        url: url,
        log: log,
        method: 'put',
        body: user.toMap(),
      );
      if ((httpResponse as Map<String, dynamic>).containsKey('error')) {
        throw httpResponse['error']['message'];
      }
      return CompanyEntity.fromMap(httpResponse["success"]);
    } catch (errorMsg) {
      throw errorMsg;
    }
  }
}
