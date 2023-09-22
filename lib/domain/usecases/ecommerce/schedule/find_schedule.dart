import 'package:plugin_pjmei_components/plugin_pjmei_components.dart';

abstract class FindSchedule {
  Future<ScheduleEntity> exec({bool log = false});
}
