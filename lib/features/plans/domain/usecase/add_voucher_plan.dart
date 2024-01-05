import '../entity/voucher_plan_entity.dart';

abstract class AddVoucherPlan {
  Future<VoucherPlanEntity> exec(VoucherPlanEntity params, {bool log = false});
}