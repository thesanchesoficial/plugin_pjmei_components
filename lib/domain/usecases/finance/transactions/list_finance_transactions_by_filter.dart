import 'package:plugin_pjmei_components/domain/domain.dart';

abstract class ListFinanceTransactionsByFilter {
  Future<FinanceTransactionDataEntity> exec(FinanceFilterEntity filter);
}
