import '../../entity/finance_transaction_entity.dart';

abstract class GetFinanceTransaction {
  Future<FinanceTransactionEntity> exec({bool log = false});
}
