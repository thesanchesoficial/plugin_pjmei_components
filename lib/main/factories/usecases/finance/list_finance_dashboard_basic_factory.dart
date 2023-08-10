import 'package:plugin_pjmei_components/data/usecases/usecases.dart';
import 'package:plugin_pjmei_components/domain/usecases/usecases.dart';
import 'package:plugin_pjmei_components/main/factories/factories.dart';

ListFinanceDashboardBasic makeRemoteListFinanceDashboardBasic(String id, {Map<String, dynamic>? params}) => RemoteListFinanceDashboardBasic(
  httpClient: makeHttpAdapter(),
  url: makeApiUrl('finance/dashboard/$id/user/period', params: params),
);