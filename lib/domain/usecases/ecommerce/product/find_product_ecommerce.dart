import 'package:plugin_pjmei_components/plugin_pjmei_components.dart';

abstract class FindProduct {
  Future<ProductEcommerceEntity> exec({bool log = false});
}
