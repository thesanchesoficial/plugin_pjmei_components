import 'package:plugin_pjmei_components/main/factories/factories.dart';

import '../../../../domain/usecase/credit-card/transactions/list_finance_credit_card_transaction_factory.dart';
import '../../../usecase/credit-card/transactions/remote_list_finance_credit_card_transaction.dart';

ListFinanceCreditCardTransactionFactory makeRemoteListFinanceCreditCardTransactionFactory(String id, {Map<String, dynamic>? params}) => RemoteListFinanceCreditCardTransactionFactory(
  httpClient: makeHttpAdapter(),
  url: makeApiUrl('/finance/transaction/$id/credit-card/period', params: params),
);