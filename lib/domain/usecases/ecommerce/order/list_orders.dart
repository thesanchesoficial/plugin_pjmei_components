import 'package:plugin_pjmei_components/plugin_pjmei_components.dart';

abstract class ListOrders {
  Future<List<OrderEcommerceEntity>> exec({bool log = false});
}
