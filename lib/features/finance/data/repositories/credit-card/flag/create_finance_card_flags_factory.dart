import 'package:plugin_pjmei_components/main/factories/factories.dart';

import '../../../../domain/usecase/credit-card/flag/create_finance_card_flags.dart';
import '../../../usecase/credit-card/flag/remote_create_finance_card_flags.dart';

CreateFinanceCardFlags makeRemoteCreateFinaceCreditCardFlag() => RemoteCreateFinanceCardFlags(
  httpClient: makeHttpAdapter(),
  url: makeApiUrl('finance/credit-card/flag'),
);