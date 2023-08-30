import 'package:plugin_pjmei_components/plugin_pjmei_components.dart';

class RemoteListWhiteLabel implements ListWhiteLabel {
  RemoteListWhiteLabel({required this.httpClient, required this.url});
  final HttpClient httpClient;
  final String url;

  Future<List<WhiteLabelEntity>> exec({bool log = false}) async {
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
      final List<WhiteLabelEntity> _list = [];
      if(httpResponse['success']['items'] != null) {
        httpResponse['success']['items'].map((e) {
          _list.add(WhiteLabelEntity.fromMap(e));
        }).toList();
      } else {
        httpResponse['success']['whiteLabel'].map((e) {
          _list.add(WhiteLabelEntity.fromMap(e));
        }).toList();
      }
      return _list;
    } catch (e) {
      throw e;
    }
  }
}
