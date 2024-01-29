import 'package:plugin_pjmei_components/plugin_pjmei_components.dart';

import '../../domain/usecase/get_limitemei.dart';

class RemoteGetLimiteMei implements GetLimiteMei {
  RemoteGetLimiteMei({required this.httpClient, required this.url});
  final HttpClient httpClient;
  final String url;

  Future<num> exec({bool log = false}) async {
    try {
      final httpResponse = await httpClient.request(
        url: url,
        method: 'get',
        newReturnErrorMsg: true,
      );
      return (httpResponse['success']['annualRevenue']);
    } catch (e) {
      throw e;
    }
  }
}
