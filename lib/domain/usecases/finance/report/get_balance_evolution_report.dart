import 'package:plugin_pjmei_components/domain/domain.dart';

abstract class GetBalanceEvolutionReport {
  Future<Map<String, dynamic>> exec(FinanceReportEntity params, {bool log = false});
}
