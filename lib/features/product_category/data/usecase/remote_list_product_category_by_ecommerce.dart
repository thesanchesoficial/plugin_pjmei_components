import 'package:plugin_pjmei_components/test/data/http/http_client.dart';

import '../../domain/entity/product_category_ecommerce_entity.dart';
import '../../domain/usecase/list_product_category_by_ecommerce.dart';

class RemoteListProductCategoryByEcommerce implements ListProductCategoryByEcommerce {
  RemoteListProductCategoryByEcommerce({required this.httpClient, required this.url});
  final HttpClient httpClient;
  final String url;

  Future<List<ProductCategoryEcommerceEntity>> exec({Map<String, dynamic>? params, bool log = false}) async {
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
      if(httpResponse['success']['productCategory'] != null) {
        return (httpResponse["success"]['productCategory'] as List).map((e) => ProductCategoryEcommerceEntity.fromMap(e)).toList();
      }
      return (httpResponse["success"] as List).map((e) => ProductCategoryEcommerceEntity.fromMap(e)).toList();
    } catch (e) {
      throw e;
    }
  }
}
