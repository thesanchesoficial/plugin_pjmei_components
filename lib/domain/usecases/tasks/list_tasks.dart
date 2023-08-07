import 'package:plugin_pjmei_components/plugin_pjmei_components.dart';

abstract class ListTasks {
  Future<List<TaskEntity>> exec({bool log = false});
}
