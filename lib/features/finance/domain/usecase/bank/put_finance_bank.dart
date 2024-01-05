import '../../entity/finance_bank_account_entity.dart';

abstract class PutFinanceBank {
  Future<FinanceBankAccountEntity> exec(FinanceBankAccountEntity body, {bool log = false});
}
