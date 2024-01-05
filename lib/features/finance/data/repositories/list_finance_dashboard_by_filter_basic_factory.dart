import 'package:plugin_pjmei_components/main/factories/factories.dart';

import '../../domain/usecase/list_finance_dashboard_basic.dart';
import '../usecase/remote_list_finance_dashboard_by_filter_basic.dart';

ListFinanceDashboardByFilterBasic makeRemoteListFinanceDashboardByFilterBasic(String id) => RemoteListFinanceDashboardByFilterBasic(
  httpClient: makeHttpAdapter(),
  url: makeApiUrl('finance/dashboard/$id/user/filter'),
);