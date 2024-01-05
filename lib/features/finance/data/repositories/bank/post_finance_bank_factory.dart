import 'package:plugin_pjmei_components/main/factories/factories.dart';

import '../../../domain/usecase/bank/post_finance_bank.dart';
import '../../usecase/bank/remote_post_finance_bank.dart';

PostFinanceBank makeRemotePostFinaceBank() => RemotePostFinanceBank(
  httpClient: makeHttpAdapter(),
  url: makeApiUrl('finance/bank-account'),
);