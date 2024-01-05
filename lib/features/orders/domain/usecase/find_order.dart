import '../entity/order_ecommerce_entity.dart';

abstract class FindOrder {
  Future<OrderEcommerceEntity> exec({bool log = false});
}
