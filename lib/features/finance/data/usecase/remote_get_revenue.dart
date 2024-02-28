import 'package:plugin_pjmei_components/data/http/http_client.dart';
import 'package:plugin_pjmei_components/data/http/http_error.dart';
import 'package:plugin_pjmei_components/domain/helpers/domain_error.dart';

import '../../domain/usecase/get_revenue.dart';

class RemoteGetRevenue implements GetRevenue {
  RemoteGetRevenue({required this.httpClient, required this.url});
  final HttpClient httpClient;
  final String url;

  Future<num> exec({bool log = false}) async {
    try {
      final httpResponse = await httpClient.request(
        url: url,
        method: 'get',
        log: log,
        newReturnErrorMsg: true,
      );

      if ((httpResponse as Map<String, dynamic>).containsKey('error')) {
        throw httpResponse['error']['message'];
      }

      return num.parse(httpResponse['success']['annualRevenue'].toString());
    } on HttpError catch (_) {
      throw DomainError.unexpected;
    }
  }
}
