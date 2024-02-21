// part of '../../../../../src/apis.dart';

// class _VoucherPlanApi {

//   // Future<CouponDiscount> validation({required String id}) {
//   //   return makeRemoteGetCoupon(id).exec();
//   // }

//   Future<List<VoucherPlanEntity>> listByPlan({required Map<String, dynamic> query}) {
//     return makeRemoteListVouchersPlans(params: query).exec();
//   }

//   Future<VoucherPlanEntity> insert({required VoucherPlanEntity data}) {
//     return makeRemoteAddVoucherPlan().exec(data);
//   }

//   Future<VoucherPlanEntity> update({required String id, required VoucherPlanEntity data}) {
//     return makeRemoteUpdateVoucherPlan(id).exec(data);
//   }

//   Future<bool> delete({required String id}) {
//     return makeRemoteDeleteVoucherPlan(id).exec();
//   }
// }