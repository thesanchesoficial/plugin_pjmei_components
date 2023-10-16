import 'package:plugin_pjmei_components/plugin_pjmei_components.dart';

ListOrders makeRemoteListOrdersByEcommerce(String id) => RemoteListOrders(
  httpClient: makeHttpAdapter(),
  url: makeApiUrl('venver/order/ecommerce/$id'),
);
