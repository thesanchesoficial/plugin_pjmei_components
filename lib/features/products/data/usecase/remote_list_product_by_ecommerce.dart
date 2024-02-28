import 'package:plugin_pjmei_components/data/http/http_client.dart';

import '../../domain/entity/product_ecommerce_entity.dart';
import '../../domain/usecase/list_product_by_ecommerce.dart';

class RemoteListProductByEcommerce implements ListProductByEcommerce {
  RemoteListProductByEcommerce({required this.httpClient, required this.url});
  final HttpClient httpClient;
  final String url;

  Future<List<ProductEcommerceEntity>> exec({Map<String, dynamic>? params, bool log = false}) async {
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
      if(httpResponse['success']['product'] != null) {
        return (httpResponse["success"]['product'] as List).map((e) => ProductEcommerceEntity.fromMap(e)).toList();
      }
      return (httpResponse["success"] as List).map((e) => ProductEcommerceEntity.fromMap(e)).toList();
    } catch (e) {
      throw e;
    }
  }
}
