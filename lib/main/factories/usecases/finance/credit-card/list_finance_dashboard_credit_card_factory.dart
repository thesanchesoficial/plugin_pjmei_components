import 'package:plugin_pjmei_components/data/usecases/usecases.dart';
import 'package:plugin_pjmei_components/domain/usecases/usecases.dart';
import 'package:plugin_pjmei_components/main/factories/factories.dart';

ListFinanceDashboardCreditCard makeRemoteListFinanceDashboardCreditCardFactory(String id, {Map<String, dynamic>? params}) => RemoteListFinanceDashboardCreditCard(
  httpClient: makeHttpAdapter(),
  url: makeApiUrl('finance/dashboard/$id/credit-card/period', params: params),
);