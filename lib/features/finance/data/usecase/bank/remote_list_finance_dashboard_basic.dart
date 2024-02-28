import 'package:plugin_pjmei_components/data/http/http_client.dart';
import 'package:plugin_pjmei_components/data/http/http_error.dart';
import 'package:plugin_pjmei_components/domain/helpers/domain_error.dart';

import '../../../domain/entity/finance_dashboard_entity.dart';
import '../../../domain/usecase/list_finance_dashboard_basic.dart';

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
