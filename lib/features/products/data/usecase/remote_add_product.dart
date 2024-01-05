import 'package:plugin_pjmei_components/test/data/http/http_client.dart';

import '../../domain/entity/product_ecommerce_entity.dart';
import '../../domain/usecase/add_product_ecommerce.dart';

class RemoteAddProduct implements AddProduct {
  RemoteAddProduct({required this.httpClient, required this.url});
  final HttpClient httpClient;
  final String url;

  Future<ProductEcommerceEntity> exec(Map params, {bool log = false}) async {
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
      if(httpResponse['success']['product'] != null) {
        return ProductEcommerceEntity.fromMap(httpResponse['success']['product']);
      }
      return ProductEcommerceEntity.fromMap(httpResponse['success']);
    } catch (e) {
      throw e;
    }
  }
}
