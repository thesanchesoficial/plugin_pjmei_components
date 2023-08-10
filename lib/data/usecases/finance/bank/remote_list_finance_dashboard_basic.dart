import 'package:plugin_pjmei_components/data/data.dart';
import 'package:plugin_pjmei_components/domain/domain.dart';

class RemoteListFinanceDashboardBanks implements ListFinanceDashboardBanks {
  RemoteListFinanceDashboardBanks({required this.httpClient, required this.url});
  final HttpClient httpClient;
  final String url;

  Future<FinanceDashboardEntity> exec({bool log = false}) async {
    try {
      final httpResponse = await httpClient.request(
        url: url,
        method: 'get',
        log: log,
      );

      if ((httpResponse as Map<String, dynamic>).containsKey('error')) {
        throw httpResponse['error']['message'];
      }
      return FinanceDashboardEntity.fromMap(httpResponse['success']['dashboard']);
    } on HttpError catch (_) {
      throw DomainError.unexpected;
    }
  }
}
