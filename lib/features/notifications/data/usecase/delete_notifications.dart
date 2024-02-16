import 'package:plugin_pjmei_components/test/data/http/http_client.dart';

import '../../domain/usecase/delete_notifications.dart';

class RemoteDeleteNotification implements DeleteNotification {
  final HttpClient httpClient;
  final String url;

  RemoteDeleteNotification({required this.httpClient, required this.url});

  @override
  Future<bool> exec({bool log = false}) async {
    try {
      final httpResponse = await httpClient.request(
        url: url,
        log: log,
        method: 'delete',
        newReturnErrorMsg: true
      );
      if ((httpResponse as Map<String, dynamic>).containsKey('error')) {
        throw httpResponse['error']['message'];
      }
      return httpResponse["code"] == 204 || httpResponse == true;
    } catch (e) {
      rethrow;
    }
  }
}
