import 'package:plugin_pjmei_components/domain/domain.dart';

abstract class PostFinanceBank {
  Future<FinanceBankAccountEntity> exec(FinanceBankAccountEntity body);
}
