import 'package:plugin_pjmei_components/data/usecases/usecases.dart';
import 'package:plugin_pjmei_components/domain/usecases/usecases.dart';
import 'package:plugin_pjmei_components/main/factories/factories.dart';

GetBalanceEvolutionReport makeRemoteGetBalanceEvolutionReportFactory(String id, {Map<String, dynamic>? params}) => RemoteGetBalanceEvolutionReport(
  httpClient: makeHttpAdapter(),
  url: makeApiUrl('/finance/report/fiscal-balance/balance-evolution/$id/user', params: params),
);