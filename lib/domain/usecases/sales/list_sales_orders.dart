import 'package:plugin_pjmei_components/plugin_pjmei_components.dart';

abstract class ListSalesOrders {
  Future<ReturnApiOrdersList> exec({bool log = false});
}

class ReturnApiOrdersList {
  ReturnApiOrdersList({
    this.orders,
    this.count,
  });
  List<OrderEntity>? orders;
  int? count;
}
