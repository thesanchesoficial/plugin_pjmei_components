import 'package:plugin_pjmei_components/data/http/http_client.dart';
import 'package:plugin_pjmei_components/data/http/http_error.dart';
import 'package:plugin_pjmei_components/domain/helpers/domain_error.dart';

import '../../../../domain/usecase/credit-card/transactions/delete_finance_credit_card_transaction_factory.dart';

class RemoteDeleteFinanceCreditCardTransactionFactory implements DeleteFinanceCreditCardTransactionFactory {
  RemoteDeleteFinanceCreditCardTransactionFactory({required this.httpClient, required this.url});
  final HttpClient httpClient;
  final String url;

  Future<bool> exec({bool log = false}) async {
    try {
      final httpResponse = await httpClient.request(
        url: url,
        method: 'delete',
        log: log,
      );
      return num.parse(httpResponse['success']['code'].toString()) == 200;
    } on HttpError catch (_) {
      throw DomainError.unexpected;
    }
  }
}