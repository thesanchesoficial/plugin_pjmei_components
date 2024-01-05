import '../entity/task_entity.dart';

abstract class UpdateTask {
  Future<TaskEntity> exec(TaskEntity params, {bool log = false});
}
