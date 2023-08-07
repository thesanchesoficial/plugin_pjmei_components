import 'package:plugin_pjmei_components/domain/domain.dart';

abstract class GetTransactionReport {
  Future<Map<String, dynamic>> exec(FinanceReportEntity params, {bool log = false});
}
