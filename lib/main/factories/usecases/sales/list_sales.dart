import 'package:plugin_pjmei_components/plugin_pjmei_components.dart';

ListSalesOrders makeRemoteGetListSalesOrders({Map<String, dynamic>? params}) =>
    RemoteListSalesOrders(
      httpClient: makeHttpAdapter(),
      url: makeApiUrl('venver/pedido/company/${companySM.company?.id}',
          params: params),
    );
