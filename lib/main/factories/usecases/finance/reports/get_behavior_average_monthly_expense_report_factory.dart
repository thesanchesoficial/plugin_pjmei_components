import 'package:plugin_pjmei_components/data/usecases/usecases.dart';
import 'package:plugin_pjmei_components/domain/usecases/usecases.dart';
import 'package:plugin_pjmei_components/main/factories/factories.dart';

GetBehaviorAverageMonthlyReport makeRemoteGetBehaviorAverageMonthlyReportFactory(String id, String type, {Map<String, dynamic>? params}) => RemoteGetBehaviorAverageMonthlyReport(
  httpClient: makeHttpAdapter(),
  url: makeApiUrl('/finance/report/behavior/average-monthly/${type}/$id/user', params: params),
);