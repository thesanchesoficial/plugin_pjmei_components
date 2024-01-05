import '../../entity/finance_bank_account_entity.dart';

abstract class ListFinanceBank {
  Future<List<FinanceBankAccountEntity>> exec({bool log = false});
}
