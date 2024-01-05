import 'package:plugin_pjmei_components/test/data/http/http_client.dart';
import 'package:plugin_pjmei_components/test/data/http/http_error.dart';
import 'package:plugin_pjmei_components/test/domain/helpers/domain_error.dart';

import '../../../../domain/entity/finance_transaction_entity.dart';
import '../../../../domain/usecase/credit-card/transactions/update_finance_credit_card_transaction_factory.dart';

class RemoteUpdateFinanceCreditCardTransaction implements UpdateFinanceCreditCardTransaction {
  RemoteUpdateFinanceCreditCardTransaction({required this.httpClient, required this.url});
  final HttpClient httpClient;
  final String url;

  Future<FinanceTransactionEntity> exec(FinanceTransactionEntity body, {bool log = false}) async {
    try {
      final httpResponse = await httpClient.request(
        url: url,
        method: 'post',
        body: body.toMap(),
        log: log,
      );
      return FinanceTransactionEntity.fromMap(httpResponse['success']);
    } on HttpError catch (_) {
      throw DomainError.unexpected;
    }
  }
}