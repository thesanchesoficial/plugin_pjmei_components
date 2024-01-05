import 'package:plugin_pjmei_components/test/data/http/http_client.dart';

import '../../domain/entity/ecommerce_entity.dart';
import '../../domain/usecase/update_ecommerce.dart';

class RemoteUpdateEcommerce implements UpdateEcommerce {
  final HttpClient httpClient;
  final String url;

  RemoteUpdateEcommerce({required this.httpClient, required this.url});

  @override
  Future<EcommerceEntity> exec(EcommerceEntity data, {bool log = false}) async {
    try {
      final httpResponse = await httpClient.request(
        url: url,
        log: log,
        method: 'put',
        body: data.toMap(),
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
