import 'package:plugin_pjmei_components/plugin_pjmei_components.dart';

ListSalesOrders makeRemoteGetListSalesScheduling(
        {Map<String, dynamic>? params}) =>
    RemoteListSalesOrders(
      httpClient: makeHttpAdapter(),
      url: makeApiUrl('venver/agendamento/company/${companySM.company?.id}',
          params: params),
    );
