import 'package:plugin_pjmei_components/test/data/http/http_client.dart';
import 'package:plugin_pjmei_components/test/data/http/http_error.dart';
import 'package:plugin_pjmei_components/test/domain/helpers/domain_error.dart';

import '../../../domain/entity/finance_transaction_entity.dart';
import '../../../domain/usecase/transactions/get_finance_transaction.dart';

class RemoteGetFinanceTransactions implements GetFinanceTransaction {
  RemoteGetFinanceTransactions({required this.httpClient, required this.url});
  final HttpClient httpClient;
  final String url;

  Future<FinanceTransactionEntity> exec({bool log = false}) async {
    try {
      final httpResponse = await httpClient.request(
        url: url,
        method: 'get', 
        log: log,
      );
      return FinanceTransactionEntity.fromMap(httpResponse['success']);
    } on HttpError catch (_) {
      throw DomainError.unexpected;
    }
  }
}