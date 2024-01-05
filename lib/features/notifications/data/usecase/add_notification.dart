import 'package:plugin_pjmei_components/test/data/http/http_client.dart';
import 'package:plugin_pjmei_components/test/data/http/http_error.dart';
import 'package:plugin_pjmei_components/test/domain/helpers/domain_error.dart';

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
        body: {
          'title': params.title,
          'subtitle': params.subtitle,
          'link': params.link,
        },
      );
      return NotificationEntity.fromMap(httpResponse["success"]);
    } on HttpError catch (_) {
      throw DomainError.unexpected;
    }
  }
}
