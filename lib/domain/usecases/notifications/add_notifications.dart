import 'package:plugin_pjmei_components/plugin_pjmei_components.dart';

abstract class AddNotifications {
  Future<NotificationEntity> exec(NotificationEntity params, {bool log = false});
}