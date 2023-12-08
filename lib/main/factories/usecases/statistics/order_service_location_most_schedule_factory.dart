import 'package:plugin_pjmei_components/plugin_pjmei_components.dart';

GetStatisticsMostItem makeRemoteGetStatisticsPeriodUser({Map<String, dynamic>? params}) => RemoteGetStatisticsMostItem(
  httpClient: makeHttpAdapter(),
  url: makeApiUrl('venver/statistics/order/service-location/most-schedule', params: params),
);