import 'package:plugin_pjmei_components/main/factories/factories.dart';

import '../../domain/usecase/create_order.dart';
import '../usecase/remote_update_order.dart';

CreateOrder makeRemoteUpdateOrder(String id) => RemoteUpdateOrder(
  httpClient: makeHttpAdapter(),
  url: makeApiUrl('venver/order/$id'),
);
