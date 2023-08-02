import 'package:plugin_pjmei_components/data/http/http.dart';
import 'package:plugin_pjmei_components/domain/usecases/notifications/delete_notifications.dart';
import 'package:plugin_pjmei_components/plugin_pjmei_components.dart';

class RemoteDeleteNotification implements DeleteNotification {
  final HttpClient httpClient;
  final String url;

  RemoteDeleteNotification({
    required this.httpClient,
    required this.url
  });

  @override
  Future<bool> exec() async {
    try {
      final httpResponse = await httpClient.request(
        url: url, 
        method: 'delete',
      );
      return httpResponse["code"] == 204 || httpResponse == true;
    } on HttpError catch(_) {
      throw DomainError.unexpected;
    }
  }
}