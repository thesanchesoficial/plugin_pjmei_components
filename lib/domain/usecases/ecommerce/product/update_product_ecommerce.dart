import 'package:plugin_pjmei_components/plugin_pjmei_components.dart';

abstract class UpdateProduct {
  Future<ProductEcommerceEntity> exec(ProductEcommerceEntity data, {bool log = false});
}