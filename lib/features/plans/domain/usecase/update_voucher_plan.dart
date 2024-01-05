import '../entity/voucher_plan_entity.dart';

abstract class UpdateVoucherPlan {
  Future<VoucherPlanEntity> exec(VoucherPlanEntity module, {bool log = false});
}