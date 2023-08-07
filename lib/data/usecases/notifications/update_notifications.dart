import 'package:plugin_pjmei_components/plugin_pjmei_components.dart';

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
