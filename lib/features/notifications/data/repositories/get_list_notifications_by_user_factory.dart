import 'package:plugin_pjmei_components/main/factories/factories.dart';

import '../../domain/usecase/list_all_notifications.dart';
import '../usecase/list_all_notifications.dart';

ListNotifications makeRemoteListNotificationsByUser({required String id, Map<String, dynamic>? params}) => RemoteListNotifications(
  httpClient: makeHttpAdapter(),
  url: makeApiUrl('venver/notifications/$id', params: params)
);