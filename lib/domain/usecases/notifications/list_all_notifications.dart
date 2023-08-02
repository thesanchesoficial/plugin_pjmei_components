import 'package:plugin_pjmei_components/plugin_pjmei_components.dart';

abstract class ListNotifications {
  Future<List<NotificationEntity>> exec();
}