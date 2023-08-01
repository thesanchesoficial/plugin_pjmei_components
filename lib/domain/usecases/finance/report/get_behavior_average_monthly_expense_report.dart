import 'package:plugin_pjmei_components/domain/domain.dart';

abstract class GetBehaviorAverageMonthlyReport {
  Future<Map<String, dynamic>> exec(FinanceReportEntity params);
}
