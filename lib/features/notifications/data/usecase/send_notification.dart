import 'package:plugin_pjmei_components/test/data/http/http_client.dart';

import '../../domain/usecase/send_notification.dart';

class RemoteSendNotification implements SendNotification {
  final HttpClient httpClient;
  final String url;

  RemoteSendNotification({required this.httpClient, required this.url});

  @override
  Future<bool> exec({required String type, List<String>? ids, bool log = false}) async {
    try {
      final httpResponse = await httpClient.request(
        url: url,
        log: log,
        method: 'post',
        newReturnErrorMsg: true,
        body: {
          'recipients': {
            'type': type,
            'ids': ids,
          }
        },
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
