import 'package:plugin_pjmei_components/data/usecases/usecases.dart';
import 'package:plugin_pjmei_components/domain/usecases/usecases.dart';
import 'package:plugin_pjmei_components/main/factories/factories.dart';

ListFinanceBankCashFlow makeRemoteListFinanceBankCashFlow(String userId, {Map<String, dynamic>? params}) => RemoteListFinanceBankCashFlow(
  httpClient: makeHttpAdapter(),
  url: makeApiUrl('finance/bank-account/cash-flow/$userId/user/period', params: params),
);