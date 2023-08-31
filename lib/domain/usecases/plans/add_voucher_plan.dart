import 'package:plugin_pjmei_components/plugin_pjmei_components.dart';

abstract class AddVoucherPlan {
  Future<VoucherPlanEntity> exec(VoucherPlanEntity params, {bool log = false});
}