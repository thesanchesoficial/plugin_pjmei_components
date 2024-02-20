import 'package:plugin_pjmei_components/main/factories/factories.dart';

import '../../../domain/usecase/report/get_profit_loss_report.dart';
import '../../usecase/report/remote_get_profit_loss_report.dart';

GetProfitLossReport makeRemoteGetProfitLossReportFactory(String id,
        {Map<String, dynamic>? params}) =>
    RemoteGetProfitLossReport(
      httpClient: makeHttpAdapter(),
      url: makeApiUrl('finance/report/fiscal-balance/profit-loss/$id/user',
          params: params),
    );
