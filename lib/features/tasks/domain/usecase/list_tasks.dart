import '../entity/task_entity.dart';

abstract class ListTasks {
  Future<List<TaskEntity>> exec({bool log = false});
}
