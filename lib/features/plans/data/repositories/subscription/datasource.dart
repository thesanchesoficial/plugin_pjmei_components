part of '../../../../../src/apis.dart';

class _SubscriptionPlanApi {

  Future<SubscriptionEntity> create({required Map<String, dynamic> data}) {
    return makeRemoteHirePlan().exec(data);
  }

  Future<SubscriptionEntity> find({required int id}) {
    return makeRemoteFindSubscription(id).exec();
  }

  Future<SubscriptionEntity> myPlan({required String id}) {
    return makeRemoteGetMyPlan(id).exec();
  }

  Future<List<SubscriptionEntity>> mySubscriptions({required String id}) {
    return makeRemoteGetMySubscriptions(id).exec();
  }

  Future<List<TransactionEntity>> transactionsBySubscription({required int id}) {
    return makeRemoteListTransactionsBySubscriptions(id).exec();
  }

  Future<SubscriptionEntity> update({required String id, required Map<String, dynamic> data}) {
    return makeRemoteUpdatePlanBySubscription().exec(data);
  }

}