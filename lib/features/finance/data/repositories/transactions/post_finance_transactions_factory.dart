import 'package:plugin_pjmei_components/main/factories/factories.dart';

import '../../../domain/usecase/transactions/post_finance_transaction.dart';
import '../../usecase/transactions/remote_post_finance_transaction.dart';

PostFinanceTransaction makeRemotePostFinanceTransactions() => RemotePostFinanceTransactions(
  httpClient: makeHttpAdapter(),
  url: makeApiUrl('finance/transaction'),
);