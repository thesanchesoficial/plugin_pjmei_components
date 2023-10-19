import 'package:plugin_pjmei_components/plugin_pjmei_components.dart';

abstract class FindOrder {
  Future<OrderEcommerceEntity> exec({bool log = false});
}
