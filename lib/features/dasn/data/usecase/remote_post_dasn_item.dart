import 'package:plugin_pjmei_components/plugin_pjmei_components.dart';

import '../../domain/usecase/post_dasn_item.dart';

class RemotePostDasnItem implements PostDasnItem {
  final HttpClient httpClient;
  final String url;

  RemotePostDasnItem({required this.httpClient, required this.url});

  Future<bool> exec(DasnDeclaration dasn, {bool log = false}) async {
    try {
      final httpResponse = await httpClient.request(
        url: url,
        method: 'post',
        newReturnErrorMsg: true,
        body: dasn.toMap(),
      );
      if(httpResponse == null) {
        return true;
      } else if(httpResponse is String) {
        throw httpResponse;
      } else if((httpResponse as Map<String, dynamic>).containsKey('error')) {
        throw httpResponse['error']['message'];
      }
      return false;
    } catch (errorMsg) {
      throw errorMsg;
    }
  }
}
