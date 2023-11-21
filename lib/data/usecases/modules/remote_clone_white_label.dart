import 'package:plugin_pjmei_components/domain/usecases/modules/clone_white_label.dart';
import 'package:plugin_pjmei_components/plugin_pjmei_components.dart';

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
