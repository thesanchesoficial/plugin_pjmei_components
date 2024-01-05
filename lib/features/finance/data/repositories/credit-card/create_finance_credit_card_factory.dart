import 'package:plugin_pjmei_components/main/factories/factories.dart';

import '../../../domain/usecase/credit-card/create_finance_credit_card.dart';
import '../../usecase/credit-card/remote_create_finance_credit_card.dart';

CreateFinanceCreditCard makeRemoteCreateFinaceCreditCard() => RemoteCreateFinanceCreditCard(
  httpClient: makeHttpAdapter(),
  url: makeApiUrl('finance/credit-card'),
);