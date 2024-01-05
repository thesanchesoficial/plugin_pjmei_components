import 'package:plugin_pjmei_components/main/factories/factories.dart';

import '../../../domain/usecase/get_my_subscriptions.dart';
import '../../usecase/remote_get_my_subscriptions.dart';

GetMySubscriptions makeRemoteGetMySubscriptions(String id) => RemoteGetMySubscriptions(
  httpClient: makeHttpAdapter(),
  url: makeApiUrl('venver/signature/$id/subscriber'),
);
