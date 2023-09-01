import 'package:plugin_pjmei_components/data/http/http.dart';
import 'package:plugin_pjmei_components/domain/entities/pjmei_module_entity.dart';
import 'package:plugin_pjmei_components/domain/usecases/modules/list_modules.dart';

class RemoteListModules implements ListModules {
  RemoteListModules({required this.httpClient, required this.url});
  final HttpClient httpClient;
  final String url;

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
      return ((httpResponse['success']) as List)
          .map((e) => ModulePjmei.fromMap(e))
          .toList();
    } catch (e) {
      throw e;
    }
  }
}
