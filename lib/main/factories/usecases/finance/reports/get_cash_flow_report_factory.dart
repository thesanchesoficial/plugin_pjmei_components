import 'package:plugin_pjmei_components/data/usecases/usecases.dart';
import 'package:plugin_pjmei_components/domain/usecases/usecases.dart';
import 'package:plugin_pjmei_components/main/factories/factories.dart';

GetCashFlowReport makeRemoteGetCashFlowReportFactory(String id, {Map<String, dynamic>? params}) => RemoteGetCashFlowReport(
  httpClient: makeHttpAdapter(),
  url: makeApiUrl('/finance/report/fiscal-balance/cash-flow/$id/user', params: params),
);