import 'package:plugin_pjmei_components/data/http/http_client.dart';

import '../../domain/entity/notification_entity.dart';
import '../../domain/usecase/update_notifications.dart';

class RemoteUpdateNotification implements UpdateNotification {
  final HttpClient httpClient;
  final String url;

  RemoteUpdateNotification({required this.httpClient, required this.url});

  @override
  Future<NotificationEntity> exec(NotificationEntity item, {bool log = false}) async {
    try {
      final httpResponse = await httpClient.request(
        url: url,
        log: log,
        method: 'put',
        newReturnErrorMsg: true,
        body: item.toMap(),
      );
      if ((httpResponse as Map<String, dynamic>).containsKey('error')) {
        throw httpResponse['error']['message'];
      }
      return NotificationEntity.fromMap(httpResponse["success"]);
    } catch (e) {
      rethrow;
    }
  }
}
