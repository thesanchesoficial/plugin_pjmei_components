import '../entity/transaction_finance_opened_entity.dart';

abstract class ListTransactionsFinaceOpenedEntity {
  Future<List<TransactionFinaceOpenedEntity>> exec(Map<dynamic, dynamic> params, {bool log = false});
}
