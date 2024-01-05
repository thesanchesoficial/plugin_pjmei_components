import '../entity/order_ecommerce_entity.dart';

abstract class CreateOrder {
  Future<OrderEcommerceEntity> exec(Map<String, dynamic> params, {bool log = false});
}
