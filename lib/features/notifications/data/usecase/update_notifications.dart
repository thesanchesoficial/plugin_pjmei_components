import 'package:plugin_pjmei_components/test/data/http/http_client.dart';
import 'package:plugin_pjmei_components/test/data/http/http_error.dart';
import 'package:plugin_pjmei_components/test/domain/helpers/domain_error.dart';

import '../../domain/entity/notification_entity.dart';
import '../../domain/usecase/update_notifications.dart';

class RemoteUpdateNotification implements UpdateNotification {
  final HttpClient httpClient;
  final String url;

  RemoteUpdateNotification({required this.httpClient, required this.url});

  @override
  Future<NotificationEntity> exec(NotificationEntity item,
      {bool log = false}) async {
    try {
      final httpResponse = await httpClient.request(
        url: url,
        log: log,
        method: 'put',
        body: item.toMap(),
      );
      return NotificationEntity.fromMap(httpResponse["success"]);
    } on HttpError catch (_) {
      throw DomainError.unexpected;
    }
  }
}
