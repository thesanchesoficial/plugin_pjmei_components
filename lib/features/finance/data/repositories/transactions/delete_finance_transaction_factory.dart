import 'package:plugin_pjmei_components/main/factories/factories.dart';

import '../../../domain/usecase/transactions/delete_finance_transaction.dart';
import '../../usecase/transactions/remote_delete_finance_transaction.dart';

DeleteFinanceTransaction makeRemoteDeleteFinanceTransactions(String userId, {Map<String, dynamic>? params}) => RemoteDeleteFinanceTransactions(
  httpClient: makeHttpAdapter(),
  url: makeApiUrl('finance/transaction/$userId', params: params),
);