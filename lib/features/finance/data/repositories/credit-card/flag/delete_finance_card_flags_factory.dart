import 'package:plugin_pjmei_components/main/factories/factories.dart';

import '../../../../domain/usecase/credit-card/flag/delete_finance_card_flags.dart';
import '../../../usecase/credit-card/flag/remote_delete_finance_card_flags.dart';

DeleteFinanceCardFlags makeRemoteDeleteFinaceCreditCard(String id) => RemoteDeleteFinanceCardFlags(
  httpClient: makeHttpAdapter(),
  url: makeApiUrl('finance/credit-card/flag/$id'),
);