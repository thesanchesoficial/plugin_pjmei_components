import 'package:plugin_pjmei_components/main/factories/factories.dart';

import '../../domain/usecase/create_order.dart';
import '../usecase/remote_create_order.dart';

CreateOrder makeRemoteCreateOrder() => RemoteCreateOrder(
  httpClient: makeHttpAdapter(),
  url: makeApiUrl('venver/order'),
);
