part of '../../usecases.dart';

class _VoucherPlanApi {

  Future<CouponDiscount> validation({required String id}) {
    return makeRemoteGetCoupon(id).exec();
  }

  Future<List<VoucherEntity>> listByPlan({required Map<String, dynamic> query}) {
    return makeRemoteListVouchersPlans(params: query).exec();
  }

  Future<VoucherEntity> insert({required VoucherEntity data}) {
    return makeRemoteAddVoucherPlan().exec(data);
  }

  Future<VoucherEntity> update({required String id, required VoucherEntity data}) {
    return makeRemoteUpdateVoucherPlan(id).exec(data);
  }

  Future<bool> delete({required String id}) {
    return makeRemoteDeleteVoucherPlan(id).exec();
  }
}