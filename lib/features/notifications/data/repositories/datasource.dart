part of '../../../../src/apis.dart';

class _NotificationsApi {

  Future<NotificationEntity> add({required NotificationEntity data}) {
    return makeRemoteAddNotification().exec(data);
  }

  Future<bool> send({required String id, required String recipients, List<String>? ids}) {
    return makeRemoteSendNotification(id: id).exec(recipients: recipients, ids: ids);
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

  Future<List<NotificationEntity>> listByUser({required String id, Map<String, dynamic>? query}) {
    return makeRemoteListNotificationsByUser(id: id, params: query).exec();
  }

}
