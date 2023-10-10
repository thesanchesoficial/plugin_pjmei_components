import 'package:plugin_pjmei_components/plugin_pjmei_components.dart';

ListOrders makeRemoteListOrdersByUser() => RemoteListOrders(
  httpClient: makeHttpAdapter(),
  url: makeApiUrl('venver/order/user/${userSM.user?.id}'),
);
