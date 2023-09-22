import 'package:plugin_pjmei_components/plugin_pjmei_components.dart';

abstract class UpdateProductCategory {
  Future<ProductCategoryEcommerceEntity> exec(ProductCategoryEcommerceEntity data, {bool log = false});
}