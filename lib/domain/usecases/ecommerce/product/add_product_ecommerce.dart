import 'package:plugin_pjmei_components/plugin_pjmei_components.dart';

abstract class AddProduct {
  Future<ProductEcommerceEntity> exec(Map<String, dynamic> params, {bool log = false});
}
