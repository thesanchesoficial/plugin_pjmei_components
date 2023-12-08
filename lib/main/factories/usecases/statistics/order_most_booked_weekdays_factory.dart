import 'package:plugin_pjmei_components/plugin_pjmei_components.dart';

GetStatisticsMostBookedWeekdays makeRemoteGetStatisticsPeriodUser({Map<String, dynamic>? params}) => RemoteGetStatisticsMostBookedWeekdays(
  httpClient: makeHttpAdapter(),
  url: makeApiUrl('venver/statistics/order/most-booked-weekdays', params: params),
);