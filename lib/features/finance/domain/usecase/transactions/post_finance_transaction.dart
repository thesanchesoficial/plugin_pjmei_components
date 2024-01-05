import '../../entity/finance_transaction_entity.dart';

abstract class PostFinanceTransaction {
  Future<FinanceTransactionEntity> exec(FinanceTransactionEntity body, {bool log = false});
}
