part of '../../../../src/apis.dart';

class _TasksApi {

  Future<List<TaskEntity>> listByCompany({required String id}) {
    return makeRemoteListTasks(id).exec();
  }

  Future<TaskEntity> insert({required TaskEntity data}) {
    return makeRemoteAddTask().exec(data);
  }

  Future<TaskEntity> update({required String id, required TaskEntity data}) {
    return makeRemoteUpdateTask(id).exec(data);
  }

  Future<bool> delete({required String id}) {
    return makeRemoteDeleteTasks(id).exec();
  }
}