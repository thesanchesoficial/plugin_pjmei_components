import '../entity/schedule_entity.dart';

abstract class FindSchedule {
  Future<ScheduleEntity> exec({bool log = false});
}
