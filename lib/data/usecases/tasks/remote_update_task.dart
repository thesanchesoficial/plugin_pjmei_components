import 'package:plugin_pjmei_components/plugin_pjmei_components.dart';

class RemoteUpdateTask implements UpdateTask {
  RemoteUpdateTask({required this.httpClient, required this.url});
  final HttpClient httpClient;
  final String url;

  Future<TaskEntity> exec(TaskEntity params, {bool log = false}) async {
    try {
      final httpResponse = await httpClient.request(
        url: url,
        log: log,
        method: 'put',
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
