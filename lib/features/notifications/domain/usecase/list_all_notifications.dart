import '../entity/notification_entity.dart';

abstract class ListNotifications {
  Future<List<NotificationEntity>> exec({bool log = false});
}