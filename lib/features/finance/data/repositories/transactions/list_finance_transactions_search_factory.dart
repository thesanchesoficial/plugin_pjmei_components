import 'package:plugin_pjmei_components/main/factories/factories.dart';

import '../../../domain/usecase/transactions/list_finance_transactions_search.dart';
import '../../usecase/transactions/remote_list_finance_transactions_search.dart';

ListFinanceTransactionsSearch makeRemoteListFinanceTransactionsSearch(String id, {Map<String, dynamic>? params}) => RemoteListFinanceTransactionsSearch(
  httpClient: makeHttpAdapter(),
  url: makeApiUrl('finance/transaction/$id/origin/search', params: params),
);