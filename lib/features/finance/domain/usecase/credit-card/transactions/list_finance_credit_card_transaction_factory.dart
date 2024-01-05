import '../../../entity/finance_transaction_data_entity.dart';

abstract class ListFinanceCreditCardTransactionFactory {
  Future<FinanceTransactionDataEntity> exec({bool log = false});
}
