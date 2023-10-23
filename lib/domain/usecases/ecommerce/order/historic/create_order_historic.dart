import 'package:plugin_pjmei_components/plugin_pjmei_components.dart';

abstract class CreateOrderHistoric {
  Future<OrderHistoricEntity> exec(Map<String, dynamic> params, {bool log = false});
}
