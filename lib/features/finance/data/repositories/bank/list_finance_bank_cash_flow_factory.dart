import 'package:plugin_pjmei_components/main/factories/factories.dart';

import '../../../domain/usecase/bank/list_finance_bank_cash_flow.dart';
import '../../usecase/bank/remote_list_finance_bank_cash_flow.dart';

ListFinanceBankCashFlow makeRemoteListFinanceBankCashFlow(String userId, {Map<String, dynamic>? params}) => RemoteListFinanceBankCashFlow(
  httpClient: makeHttpAdapter(),
  url: makeApiUrl('finance/bank-account/cash-flow/$userId/user/period', params: params),
);