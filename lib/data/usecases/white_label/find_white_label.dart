import 'package:plugin_pjmei_components/plugin_pjmei_components.dart';

class RemoteFindWhiteLabel implements FindWhiteLabel {
  RemoteFindWhiteLabel({required this.httpClient, required this.url});
  final HttpClient httpClient;
  final String url;

  Future<WhiteLabelEntity> exec({bool log = false}) async {
    try {
      final httpResponse = await httpClient.request(
        url: url,
        log: log,
        method: 'get',
        newReturnErrorMsg: true,
      );
      if ((httpResponse as Map<String, dynamic>).containsKey('error')) {
        throw httpResponse['error']['message'];
      }
      return WhiteLabelEntity.fromMap(httpResponse['success']['whiteLabel']);
    } catch (e) {
      throw e;
    }
  }
}
