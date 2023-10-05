import 'package:plugin_pjmei_components/plugin_pjmei_components.dart';

abstract class CreateOrder {
  Future<OrderEcommerceEntity> exec(Map<String, dynamic> params, {bool log = false});
}
