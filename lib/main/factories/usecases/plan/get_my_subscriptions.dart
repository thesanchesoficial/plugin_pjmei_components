import 'package:plugin_pjmei_components/data/usecases/plan/remote_get_my_subscriptions.dart';
import 'package:plugin_pjmei_components/domain/usecases/plans/get_my_subscriptions.dart';

import '../../factories.dart';

GetMySubscriptions makeRemoteGetMySubscriptions(String id) =>
    RemoteGetMySubscriptions(
      httpClient: makeHttpAdapter(),
      url: makeApiUrl('venver/signature/$id/subscriber'),
    );
