import 'package:plugin_pjmei_components/test/data/http/http_client.dart';
import 'package:plugin_pjmei_components/test/data/http/http_error.dart';
import 'package:plugin_pjmei_components/test/domain/helpers/domain_error.dart';

import '../../domain/entity/notification_entity.dart';
import '../../domain/usecase/list_all_notifications.dart';

class RemoteListNotifications implements ListNotifications {
  final HttpClient httpClient;
  final String url;

  RemoteListNotifications({required this.httpClient, required this.url});

  @override
  Future<List<NotificationEntity>> exec({bool log = false}) async {
    try {
      final httpResponse = await httpClient.request(
        url: url,
        log: log,
        method: 'get',
      );
      return (httpResponse["success"] as List)
          .map((e) => NotificationEntity.fromMap(e))
          .toList();
    } on HttpError catch (_) {
      throw DomainError.unexpected;
    }
  }
}
