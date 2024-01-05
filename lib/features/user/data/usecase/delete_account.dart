import 'package:plugin_pjmei_components/test/data/http/http_client.dart';

import '../../domain/usecase/delete_account.dart';

class RemoteDeleteAccount implements DeleteAccount {
  RemoteDeleteAccount({required this.httpClient, required this.url});
  final HttpClient httpClient;
  final String url;

  Future<bool> exec({bool log = false}) async {
    try {
      final httpResponse = await httpClient.request(
        url: url,
        log: log,
        method: 'delete',
      );
      if (httpResponse != null && (httpResponse as Map<String, dynamic>).containsKey('error')) {
        throw httpResponse['error']['message'];
      }
      return httpResponse == null;
    } catch (e) {
      throw e;
    }
  }
}
