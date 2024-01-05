import 'package:plugin_pjmei_components/main/factories/factories.dart';

import '../../../domain/usecase/bank/list_finance_bank.dart';
import '../../usecase/bank/remote_list_finance_bank.dart';

ListFinanceBank makeRemoteListFinanceBank(String userId, {Map<String, dynamic>? params}) => RemoteListFinanceBank(
  httpClient: makeHttpAdapter(),
  url: makeApiUrl('finance/bank-account/$userId/user', params: params),
);