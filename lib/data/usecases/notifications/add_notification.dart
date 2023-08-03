import 'package:plugin_pjmei_components/plugin_pjmei_components.dart';

class RemoteAddNotification implements AddNotifications {
  final HttpClient httpClient;
  final String url;

  RemoteAddNotification({
    required this.httpClient,
    required this.url
  });

  @override
  Future<NotificationEntity> exec(NotificationEntity params) async {
    try {
      final httpResponse = await httpClient.request(
        url: url, 
        method: 'post',
        body: {
          'title': params.title,
          'subtitle': params.subtitle,
          'link': params.link,
        },
      );
      return NotificationEntity.fromMap(httpResponse["success"]);
    } on HttpError catch(_) {
      throw DomainError.unexpected;
    }
  }
}