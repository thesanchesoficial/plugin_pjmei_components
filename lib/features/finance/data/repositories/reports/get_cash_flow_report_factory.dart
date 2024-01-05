import 'package:plugin_pjmei_components/main/factories/factories.dart';

import '../../../domain/usecase/report/get_cash_flow_report.dart';
import '../../usecase/report/remote_get_cash_flow_report.dart';

GetCashFlowReport makeRemoteGetCashFlowReportFactory(String id, {Map<String, dynamic>? params}) => RemoteGetCashFlowReport(
  httpClient: makeHttpAdapter(),
  url: makeApiUrl('/finance/report/fiscal-balance/cash-flow/$id/user', params: params),
);