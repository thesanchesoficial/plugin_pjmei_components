import 'package:plugin_pjmei_components/test/data/http/http_client.dart';

import '../../domain/entity/task_entity.dart';
import '../../domain/usecase/add_task.dart';

class RemoteAddTask implements AddTask {
  RemoteAddTask({required this.httpClient, required this.url});
  final HttpClient httpClient;
  final String url;

  Future<TaskEntity> exec(TaskEntity params, {bool log = false}) async {
    try {
      final httpResponse = await httpClient.request(
        url: url,
        log: log,
        method: 'post',
        body: params.toMap(),
        newReturnErrorMsg: true,
      );
      if ((httpResponse as Map<String, dynamic>).containsKey('error')) {
        throw httpResponse['error']['message'];
      }
      return TaskEntity.fromMap(httpResponse['success']['task']);
    } catch (e) {
      throw e;
    }
  }
}
