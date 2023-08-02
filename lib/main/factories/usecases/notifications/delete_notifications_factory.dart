import 'package:plugin_pjmei_components/data/usecases/notifications/delete_notifications.dart';
import 'package:plugin_pjmei_components/domain/usecases/notifications/delete_notifications.dart';
import 'package:plugin_pjmei_components/main/factories/factories.dart';

DeleteNotification makeRemoteDeleteNotification(String id) => RemoteDeleteNotification(
  httpClient: makeHttpAdapter(),
  url: makeApiUrl('venver/notification/$id')
);