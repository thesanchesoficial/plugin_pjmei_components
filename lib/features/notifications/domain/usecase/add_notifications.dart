import '../entity/notification_entity.dart';

abstract class AddNotifications {
  Future<NotificationEntity> exec(NotificationEntity params, {bool log = false});
}