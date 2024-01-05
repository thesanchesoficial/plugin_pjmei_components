import 'package:plugin_pjmei_components/main/factories/factories.dart';

import '../../../domain/usecase/transactions/list_finance_transactions_by_filter.dart';
import '../../usecase/transactions/remote_list_finance_transactions_by_filter.dart';

ListFinanceTransactionsByFilter makeRemoteListFinanceByFilterTransactions(String id) => RemoteListFinanceTransactionsByFilter(
  httpClient: makeHttpAdapter(),
  url: makeApiUrl('finance/transaction/$id/user/filter'),
);