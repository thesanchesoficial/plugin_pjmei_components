import 'package:plugin_pjmei_components/main/factories/factories.dart';

import '../../domain/usecase/send_notification.dart';
import '../usecase/send_notification.dart';

SendNotification makeRemoteSendNotification({required String id}) => RemoteSendNotification(
  httpClient: makeHttpAdapter(),
  url: makeApiUrl('venver/notifications/$id/send')
);