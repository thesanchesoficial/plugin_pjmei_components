import '../entity/schedule_entity.dart';

abstract class ListScheduleByEcommerce {
  Future<List<ScheduleEntity>> exec({Map<String, dynamic> params, bool log = false});
}
