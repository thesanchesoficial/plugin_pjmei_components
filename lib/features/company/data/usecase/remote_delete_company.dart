import 'package:plugin_pjmei_components/test/data/http/http_client.dart';

import '../../domain/usecase/delete_company.dart';

class RemoteDeleteCompany implements DeleteCompany {
  final HttpClient httpClient;
  final String url;

  RemoteDeleteCompany({required this.httpClient, required this.url});

  @override
  Future<bool> exec({bool log = false}) async {
    try {
      final httpResponse = await httpClient.request(
        url: url,
        log: log,
        method: 'delete',
      );
      if ((httpResponse as Map<String, dynamic>).containsKey('error')) {
        throw httpResponse['error']['message'];
      }
      return httpResponse["code"] == 200;
    } catch (errorMsg) {
      throw errorMsg;
    }
  }
}
