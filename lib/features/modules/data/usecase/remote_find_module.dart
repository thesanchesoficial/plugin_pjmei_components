import 'package:plugin_pjmei_components/test/data/http/http_client.dart';

import '../../domain/entity/pjmei_module_entity.dart';
import '../../domain/usecase/find_module.dart';

class RemoteFindModule implements FindModule {
  final HttpClient httpClient;
  final String url;

  RemoteFindModule({required this.httpClient, required this.url});

  @override
  Future<ModulePjmei> exec({bool log = false}) async {
    try {
      final httpResponse = await httpClient.request(
        url: url,
        log: log,
        method: 'get',
      );
      if ((httpResponse as Map<String, dynamic>).containsKey('error')) {
        throw httpResponse['error']['message'];
      }
      if(httpResponse['success']['module'] != null) {
        return ModulePjmei.fromMap(httpResponse['success']['module']);
      } else {
        return ModulePjmei.fromMap(httpResponse['success']);
      }
    } catch (e) {
      throw e;
    }
  }
}
