import 'package:plugin_pjmei_components/plugin_pjmei_components.dart';

class RemoteListOrders implements ListOrders {
  RemoteListOrders({required this.httpClient, required this.url});
  final HttpClient httpClient;
  final String url;

  Future<List<OrderEcommerceEntity>> exec({bool log = false}) async {
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
        return ((httpResponse['success']['order']) as List).map((e) => OrderEcommerceEntity.fromMap(e)).toList();
      } else if (httpResponse['success']['items'] != null) {
        return ((httpResponse['success']['items']) as List).map((e) => OrderEcommerceEntity.fromMap(e)).toList();
      }
      return ((httpResponse['success']) as List).map((e) => OrderEcommerceEntity.fromMap(e)).toList();
    } catch (e) {
      throw e;
    }
  }
}
