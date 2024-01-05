part of '../../../../src/apis.dart';

class _PlanApi {
  final vouchers = _VoucherPlanApi();
  final subscription = _SubscriptionPlanApi();
  final items = _ItemsPlanApi();

  Future<PlanEntity> add({required PlanEntity data}) {
    return makeRemoteAddPlan().exec(data);
  }

  Future<PlanEntity> update({required String id, required PlanEntity data}) {
    return makeRemoteUpdatePlan(id).exec(data);
  }

  Future<List<PlanEntity>> list({Map<String, dynamic>? query}) {
    return makeRemoteListPlans(params: query).exec();
  }

  Future<List<PlanEntity>> listClient({Map<String, dynamic>? query}) {
    return makeRemoteGetListPlans(params: query).exec();
  }

}