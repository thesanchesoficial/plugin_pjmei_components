import 'package:plugin_pjmei_components/plugin_pjmei_components.dart';

abstract class ListProductCategoryByEcommerce {
  Future<List<ProductCategoryEcommerceEntity>> exec({Map<String, dynamic> params, bool log = false});
}
