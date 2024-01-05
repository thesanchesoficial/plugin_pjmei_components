import 'package:plugin_pjmei_components/main/factories/factories.dart';

import '../../domain/usecase/add_notifications.dart';
import '../usecase/add_notification.dart';

AddNotifications makeRemoteAddNotification() => RemoteAddNotification(
  httpClient: makeHttpAdapter(),
  url: makeApiUrl('venver/notification')
);