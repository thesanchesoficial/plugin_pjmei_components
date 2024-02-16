import 'package:plugin_pjmei_components/main/factories/factories.dart';

import '../../domain/usecase/delete_notifications.dart';
import '../usecase/delete_notifications.dart';

DeleteNotification makeRemoteDeleteNotification(String id) => RemoteDeleteNotification(
  httpClient: makeHttpAdapter(),
  url: makeApiUrl('venver/notifications/$id')
);