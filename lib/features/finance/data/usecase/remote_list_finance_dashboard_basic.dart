import 'package:plugin_pjmei_components/data/http/http_client.dart';
import 'package:plugin_pjmei_components/data/http/http_error.dart';
import 'package:plugin_pjmei_components/domain/helpers/domain_error.dart';

import '../../domain/entity/finance_dashboard_basic_entity.dart';
import '../../domain/usecase/list_finance_dashboard_basic.dart';

class RemoteListFinanceDashboardBasic implements ListFinanceDashboardBasic {
  RemoteListFinanceDashboardBasic({required this.httpClient, required this.url});
  final HttpClient httpClient;
  final String url;

  Future<FinanceDashboardBasicEntity> exec({bool log = false}) async {
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
      return FinanceDashboardBasicEntity.fromMap(httpResponse['success']);
    } on HttpError catch (_) {
      throw DomainError.unexpected;
    }
  }
}
