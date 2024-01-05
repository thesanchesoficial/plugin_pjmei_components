import '../entity/task_entity.dart';

abstract class AddTask {
  Future<TaskEntity> exec(TaskEntity params, {bool log = false});
}
