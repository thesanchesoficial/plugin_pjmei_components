import 'package:plugin_pjmei_components/data/usecases/usecases.dart';
import 'package:plugin_pjmei_components/domain/usecases/usecases.dart';
import 'package:plugin_pjmei_components/main/factories/factories.dart';

ListFinanceTransactionsSearch makeRemoteListFinanceTransactionsSearch(String id, {Map<String, dynamic>? params}) => RemoteListFinanceTransactionsSearch(
  httpClient: makeHttpAdapter(),
  url: makeApiUrl('finance/transaction/$id/origin/search', params: params),
);