import 'package:plugin_pjmei_components/test/data/http/http_client.dart';

import '../../../domain/entity/order_history_entity.dart';
import '../../../domain/usecase/historic/create_order_historic.dart';

class RemoteCreateOrderHistoric implements CreateOrderHistoric {
  RemoteCreateOrderHistoric({required this.httpClient, required this.url});
  final HttpClient httpClient;
  final String url;

  Future<OrderHistoricEntity> exec(Map params, {bool log = false}) async {
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
      if(httpResponse['success']['orderHistoric'] != null) {
        return OrderHistoricEntity.fromMap(httpResponse['success']['orderHistoric']);
      }
      return OrderHistoricEntity.fromMap(httpResponse['success']);
    } catch (e) {
      throw e;
    }
  }
}
