import 'package:plugin_pjmei_components/main/factories/factories.dart';

import '../../../domain/usecase/list_finance_dashboard_basic.dart';
import '../../usecase/bank/remote_list_finance_dashboard_basic.dart';

ListFinanceDashboardBanks makeRemoteListFinanceDashboardBanks(String bankId, {Map<String, dynamic>? params}) => RemoteListFinanceDashboardBanks(
  httpClient: makeHttpAdapter(),
  url: makeApiUrl('finance/dashboard/$bankId/bank-account/period', params: params),
);