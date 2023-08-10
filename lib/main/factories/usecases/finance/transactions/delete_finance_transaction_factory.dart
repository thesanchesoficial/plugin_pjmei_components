import 'package:plugin_pjmei_components/data/usecases/usecases.dart';
import 'package:plugin_pjmei_components/domain/usecases/usecases.dart';
import 'package:plugin_pjmei_components/main/factories/factories.dart';

DeleteFinanceTransaction makeRemoteDeleteFinanceTransactions(String userId, {Map<String, dynamic>? params}) => RemoteDeleteFinanceTransactions(
  httpClient: makeHttpAdapter(),
  url: makeApiUrl('finance/transaction/$userId', params: params),
);