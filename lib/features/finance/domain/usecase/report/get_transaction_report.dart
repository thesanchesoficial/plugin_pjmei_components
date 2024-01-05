import '../../entity/finance_transaction_report_entity.dart';

abstract class GetTransactionReport {
  Future<Map<String, dynamic>> exec(FinanceReportEntity params, {bool log = false});
}
