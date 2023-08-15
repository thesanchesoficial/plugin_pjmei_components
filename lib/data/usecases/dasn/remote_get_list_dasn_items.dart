import 'package:plugin_pjmei_components/plugin_pjmei_components.dart';

class RemoteGetListDasnItem implements GetListDasnItem {
  final HttpClient httpClient;
  final String url;
  final String method;

  RemoteGetListDasnItem({required this.httpClient, required this.url, this.method = 'get'});

  Future<List<DasnItemEntity>> exec({bool log = false}) async {
    try {
      final httpResponse = await httpClient.request(
        url: url,
        method: method,
      );
      if ((httpResponse as Map<String, dynamic>).containsKey('erro')) {
        throw HttpError.notFound;
      }
      return ((httpResponse['success']['dasn']) as List).map((e) => DasnItemEntity.fromMap(e)).toList();
    } catch (errorMsg) {
      throw errorMsg;
    }
  }
}
