import 'package:plugin_pjmei_components/data/usecases/notifications/update_notifications.dart';
import 'package:plugin_pjmei_components/domain/usecases/notifications/update_notifications.dart';
import 'package:plugin_pjmei_components/main/factories/factories.dart';

UpdateNotification makeRemoteUpdateNotification(String id) => RemoteUpdateNotification(
  httpClient: makeHttpAdapter(),
  url: makeApiUrl('venver/notification/$id')
);