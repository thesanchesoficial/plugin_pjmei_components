import 'package:plugin_pjmei_components/data/http/http_client.dart';
import 'package:plugin_pjmei_components/data/http/http_error.dart';
import 'package:plugin_pjmei_components/domain/helpers/domain_error.dart';

import '../../domain/usecase/delete_user.dart';

class RemoteDeleteUser implements DeleteUser {
  final HttpClient httpClient;
  final String url;

  RemoteDeleteUser({required this.httpClient, required this.url});

  @override
  Future<bool> exec({bool log = false}) async {
    try {
      final httpResponse = await httpClient.request(
        url: url,
        log: log,
        method: 'delete',
      );
      return httpResponse["code"] == 200;
    } on HttpError catch (_) {
      throw DomainError.unexpected;
    }
  }
}
