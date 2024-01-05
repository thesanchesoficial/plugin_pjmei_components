import '../../entity/finance_bank_account_entity.dart';

abstract class PostFinanceBank {
  Future<FinanceBankAccountEntity> exec(FinanceBankAccountEntity body, {bool log = false});
}
