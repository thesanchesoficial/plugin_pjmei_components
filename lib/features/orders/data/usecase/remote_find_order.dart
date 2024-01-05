import 'package:plugin_pjmei_components/test/data/http/http_client.dart';

import '../../domain/entity/order_ecommerce_entity.dart';
import '../../domain/usecase/find_order.dart';

class RemoteFindOrder implements FindOrder {
  RemoteFindOrder({required this.httpClient, required this.url});
  final HttpClient httpClient;
  final String url;

  Future<OrderEcommerceEntity> exec({bool log = false}) async {
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
      if(httpResponse['success']['order'] != null) {
        return OrderEcommerceEntity.fromMap(httpResponse['success']['order']);
      }
      return OrderEcommerceEntity.fromMap(httpResponse['success']);
    } catch (e) {
      throw e;
    }
  }
}
