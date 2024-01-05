import '../../entity/finance_transaction_data_entity.dart';

abstract class ListFinanceTransactions {
  Future<FinanceTransactionDataEntity> exec({bool log = false});
}
