import 'package:plugin_pjmei_components/plugin_pjmei_components.dart';

class RemoteUpdateOrder implements CreateOrder {
  RemoteUpdateOrder({required this.httpClient, required this.url});
  final HttpClient httpClient;
  final String url;

  Future<OrderEcommerceEntity> exec(Map params, {bool log = false}) async {
    try {
      final httpResponse = await httpClient.request(
        url: url,
        log: log,
        method: 'put',
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
