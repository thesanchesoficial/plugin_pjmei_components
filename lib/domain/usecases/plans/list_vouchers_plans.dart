import 'package:plugin_pjmei_components/plugin_pjmei_components.dart';

abstract class ListVouchersPlans {
  Future<List<VoucherPlanEntity>> exec({bool log = false});
}