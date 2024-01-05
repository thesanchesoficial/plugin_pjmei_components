import '../entity/product_ecommerce_entity.dart';

abstract class FindProduct {
  Future<ProductEcommerceEntity> exec({bool log = false});
}
