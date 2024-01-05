import 'package:plugin_pjmei_components/main/factories/factories.dart';

import '../../../domain/usecase/transactions/list_finance_transactions.dart';
import '../../usecase/transactions/remote_list_finance_transactions.dart';

ListFinanceTransactions makeRemoteListFinanceTransactionsBankFactory(String bankId, {Map<String, dynamic>? params}) => RemoteListFinanceTransactions(
  httpClient: makeHttpAdapter(),
  url: makeApiUrl('finance/transaction/$bankId/bank-account/period', params: params),
);