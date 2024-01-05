import 'package:plugin_pjmei_components/test/data/http/http_client.dart';

import '../../domain/entity/pjmei_module_entity.dart';
import '../../domain/usecase/update_module.dart';

class RemoteUpdateModule implements UpdateModule {
  final HttpClient httpClient;
  final String url;

  RemoteUpdateModule({required this.httpClient, required this.url});

  @override
  Future<ModulePjmei> exec(ModulePjmei item, {bool log = false}) async {
    try {
      final httpResponse = await httpClient.request(
        url: url,
        log: log,
        method: 'put',
        body: item.toMap(),
      );
      if ((httpResponse as Map<String, dynamic>).containsKey('error')) {
        throw httpResponse['error']['message'];
      }
      return ModulePjmei.fromMap(httpResponse["success"]);
    } catch (e) {
      throw e;
    }
  }
}
