import 'package:plugin_pjmei_components/data/http/http_client.dart';

import '../../domain/entity/white_label_entity.dart';
import '../../domain/usecase/add_white_label.dart';

class RemoteAddWhiteLabel implements AddWhiteLabel {
  RemoteAddWhiteLabel({required this.httpClient, required this.url});
  final HttpClient httpClient;
  final String url;

  Future<WhiteLabelEntity> exec(WhiteLabelEntity params, {bool log = false}) async {
    try {
      final httpResponse = await httpClient.request(
        url: url,
        log: log,
        method: 'post',
        body: params.toMap(),
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
