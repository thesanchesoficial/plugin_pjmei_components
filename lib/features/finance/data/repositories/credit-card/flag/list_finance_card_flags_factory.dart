import 'package:plugin_pjmei_components/main/factories/factories.dart';

import '../../../../domain/usecase/credit-card/flag/list_finance_card_flags.dart';
import '../../../usecase/credit-card/flag/remote_list_finance_card_flags.dart';

ListFinanceCardFlags makeRemoteListFinaceCreditCard() => RemoteListFinanceCardFlags(
  httpClient: makeHttpAdapter(),
  url: makeApiUrl('finance/credit-card/flag'),
);