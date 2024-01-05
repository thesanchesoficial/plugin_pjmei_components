import 'package:plugin_pjmei_components/main/factories/factories.dart';

import '../../../domain/usecase/bank/delete_finance_bank.dart';
import '../../usecase/bank/remote_delete_finance_bank.dart';

DeleteFinanceBank makeRemoteDeleteFinaceBank(String id) => RemoteDeleteFinance(
  httpClient: makeHttpAdapter(),
  url: makeApiUrl('finance/bank-account/$id'),
);