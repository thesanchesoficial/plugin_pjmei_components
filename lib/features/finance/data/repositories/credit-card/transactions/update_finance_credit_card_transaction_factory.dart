import 'package:plugin_pjmei_components/main/factories/factories.dart';

import '../../../../domain/usecase/credit-card/transactions/update_finance_credit_card_transaction_factory.dart';
import '../../../usecase/credit-card/transactions/remote_update_finance_credit_card_transaction.dart';

UpdateFinanceCreditCardTransaction makeRemoteUpdateFinanceCreditCardTransactionFactory(String id, {Map<String, dynamic>? params}) => RemoteUpdateFinanceCreditCardTransaction(
  httpClient: makeHttpAdapter(),
  url: makeApiUrl('/finance/transaction/$id/credit-card', params: params),
);