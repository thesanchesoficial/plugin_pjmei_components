import 'package:plugin_pjmei_components/test/data/http/http_client.dart';
import 'package:plugin_pjmei_components/test/data/http/http_error.dart';
import 'package:plugin_pjmei_components/test/domain/helpers/domain_error.dart';

import '../../../domain/entity/finance_dashboard_credit_card_entity.dart';
import '../../../domain/usecase/credit-card/list_finance_dashboard_credit_card.dart';

class RemoteListFinanceDashboardCreditCard implements ListFinanceDashboardCreditCard {
  RemoteListFinanceDashboardCreditCard({required this.httpClient, required this.url});
  final HttpClient httpClient;
  final String url;

  Future<FinanceDashboardCreditCardEntity> exec({bool log = false}) async {
    try {
      final httpResponse = await httpClient.request(
        url: url,
        method: 'get',
        log: log,
      );
      return FinanceDashboardCreditCardEntity.fromMap(httpResponse['success']['dashboard']);
    } on HttpError catch (_) {
      throw DomainError.unexpected;
    }
  }
}