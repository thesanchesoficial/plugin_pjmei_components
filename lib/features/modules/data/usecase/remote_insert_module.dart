import 'package:plugin_pjmei_components/test/data/http/http_client.dart';

import '../../domain/entity/pjmei_module_entity.dart';
import '../../domain/usecase/insert_module.dart';

class RemoteAddModule implements AddModule {
  RemoteAddModule({required this.httpClient, required this.url});
  final HttpClient httpClient;
  final String url;

  Future<ModulePjmei> exec(Map<String, dynamic> params, {bool log = false}) async {
    try {
      final httpResponse = await httpClient.request(
        url: url,
        log: log,
        method: 'post',
        body: params,
        newReturnErrorMsg: true,
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
