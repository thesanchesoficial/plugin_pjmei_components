import 'package:plugin_pjmei_components/main/factories/factories.dart';

import '../../../../domain/usecase/credit-card/flag/update_finance_card_flags.dart';
import '../../../usecase/credit-card/flag/remote_update_finance_card_flags.dart';

UpdateFinanceCardFlags makeRemoteUpdateFinanceCreditCardFlag(String id) => RemoteUpdateFinanceCardFlags(
  httpClient: makeHttpAdapter(),
  url: makeApiUrl('finance/credit-card/flag/$id'),
);