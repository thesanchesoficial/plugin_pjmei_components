import 'package:plugin_pjmei_components/data/http/http_client.dart';
import 'package:plugin_pjmei_components/data/http/http_error.dart';
import 'package:plugin_pjmei_components/domain/helpers/domain_error.dart';

import '../../../domain/entity/finance_filter_entity.dart';
import '../../../domain/entity/finance_transaction_data_entity.dart';
import '../../../domain/usecase/transactions/list_finance_transactions_by_filter.dart';

class RemoteListFinanceTransactionsByFilter implements ListFinanceTransactionsByFilter {
  RemoteListFinanceTransactionsByFilter({required this.httpClient, required this.url});
  final HttpClient httpClient;
  final String url;

  Future<FinanceTransactionDataEntity> exec(FinanceFilterEntity filter, {bool log = false}) async {
    try {
      final httpResponse = await httpClient.request(
        url: url,
        method: 'post',
        body: filter.toMap(),
        log: log,
      );
      return FinanceTransactionDataEntity.fromMap(httpResponse['success']['transactions']);
    } on HttpError catch (_) {
      throw DomainError.unexpected;
    }
  }
}