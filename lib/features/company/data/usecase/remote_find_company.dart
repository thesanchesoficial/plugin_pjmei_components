import 'package:plugin_pjmei_components/data/http/http_client.dart';

import '../../domain/entity/company_entity.dart';
import '../../domain/usecase/find_company.dart';

class RemoteFindCompany implements FindCompany {
  RemoteFindCompany({required this.httpClient, required this.url, this.method = 'get'});
  final HttpClient httpClient;
  final String url;
  final String method;

  Future<CompanyEntity> exec({bool log = false}) async {
    try {
      final httpResponse = await httpClient.request(
        url: url,
        log: log,
        method: method,
        newReturnErrorMsg: true,
      );
      if ((httpResponse as Map<String, dynamic>).containsKey('error')) {
        throw httpResponse['error']['message'];
      }
      if(httpResponse['success']['company'] != null) {
        return CompanyEntity.fromMap(httpResponse['success']['company']);
      }
      return CompanyEntity.fromMap(httpResponse['success']);
    } catch (errorMsg) {
      throw errorMsg;
    }
  }
}
