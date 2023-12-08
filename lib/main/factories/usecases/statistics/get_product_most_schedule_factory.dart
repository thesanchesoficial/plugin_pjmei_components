import 'package:plugin_pjmei_components/plugin_pjmei_components.dart';

GetStatisticsMostItem makeRemoteGetStatisticsMostProductsMostSchedule({Map<String, dynamic>? params}) => RemoteGetStatisticsMostItem(
  httpClient: makeHttpAdapter(),
  url: makeApiUrl('venver/statistics/products/most-schedule', params: params),
);