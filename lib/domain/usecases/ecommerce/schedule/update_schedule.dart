import 'package:plugin_pjmei_components/plugin_pjmei_components.dart';

abstract class UpdateSchedule {
  Future<ScheduleEntity> exec(Schedule data, {bool log = false});
}
