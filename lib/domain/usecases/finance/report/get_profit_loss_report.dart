import 'package:plugin_pjmei_components/domain/domain.dart';

abstract class GetProfitLossReport {
  Future<List<FinanceResultReportEntity>> exec(FinanceReportEntity params, {bool log = false});
}
