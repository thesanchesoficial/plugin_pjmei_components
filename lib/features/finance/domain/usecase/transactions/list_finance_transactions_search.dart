import '../../entity/finance_transaction_entity.dart';

abstract class ListFinanceTransactionsSearch {
  Future<List<FinanceTransactionEntity>> exec({bool log = false});
}
