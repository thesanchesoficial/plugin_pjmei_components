import 'package:plugin_pjmei_components/data/usecases/notifications/list_all_notifications.dart';
import 'package:plugin_pjmei_components/domain/usecases/notifications/list_all_notifications.dart';
import 'package:plugin_pjmei_components/main/factories/factories.dart';

ListNotifications makeRemoteListNotifications({Map<String, dynamic>? params}) => RemoteListNotifications(
  httpClient: makeHttpAdapter(),
  url: makeApiUrl('venver/notification', params: params)
);