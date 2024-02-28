import 'package:plugin_pjmei_components/data/http/http_client.dart';

import '../../domain/entity/order_ecommerce_entity.dart';
import '../../domain/usecase/create_order.dart';

class RemoteCreateOrder implements CreateOrder {
  RemoteCreateOrder({required this.httpClient, required this.url});
  final HttpClient httpClient;
  final String url;

  Future<OrderEcommerceEntity> exec(Map params, {bool log = false}) async {
    try {
      final httpResponse = await httpClient.request(
        url: url,
        log: log,
        method: 'post',
        body: params,
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
