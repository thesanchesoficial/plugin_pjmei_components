import 'package:plugin_pjmei_components/domain/domain.dart';

abstract class ListFinanceBank {
  Future<List<FinanceBankAccountEntity>> exec();
}
