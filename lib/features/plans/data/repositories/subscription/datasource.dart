part of '../../../../../src/apis.dart';

class _SubscriptionPlanApi {

  Future<SubscriptionEntity> create({required Map<String, dynamic> data}) {
    return makeRemoteHirePlan().exec(data);
  }

  Future<SubscriptionEntity> find({required String id}) {
    return makeRemoteFindSubscription(id: id).exec();
  }

  Future<SubscriptionEntity> myPlan({required String type, required String id}) {
    return makeRemoteGetMyPlan(id: id, type: type).exec();
  }

  Future<List<SubscriptionEntity>> mySubscriptions({required String type, required String id}) {
    return makeRemoteGetMySubscriptions(id: id, type: type).exec();
  }

  Future<List<TransactionEntity>> transactionsBySubscription({required String id}) {
    return makeRemoteListTransactionsBySubscriptions(id: id).exec();
  }

  Future<SubscriptionEntity> update({required String id, required Map<String, dynamic> data}) {
    return makeRemoteUpdatePlanBySubscription().exec(data);
  }

  Future<bool> delete({required String id}) {
    return makeRemoteDeleteSubscription(id).exec();
  }

}