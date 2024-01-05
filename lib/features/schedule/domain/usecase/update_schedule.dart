import '../entity/schedule_entity.dart';

abstract class UpdateSchedule {
  Future<ScheduleEntity> exec(ScheduleEntity data, {bool log = false});
}
