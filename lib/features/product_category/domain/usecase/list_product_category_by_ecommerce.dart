import '../entity/product_category_ecommerce_entity.dart';

abstract class ListProductCategoryByEcommerce {
  Future<List<ProductCategoryEcommerceEntity>> exec({Map<String, dynamic> params, bool log = false});
}
