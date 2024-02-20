import 'package:plugin_pjmei_components/main/factories/factories.dart';

import '../../../domain/usecase/credit-card/get_finance_credit_card_by_id.dart';
import '../../usecase/credit-card/remote_get_finance_credit_card_by_id.dart';

GetFinanceCreditCardById makeRemoteGetFinanceCreditCardById(String id) =>
    RemoteGetFinanceCreditCardById(
      httpClient: makeHttpAdapter(),
      url: makeApiUrl('finance/credit-card/$id'),
    );
