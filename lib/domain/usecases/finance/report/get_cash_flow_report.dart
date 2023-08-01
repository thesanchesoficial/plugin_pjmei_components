import 'package:plugin_pjmei_components/domain/domain.dart';

abstract class GetCashFlowReport {
  Future<List<FinanceResultReportEntity>> exec(FinanceReportEntity params);
}
