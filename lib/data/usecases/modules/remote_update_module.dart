import 'package:plugin_pjmei_components/plugin_pjmei_components.dart';

class RemoteUpdateModule implements UpdateModule {
  final HttpClient httpClient;
  final String url;

  RemoteUpdateModule({
    required this.httpClient,
    required this.url
  });

  @override
  Future<ModulePjmei> exec(ModulePjmei item) async {
    try {
      final httpResponse = await httpClient.request(
        url: url, 
        method: 'put',
        body: item.toMap(),
      );
      return ModulePjmei.fromMap(httpResponse["success"]);
    } on HttpError catch(_) {
      throw DomainError.unexpected;
    }
  }
}