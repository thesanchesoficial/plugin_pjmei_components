import 'package:plugin_pjmei_components/test/data/http/http_client.dart';
import 'package:plugin_pjmei_components/test/data/http/http_error.dart';
import 'package:plugin_pjmei_components/test/domain/helpers/domain_error.dart';

import '../../../domain/entity/finance_transaction_entity.dart';
import '../../../domain/usecase/transactions/list_finance_transactions_search.dart';

class RemoteListFinanceTransactionsSearch implements ListFinanceTransactionsSearch {
  RemoteListFinanceTransactionsSearch({required this.httpClient, required this.url});
  final HttpClient httpClient;
  final String url;

  Future<List<FinanceTransactionEntity>> exec({bool log = false}) async {
    try {
      final httpResponse = await httpClient.request(
        url: url,
        method: 'get',
        log: log,
      );
      return List<FinanceTransactionEntity>.from(httpResponse['success']['transactions']?.map((x) => FinanceTransactionEntity.fromMap(x)));
    } on HttpError catch (_) {
      throw DomainError.unexpected;
    }
  }
}