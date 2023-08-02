import 'package:plugin_pjmei_components/data/http/http.dart';
import 'package:plugin_pjmei_components/domain/usecases/notifications/update_notifications.dart';
import 'package:plugin_pjmei_components/plugin_pjmei_components.dart';

class RemoteUpdateNotification implements UpdateNotification {
  final HttpClient httpClient;
  final String url;

  RemoteUpdateNotification({
    required this.httpClient,
    required this.url
  });

  @override
  Future<NotificationEntity> exec(NotificationEntity item) async {
    try {
      final httpResponse = await httpClient.request(
        url: url, 
        method: 'put',
        body: item.toMap(),
      );
      return NotificationEntity.fromMap(httpResponse["success"]);
    } on HttpError catch(_) {
      throw DomainError.unexpected;
    }
  }
}