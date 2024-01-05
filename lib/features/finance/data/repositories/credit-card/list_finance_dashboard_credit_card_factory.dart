import 'package:plugin_pjmei_components/main/factories/factories.dart';

import '../../../domain/usecase/credit-card/list_finance_dashboard_credit_card.dart';
import '../../usecase/credit-card/remote_list_finance_dashboard_credit_card.dart';

ListFinanceDashboardCreditCard makeRemoteListFinanceDashboardCreditCardFactory(String id, {Map<String, dynamic>? params}) => RemoteListFinanceDashboardCreditCard(
  httpClient: makeHttpAdapter(),
  url: makeApiUrl('finance/dashboard/$id/credit-card/period', params: params),
);