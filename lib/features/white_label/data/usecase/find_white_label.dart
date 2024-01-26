import 'package:plugin_pjmei_components/test/data/http/http_client.dart';

import '../../domain/entity/white_label_entity.dart';
import '../../domain/usecase/find_white_label.dart';

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
        ignoreToken: true,
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
