import 'package:plugin_pjmei_components/data/http/http_client.dart';

import '../../domain/usecase/clone_white_label.dart';

class RemoteClonarWhiteLabel implements ClonarWhiteLabel {
  RemoteClonarWhiteLabel({required this.httpClient, required this.url});
  final HttpClient httpClient;
  final String url;

  Future<bool> exec(Map<String, dynamic> params, {bool log = false}) async {
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
      return httpResponse == true;
    } catch (e) {
      throw e;
    }
  }
}
