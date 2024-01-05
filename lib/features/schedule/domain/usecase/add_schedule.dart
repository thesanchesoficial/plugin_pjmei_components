import '../entity/schedule_entity.dart';

abstract class AddSchedule {
  Future<ScheduleEntity> exec(String? ecommerceId, String? productId, List<ScheduleEntity> data, {bool log = false});
}
