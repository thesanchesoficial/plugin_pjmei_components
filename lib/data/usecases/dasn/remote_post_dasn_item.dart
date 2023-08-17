import 'package:plugin_pjmei_components/plugin_pjmei_components.dart';

class RemotePostDasnItem implements PostDasnItem {
  final HttpClient httpClient;
  final String url;

  RemotePostDasnItem({required this.httpClient, required this.url});

  Future<DasnItemEntity> exec(DasnDeclaration dasn, {bool log = false}) async {
    try {
      final httpResponse = await httpClient.request(
        url: url,
        method: 'post',
        newReturnErrorMsg: true,
        body: dasn.toMap(),
      );
      if ((httpResponse as Map<String, dynamic>).containsKey('error')) {
        throw httpResponse['error']['message'];
      }
      if(httpResponse['success']['dasn'] != null) {
        return DasnItemEntity.fromMap(httpResponse['success']['dasn']);
      } else {
        throw httpResponse['success']['message'];
      }
    } catch (errorMsg) {
      throw errorMsg;
    }
  }
}
