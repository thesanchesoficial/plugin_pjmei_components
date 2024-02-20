import 'package:plugin_pjmei_components/main/factories/factories.dart';

import '../../../domain/usecase/credit-card/delete_finance_credit_card.dart';
import '../../usecase/credit-card/remote_delete_finance_credit_card.dart';

DeleteFinanceCreditCard makeRemoteDeleteFinanceCreditCard(String id) =>
    RemoteDeleteFinanceCreditCard(
      httpClient: makeHttpAdapter(),
      url: makeApiUrl('finance/credit-card/$id'),
    );
