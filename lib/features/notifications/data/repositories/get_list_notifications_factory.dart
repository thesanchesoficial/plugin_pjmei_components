import 'package:plugin_pjmei_components/main/factories/factories.dart';

import '../../domain/usecase/list_all_notifications.dart';
import '../usecase/list_all_notifications.dart';

ListNotifications makeRemoteListNotifications({Map<String, dynamic>? params}) => RemoteListNotifications(
  httpClient: makeHttpAdapter(),
  url: makeApiUrl('venver/notification', params: params)
);