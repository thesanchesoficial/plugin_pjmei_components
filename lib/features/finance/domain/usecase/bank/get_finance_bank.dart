import '../../entity/finance_bank_account_entity.dart';

abstract class GetFinanceBank {
  Future<FinanceBankAccountEntity> exec({bool log = false});
}
