import 'package:plugin_pjmei_components/domain/domain.dart';

abstract class PutFinanceBank {
  Future<FinanceBankAccountEntity> exec(FinanceBankAccountEntity body, {bool log = false});
}
