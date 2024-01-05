import '../entity/product_category_ecommerce_entity.dart';

abstract class AddProductCategory {
  Future<ProductCategoryEcommerceEntity> exec(Map<String, dynamic> params, {bool log = false});
}
