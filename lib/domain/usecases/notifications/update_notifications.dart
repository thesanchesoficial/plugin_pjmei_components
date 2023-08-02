import 'package:plugin_pjmei_components/plugin_pjmei_components.dart';

abstract class UpdateNotification {
  Future<NotificationEntity> exec(NotificationEntity module);
}