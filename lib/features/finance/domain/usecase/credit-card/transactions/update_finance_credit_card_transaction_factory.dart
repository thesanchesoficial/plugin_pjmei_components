import '../../../entity/finance_transaction_entity.dart';

abstract class UpdateFinanceCreditCardTransaction {
  Future<FinanceTransactionEntity> exec(FinanceTransactionEntity body, {bool log = false});
}
