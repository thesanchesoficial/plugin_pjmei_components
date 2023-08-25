import 'package:plugin_pjmei_components/plugin_pjmei_components.dart';

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
