import '../entity/product_ecommerce_entity.dart';

abstract class AddProduct {
  Future<ProductEcommerceEntity> exec(Map<String, dynamic> params, {bool log = false});
}
