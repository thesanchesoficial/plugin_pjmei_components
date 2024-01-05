import '../entity/order_ecommerce_entity.dart';

abstract class ListOrders {
  Future<List<OrderEcommerceEntity>> exec({bool log = false});
}
