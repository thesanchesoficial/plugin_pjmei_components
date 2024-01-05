import 'package:plugin_pjmei_components/main/factories/factories.dart';

import '../../domain/usecase/list_finance_dashboard_basic.dart';
import '../usecase/remote_list_finance_dashboard_basic.dart';

ListFinanceDashboardBasic makeRemoteListFinanceDashboardBasic(String id, {Map<String, dynamic>? params}) => RemoteListFinanceDashboardBasic(
  httpClient: makeHttpAdapter(),
  url: makeApiUrl('finance/dashboard/$id/user/period', params: params),
);