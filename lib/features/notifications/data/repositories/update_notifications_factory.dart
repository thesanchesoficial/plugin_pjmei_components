import 'package:plugin_pjmei_components/main/factories/factories.dart';

import '../../domain/usecase/update_notifications.dart';
import '../usecase/update_notifications.dart';

UpdateNotification makeRemoteUpdateNotification(String id) => RemoteUpdateNotification(
  httpClient: makeHttpAdapter(),
  url: makeApiUrl('venver/notification/$id')
);