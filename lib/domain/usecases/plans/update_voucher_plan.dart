import 'package:plugin_pjmei_components/plugin_pjmei_components.dart';

abstract class UpdateVoucherPlan {
  Future<VoucherPlanEntity> exec(VoucherPlanEntity module, {bool log = false});
}