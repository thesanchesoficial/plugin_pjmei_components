import '../entity/product_ecommerce_entity.dart';

abstract class UpdateProduct {
  Future<ProductEcommerceEntity> exec(ProductEcommerceEntity data, {bool log = false});
}