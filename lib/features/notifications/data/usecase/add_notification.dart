import 'package:plugin_pjmei_components/data/http/http_client.dart';

import '../../domain/entity/notification_entity.dart';
import '../../domain/usecase/add_notifications.dart';

class RemoteAddNotification implements AddNotifications {
  final HttpClient httpClient;
  final String url;

  RemoteAddNotification({required this.httpClient, required this.url});

  @override
  Future<NotificationEntity> exec(NotificationEntity params,
      {bool log = false}) async {
    try {
      final httpResponse = await httpClient.request(
        url: url,
        log: log,
        method: 'post',
        newReturnErrorMsg: true,
        body: {
          'title': params.title,
          'subtitle': params.subtitle,
          'link': params.link,
        },
      );
      if ((httpResponse as Map<String, dynamic>).containsKey('error')) {
        throw httpResponse['error']['message'];
      }
      return NotificationEntity.fromMap(httpResponse["success"]['notification']);
    } catch (e) {
      rethrow;
    }
  }
}
