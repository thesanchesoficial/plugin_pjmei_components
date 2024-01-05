import '../entity/notification_entity.dart';

abstract class UpdateNotification {
  Future<NotificationEntity> exec(NotificationEntity module, {bool log = false});
}