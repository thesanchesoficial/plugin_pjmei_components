import 'package:plugin_pjmei_components/test/data/http/http_client.dart';
import 'package:plugin_pjmei_components/test/data/http/http_error.dart';
import 'package:plugin_pjmei_components/test/domain/helpers/domain_error.dart';

import '../../domain/usecase/delete_link.dart';

class RemoteDeleteLink implements DeleteLink {
  RemoteDeleteLink({required this.httpClient, required this.url});
  final HttpClient httpClient;
  final String url;

  Future<bool> exec({bool log = false}) async {
    try {
      await httpClient.request(
        url: url,
        log: log,
        method: 'delete',
      );
      return true;
    } on HttpError catch (_) {
      throw DomainError.unexpected;
    }
  }
}
