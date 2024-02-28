import 'package:plugin_pjmei_components/data/http/http_client.dart';

import '../../domain/entity/pjmei_module_entity.dart';
import '../../domain/usecase/list_all_modules.dart';

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
      return (httpResponse["success"] as List).map((e) => ModulePjmei.fromMap(e, backoffice: true)).toList();
    } catch (e) {
      throw e;
    }
  }
}
