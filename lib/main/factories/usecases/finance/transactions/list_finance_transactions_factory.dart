import 'package:plugin_pjmei_components/data/usecases/usecases.dart';
import 'package:plugin_pjmei_components/domain/usecases/usecases.dart';
import 'package:plugin_pjmei_components/main/factories/factories.dart';

ListFinanceTransactions makeRemoteListFinanceTransactions(String userId, {Map<String, dynamic>? params}) => RemoteListFinanceTransactions(
  httpClient: makeHttpAdapter(),
  url: makeApiUrl('finance/transaction/$userId/user/period', params: params),
);