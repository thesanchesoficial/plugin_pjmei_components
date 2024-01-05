import '../../entity/order_history_entity.dart';

abstract class CreateOrderHistoric {
  Future<OrderHistoricEntity> exec(Map<String, dynamic> params, {bool log = false});
}
