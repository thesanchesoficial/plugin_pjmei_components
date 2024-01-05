import '../../entity/finance_transaction_report_entity.dart';

abstract class GetCashFlowReport {
  Future<List<FinanceResultReportEntity>> exec(FinanceReportEntity params, {bool log = false});
}
