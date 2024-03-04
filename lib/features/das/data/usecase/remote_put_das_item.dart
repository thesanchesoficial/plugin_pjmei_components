import 'package:plugin_pjmei_components/plugin_pjmei_components.dart';

import '../../domain/usecase/put_das_item.dart';

class RemotePutDasItem implements PutDasItem {
  final HttpClient httpClient;
  final String url;

  RemotePutDasItem({required this.httpClient, required this.url});

  Future<bool> exec({String? year, String? month, bool log = false}) async {
    try {
      final httpResponse = await httpClient.request(
        url: url,
        method: 'put',
        body: {
          'year': year,
          'month': month,
        },
        newReturnErrorMsg: true,
      );
      if(httpResponse is String) {
        throw httpResponse;
      } else if(httpResponse != null && (httpResponse as Map<String, dynamic>).containsKey('error')) {
        throw httpResponse['error']['message'];
      }
      return httpResponse == null;
    } catch (errorMsg) {
      throw errorMsg;
    }
  }
}
