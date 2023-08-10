import 'package:plugin_pjmei_components/data/usecases/usecases.dart';
import 'package:plugin_pjmei_components/domain/usecases/usecases.dart';
import 'package:plugin_pjmei_components/main/factories/factories.dart';

ListFinanceDashboardBanks makeRemoteListFinanceDashboardBanks(String bankId, {Map<String, dynamic>? params}) => RemoteListFinanceDashboardBanks(
  httpClient: makeHttpAdapter(),
  url: makeApiUrl('finance/dashboard/$bankId/bank-account/period', params: params),
);