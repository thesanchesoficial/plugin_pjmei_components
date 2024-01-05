import 'package:plugin_pjmei_components/main/factories/factories.dart';

import '../../../../utils/variable.dart';
import '../../domain/usecase/list_orders.dart';
import '../usecase/remote_list_orders.dart';

ListOrders makeRemoteListOrdersByUser() => RemoteListOrders(
  httpClient: makeHttpAdapter(),
  url: makeApiUrl('venver/order/user/${userSM.user?.id}'),
);
