import 'package:plugin_pjmei_components/plugin_pjmei_components.dart';

class RemoteAddTask implements AddTask {
  RemoteAddTask({required this.httpClient, required this.url});
  final HttpClient httpClient;
  final String url;

  Future<TaskEntity> exec(TaskEntity params) async {
    try {
      final httpResponse = await httpClient.request(
        url: url,
        method: 'post',
        body: params.toMap(),
        newReturnErrorMsg: true,
      );
      if ((httpResponse as Map<String, dynamic>).containsKey('error')) {
        throw httpResponse['error']['message'];
      }
      return TaskEntity.fromMap(httpResponse['success']['task']);
    } on HttpError catch (_) {
      throw DomainError.unexpected;
    }
  }
}
