import 'package:plugin_pjmei_components/plugin_pjmei_components.dart';

abstract class ListProductByEcommerce {
  Future<List<ProductEcommerceEntity>> exec({Map<String, dynamic> params, bool log = false});
}
