import '../entity/transaction_entity.dart';

abstract class ListTransactionsBySubscriptions {
  Future<List<TransactionEntity>> exec({bool log = false});
}
