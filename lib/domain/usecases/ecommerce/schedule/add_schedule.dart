import 'package:plugin_pjmei_components/plugin_pjmei_components.dart';

abstract class AddSchedule {
  Future<ScheduleEntity> exec(String? ecommerceId, String? productId, List<ScheduleEntity> data, {bool log = false});
}
