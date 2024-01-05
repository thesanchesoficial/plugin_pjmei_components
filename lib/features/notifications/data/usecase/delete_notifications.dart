import 'package:plugin_pjmei_components/test/data/http/http_client.dart';
import 'package:plugin_pjmei_components/test/data/http/http_error.dart';
import 'package:plugin_pjmei_components/test/domain/helpers/domain_error.dart';

import '../../domain/usecase/delete_notifications.dart';

class RemoteDeleteNotification implements DeleteNotification {
  final HttpClient httpClient;
  final String url;

  RemoteDeleteNotification({required this.httpClient, required this.url});

  @override
  Future<bool> exec({bool log = false}) async {
    try {
      final httpResponse = await httpClient.request(
        url: url,
        log: log,
        method: 'delete',
      );
      return httpResponse["code"] == 204 || httpResponse == true;
    } on HttpError catch (_) {
      throw DomainError.unexpected;
    }
  }
}
