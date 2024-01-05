import 'package:plugin_pjmei_components/main/factories/factories.dart';

import '../../../domain/usecase/report/get_balance_evolution_report.dart';
import '../../usecase/report/remote_get_balance_evolution_report.dart';

GetBalanceEvolutionReport makeRemoteGetBalanceEvolutionReportFactory(String id, {Map<String, dynamic>? params}) => RemoteGetBalanceEvolutionReport(
  httpClient: makeHttpAdapter(),
  url: makeApiUrl('/finance/report/fiscal-balance/balance-evolution/$id/user', params: params),
);