import 'package:plugin_pjmei_components/main/factories/factories.dart';

import '../../../../domain/usecase/credit-card/transactions/create_finance_credit_card_transaction_factory.dart';
import '../../../usecase/credit-card/transactions/remote_create_finance_credit_card_transaction.dart';

CreateFinanceCreditCardTransactionFactory makeRemoteCreateFinanceCreditCardTransactionFactory() => RemoteCreateFinanceCreditCardTransactionFactory(
  httpClient: makeHttpAdapter(),
  url: makeApiUrl('/finance/transaction/credit-card'),
);