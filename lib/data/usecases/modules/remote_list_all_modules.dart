import 'package:plugin_pjmei_components/plugin_pjmei_components.dart';

class RemoteListAllModules implements ListAllModules {
  final HttpClient httpClient;
  final String url;

  RemoteListAllModules({required this.httpClient, required this.url});

  @override
  Future<List<ModulePjmei>> exec({bool log = false}) async {
    try {
      final httpResponse = await httpClient.request(
        url: url,
        log: log,
        method: 'get',
      );
      if ((httpResponse as Map<String, dynamic>).containsKey('error')) {
        throw httpResponse['error']['message'];
      }
      return (httpResponse["success"] as List)
          .map((e) => ModulePjmei.fromMap(e))
          .toList();
    } catch (e) {
      throw e;
    }
  }
}
