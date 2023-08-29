part of '../usecases.dart';

class _NotificationsApi {

  // Future<CategoryFinancialEducationEntity> find({required String id, Map<String, dynamic>? query}) {
  //   return makeRemoteGetCategoryFinancialEducation(id: id, params: query).exec();
  // }

  Future<NotificationEntity> add({required NotificationEntity data}) {
    return makeRemoteAddNotification().exec(data);
  }

  Future<NotificationEntity> update({required String id, required NotificationEntity data}) {
    return makeRemoteUpdateNotification(id).exec(data);
  }

  Future<bool> delete({required String id}) {
    return makeRemoteDeleteNotification(id).exec();
  }

  Future<List<NotificationEntity>> list({Map<String, dynamic>? query}) {
    return makeRemoteListNotifications(params: query).exec();
  }

}
