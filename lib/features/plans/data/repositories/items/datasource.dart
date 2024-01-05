part of '../../../../../src/apis.dart';

class _ItemsPlanApi {

  Future<PlanItemEntity> add({required PlanItemEntity data}) {
    return makeRemoteAddItemPlan().exec(data);
  }

  Future<List<PlanItemEntity>> listByPlan({required String id, Map<String, dynamic>? query}) {
    return makeRemoteListItemsPlans(id ,params: query).exec();
  }

  Future<PlanItemEntity> update({required String id, required PlanItemEntity data}) {
    return makeRemoteUpdateItemPlan(id).exec(data);
  }

  Future<bool> delete({required String id}) {
    return makeRemoteDeleteItemPlan(id).exec();
  }
}