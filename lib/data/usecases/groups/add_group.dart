import 'package:plugin_pjmei_components/plugin_pjmei_components.dart';

class RemoteAddGroup implements AddGroup {
  final HttpClient httpClient;
  final String url;

  RemoteAddGroup({required this.httpClient, required this.url});

  @override
  Future<GroupEntity> exec(GroupEntity params, {bool log = false}) async {
    try {
      final httpResponse = await httpClient.request(
        url: url,
        log: log,
        method: 'post',
        body: params.toMap(),
      );
      return GroupEntity.fromMap(httpResponse["success"]);
    } on HttpError catch (_) {
      throw DomainError.unexpected;
    }
  }
}
