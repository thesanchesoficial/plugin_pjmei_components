import 'package:plugin_pjmei_components/main/factories/factories.dart';

import '../../../domain/usecase/transactions/post_finance_transaction.dart';
import '../../usecase/transactions/remote_put_finance_transaction.dart';

PostFinanceTransaction makeRemotePutFinanceTransactions(String id, {Map<String, dynamic>? params}) => RemotePutFinanceTransactions(
  httpClient: makeHttpAdapter(),
  url: makeApiUrl('finance/transaction/$id', params: params),
);