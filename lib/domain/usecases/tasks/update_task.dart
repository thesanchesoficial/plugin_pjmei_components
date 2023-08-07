import 'package:plugin_pjmei_components/plugin_pjmei_components.dart';

abstract class UpdateTask {
  Future<TaskEntity> exec(TaskEntity params, {bool log = false});
}
