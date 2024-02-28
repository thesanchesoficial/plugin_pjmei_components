import 'package:plugin_pjmei_components/data/http/http_client.dart';

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
        newReturnErrorMsg: true
      );
      if ((httpResponse as Map<String, dynamic>).containsKey('error')) {
        throw httpResponse['error']['message'];
      }
      return (httpResponse["success"]['notifications'] as List).map((e) => NotificationEntity.fromMap(e)).toList();
    } catch (e) {
      rethrow;
    }
  }
}
