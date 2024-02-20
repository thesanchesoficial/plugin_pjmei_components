import 'package:plugin_pjmei_components/main/factories/factories.dart';

import '../../../domain/usecase/credit-card/get_finance_credit_card.dart';
import '../../usecase/credit-card/remote_get_finance_credit_card.dart';

GetFinanceCreditCard makeRemoteGetFinanceCreditCard(String id) =>
    RemoteGetFinanceCreditCard(
      httpClient: makeHttpAdapter(),
      url: makeApiUrl('finance/credit-card/$id/user'),
    );
