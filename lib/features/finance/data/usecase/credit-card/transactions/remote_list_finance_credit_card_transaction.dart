import 'package:plugin_pjmei_components/data/http/http_client.dart';
import 'package:plugin_pjmei_components/data/http/http_error.dart';
import 'package:plugin_pjmei_components/domain/helpers/domain_error.dart';

import '../../../../domain/entity/finance_transaction_data_entity.dart';
import '../../../../domain/usecase/credit-card/transactions/list_finance_credit_card_transaction_factory.dart';

class RemoteListFinanceCreditCardTransactionFactory implements ListFinanceCreditCardTransactionFactory {
  RemoteListFinanceCreditCardTransactionFactory({required this.httpClient, required this.url});
  final HttpClient httpClient;
  final String url;

  Future<FinanceTransactionDataEntity> exec({bool log = false}) async {
    try {
      final httpResponse = await httpClient.request(
        url: url,
        method: 'get',
        log: log,
      );
      return FinanceTransactionDataEntity.fromMap(httpResponse['success']['transactions']);
    } on HttpError catch (_) {
      throw DomainError.unexpected;
    }
  }
}