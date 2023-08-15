import 'package:plugin_pjmei_components/plugin_pjmei_components.dart';

class RemotePostDasnItem implements PostDasnItem {
  final HttpClient httpClient;
  final String url;

  RemotePostDasnItem({required this.httpClient, required this.url});

  Future<DasnItemEntity> exec({bool log = false}) async {
    try {
      final httpResponse = await httpClient.request(
        url: url,
        method: 'post',
      );
      if ((httpResponse as Map<String, dynamic>).containsKey('error')) {
        throw httpResponse['error']['message'];
      }
      return DasnItemEntity.fromMap(httpResponse['success']['dasn']);
    } catch (errorMsg) {
      throw errorMsg;
    }
  }
}
