import 'package:plugin_pjmei_components/data/http/http.dart';
import 'package:plugin_pjmei_components/domain/usecases/notifications/list_all_notifications.dart';
import 'package:plugin_pjmei_components/plugin_pjmei_components.dart';

class RemoteListNotifications implements ListNotifications {
  final HttpClient httpClient;
  final String url;

  RemoteListNotifications({
    required this.httpClient,
    required this.url
  });

  @override
  Future<List<NotificationEntity>> exec() async {
    try {
      final httpResponse = await httpClient.request(
        url: url, 
        method: 'get',
      );
      return (httpResponse["success"] as List).map((e) => NotificationEntity.fromMap(e)).toList();
    } on HttpError catch(_) {
      throw DomainError.unexpected;
    }
  }
}