import '../entity/product_ecommerce_entity.dart';

abstract class ListProductByEcommerce {
  Future<List<ProductEcommerceEntity>> exec({Map<String, dynamic> params, bool log = false});
}
