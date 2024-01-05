import '../entity/product_category_ecommerce_entity.dart';

abstract class FindProductCategory {
  Future<ProductCategoryEcommerceEntity> exec({bool log = false});
}
