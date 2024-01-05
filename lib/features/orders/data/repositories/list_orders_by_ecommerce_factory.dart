import 'package:plugin_pjmei_components/main/factories/factories.dart';

import '../../domain/usecase/list_orders.dart';
import '../usecase/remote_list_orders.dart';

ListOrders makeRemoteListOrdersByEcommerce(String id) => RemoteListOrders(
  httpClient: makeHttpAdapter(),
  url: makeApiUrl('venver/order/ecommerce/$id'),
);
