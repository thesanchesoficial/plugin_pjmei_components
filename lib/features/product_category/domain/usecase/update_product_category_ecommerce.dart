import '../entity/product_category_ecommerce_entity.dart';

abstract class UpdateProductCategory {
  Future<ProductCategoryEcommerceEntity> exec(ProductCategoryEcommerceEntity data, {bool log = false});
}