import 'package:plugin_pjmei_components/data/http/http_client.dart';

import '../../domain/entity/ecommerce_entity.dart';
import '../../domain/usecase/find_ecommerce_by_company_id.dart';

class RemoteFindEcommerceByCompanyId implements FindEcommerceByCompanyId {
  RemoteFindEcommerceByCompanyId({required this.httpClient, required this.url});
  final HttpClient httpClient;
  final String url;

  Future<EcommerceEntity> exec({bool log = false}) async {
    try {
      final httpResponse = await httpClient.request(
        url: url,
        log: log,
        method: 'get',
        newReturnErrorMsg: true,
      );
      if ((httpResponse as Map<String, dynamic>).containsKey('error')) {
        throw httpResponse['error']['message'];
      }
      if(httpResponse['success']['ecommerce'] != null) {
        return EcommerceEntity.fromMap(httpResponse['success']['ecommerce']);
      }
      return EcommerceEntity.fromMap(httpResponse['success']);
    } catch (e) {
      throw e;
    }
  }
}
