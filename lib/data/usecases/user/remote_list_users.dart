import 'package:plugin_pjmei_components/plugin_pjmei_components.dart';

class RemoteListUsers implements ListUsers {
  final HttpClient httpClient;
  final String url;

  RemoteListUsers({required this.httpClient, required this.url});

  @override
  Future<List<UserEntity>> exec({bool log = false}) async {
    try {
      final httpResponse = await httpClient.request(
        url: url,
        log: log,
        method: 'get',
      );
      if(httpResponse["success"]["user"] != null) {
        return (httpResponse["success"]["user"] as List).map((e) => UserEntity.fromMap(e)).toList();
      } else if(httpResponse["success"]["users"] != null) {
        return (httpResponse["success"]["users"] as List).map((e) => UserEntity.fromMap(e)).toList();
      } else {
        return (httpResponse["success"] as List).map((e) => UserEntity.fromMap(e)).toList();
      }
    } on HttpError catch (_) {
      throw DomainError.unexpected;
    }
  }
}
