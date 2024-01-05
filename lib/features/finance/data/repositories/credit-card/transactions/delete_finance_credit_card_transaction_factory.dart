import 'package:plugin_pjmei_components/main/factories/factories.dart';

import '../../../../domain/usecase/credit-card/transactions/delete_finance_credit_card_transaction_factory.dart';
import '../../../usecase/credit-card/transactions/remote_delete_finance_credit_card_transaction.dart';

DeleteFinanceCreditCardTransactionFactory makeRemoteDeleteFinanceCreditCardTransactionFactory(String id, {Map<String, dynamic>? params}) => RemoteDeleteFinanceCreditCardTransactionFactory(
  httpClient: makeHttpAdapter(),
  url: makeApiUrl('/finance/transaction/$id/credit-card', params: params),
);