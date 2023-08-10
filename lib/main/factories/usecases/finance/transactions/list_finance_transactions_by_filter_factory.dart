import 'package:plugin_pjmei_components/data/usecases/usecases.dart';
import 'package:plugin_pjmei_components/domain/usecases/usecases.dart';
import 'package:plugin_pjmei_components/main/factories/factories.dart';

ListFinanceTransactionsByFilter makeRemoteListFinanceByFilterTransactions(String id) => RemoteListFinanceTransactionsByFilter(
  httpClient: makeHttpAdapter(),
  url: makeApiUrl('finance/transaction/$id/user/filter'),
);