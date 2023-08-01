import 'package:plugin_pjmei_components/data/usecases/sales/remote_list_sales_orders.dart';
import 'package:plugin_pjmei_components/domain/usecases/sales/list_sales_orders.dart';
import 'package:plugin_pjmei_components/plugin_pjmei_components.dart';
import '../../factories.dart';

ListSalesOrders makeRemoteGetListSalesOrders({Map<String, dynamic>? params}) =>
    RemoteListSalesOrders(
      httpClient: makeHttpAdapter(),
      url: makeApiUrl('venver/pedido/company/${companySM.company?.id}',
          params: params),
    );
