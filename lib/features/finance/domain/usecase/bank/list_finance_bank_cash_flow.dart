import '../../entity/finance_cash_flow_entity.dart';

abstract class ListFinanceBankCashFlow {
  Future<List<FinanceCashFlowEntity>> exec({bool log = false});
}
