import 'package:plugin_pjmei_components/main/factories/factories.dart';

import '../../../domain/usecase/transactions/get_finance_transaction.dart';
import '../../usecase/transactions/remote_get_finance_transaction.dart';

GetFinanceTransaction makeRemoteGetFinanceTransactions(String bankId) => RemoteGetFinanceTransactions(
  httpClient: makeHttpAdapter(),
  url: makeApiUrl('venver/finance/bank-account/$bankId'),
);