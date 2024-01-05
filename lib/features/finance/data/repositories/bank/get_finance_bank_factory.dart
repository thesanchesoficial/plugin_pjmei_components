import 'package:plugin_pjmei_components/main/factories/factories.dart';

import '../../../domain/usecase/bank/get_finance_bank.dart';
import '../../usecase/bank/remote_get_finance_bank.dart';

GetFinanceBank makeRemoteGetFinaceBank(String bankId) => RemoteGetFinanceBank(
  httpClient: makeHttpAdapter(),
  url: makeApiUrl('finance/bank-account/user'),
);