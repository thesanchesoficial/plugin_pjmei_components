import 'package:plugin_pjmei_components/plugin_pjmei_components.dart';

abstract class AddProductCategory {
  Future<ProductCategoryEcommerceEntity> exec(Map<String, dynamic> params, {bool log = false});
}
