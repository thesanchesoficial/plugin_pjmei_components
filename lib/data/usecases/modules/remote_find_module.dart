import 'package:plugin_pjmei_components/plugin_pjmei_components.dart';

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
