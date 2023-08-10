import 'package:plugin_pjmei_components/data/usecases/usecases.dart';
import 'package:plugin_pjmei_components/domain/usecases/usecases.dart';
import 'package:plugin_pjmei_components/main/factories/factories.dart';

ListFinanceDashboardByFilterBasic makeRemoteListFinanceDashboardByFilterBasic(String id) => RemoteListFinanceDashboardByFilterBasic(
  httpClient: makeHttpAdapter(),
  url: makeApiUrl('finance/dashboard/$id/user/filter'),
);