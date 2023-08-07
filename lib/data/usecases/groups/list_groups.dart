import 'package:plugin_pjmei_components/plugin_pjmei_components.dart';

class RemoteListGroups implements ListGroups {
  final HttpClient httpClient;
  final String url;

  RemoteListGroups({required this.httpClient, required this.url});

  @override
  Future<List<GroupEntity>> exec({bool log = false}) async {
    try {
      final httpResponse = await httpClient.request(
        url: url,
        log: log,
        method: 'get',
      );
      return (httpResponse["success"] as List)
          .map((e) => GroupEntity.fromMap(e))
          .toList();
    } on HttpError catch (_) {
      throw DomainError.unexpected;
    }
  }
}
