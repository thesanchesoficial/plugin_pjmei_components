import 'package:plugin_pjmei_components/main/factories/factories.dart';

import '../../../domain/usecase/credit-card/get_finance_credit_card_status.dart';
import '../../usecase/credit-card/remote_get_finance_credit_card_status.dart';

GetFinanceCreditCardStatus makeRemoteGetFinanceCreditCardStatus(String id, {Map<String, dynamic>? params}) => RemoteGetFinanceCreditCardStatus(
  httpClient: makeHttpAdapter(),
  url: makeApiUrl('/finance/credit-card/invoice/$id/user/period', params: params),
);