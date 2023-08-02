import 'package:plugin_pjmei_components/plugin_pjmei_components.dart';

class RemoteListUsers implements ListUsers {
  final HttpClient httpClient;
  final String url;

  RemoteListUsers({
    required this.httpClient,
    required this.url
  });

  @override
  Future<List<UserEntity>> exec() async {
    try {
      final httpResponse = await httpClient.request(
        url: url, 
        method: 'get',
      );
      return (httpResponse["success"] as List).map((e) => UserEntity.fromMap(e)).toList();
    } on HttpError catch(_) {
      throw DomainError.unexpected;
    }
  }
}