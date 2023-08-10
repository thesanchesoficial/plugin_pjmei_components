import 'package:plugin_pjmei_components/data/usecases/usecases.dart';
import 'package:plugin_pjmei_components/domain/usecases/usecases.dart';
import 'package:plugin_pjmei_components/main/factories/factories.dart';

GetProfitLossReport makeRemoteGetProfitLossReportFactory(String id, {Map<String, dynamic>? params}) => RemoteGetProfitLossReport(
  httpClient: makeHttpAdapter(),
  url: makeApiUrl('/finance/report/fiscal-balance/profit-loss/$id/user', params: params),
);