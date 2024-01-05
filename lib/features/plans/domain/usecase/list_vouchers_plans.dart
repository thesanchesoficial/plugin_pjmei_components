import '../entity/voucher_plan_entity.dart';

abstract class ListVouchersPlans {
  Future<List<VoucherPlanEntity>> exec({bool log = false});
}