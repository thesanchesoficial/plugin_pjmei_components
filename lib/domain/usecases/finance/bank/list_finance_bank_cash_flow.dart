import 'package:plugin_pjmei_components/domain/domain.dart';

abstract class ListFinanceBankCashFlow {
  Future<List<FinanceCashFlowEntity>> exec({bool log = false});
}
