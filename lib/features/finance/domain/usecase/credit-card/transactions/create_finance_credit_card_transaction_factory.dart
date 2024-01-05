import '../../../entity/finance_transaction_entity.dart';

abstract class CreateFinanceCreditCardTransactionFactory {
  Future<FinanceTransactionEntity> exec(FinanceTransactionEntity body, {bool log = false});
}
