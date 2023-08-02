import 'package:plugin_pjmei_components/data/usecases/notifications/add_notification.dart';
import 'package:plugin_pjmei_components/domain/usecases/notifications/add_notifications.dart';
import 'package:plugin_pjmei_components/main/factories/factories.dart';

AddNotifications makeRemoteAddNotification() => RemoteAddNotification(
  httpClient: makeHttpAdapter(),
  url: makeApiUrl('venver/notification')
);