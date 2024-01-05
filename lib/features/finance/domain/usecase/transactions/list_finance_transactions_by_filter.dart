import '../../entity/finance_filter_entity.dart';
import '../../entity/finance_transaction_data_entity.dart';

abstract class ListFinanceTransactionsByFilter {
  Future<FinanceTransactionDataEntity> exec(FinanceFilterEntity filter, {bool log = false});
}
