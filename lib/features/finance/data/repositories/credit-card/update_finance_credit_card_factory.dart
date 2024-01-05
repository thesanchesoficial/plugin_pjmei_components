import 'package:plugin_pjmei_components/main/factories/factories.dart';

import '../../../domain/usecase/credit-card/update_finance_credit_card.dart';
import '../../usecase/credit-card/remote_update_finance_credit_card.dart';

UpdateFinanceCreditCard makeRemoteUpdateFinanceCreditCard(String id) => RemoteUpdateFinanceCreditCard(
  httpClient: makeHttpAdapter(),
  url: makeApiUrl('finance/credit-card/$id'),
);