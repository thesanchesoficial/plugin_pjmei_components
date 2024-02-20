import 'package:plugin_pjmei_components/main/factories/factories.dart';

import '../../../domain/usecase/report/get_behavior_average_monthly_expense_report.dart';
import '../../usecase/report/remote_get_behavior_average_monthly_expense_report.dart';

GetBehaviorAverageMonthlyReport
    makeRemoteGetBehaviorAverageMonthlyReportFactory(String id, String type,
            {Map<String, dynamic>? params}) =>
        RemoteGetBehaviorAverageMonthlyReport(
          httpClient: makeHttpAdapter(),
          url: makeApiUrl(
              'finance/report/behavior/average-monthly/${type}/$id/user',
              params: params),
        );
