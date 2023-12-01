import 'package:plugin_pjmei_components/plugin_pjmei_components.dart';

GetStatisticsPeriod makeRemoteGetStatisticsPeriodSchedule({Map<String, dynamic>? params}) => RemoteGetStatisticsPeriod(
  httpClient: makeHttpAdapter(),
  url: makeApiUrl('venver/statistics/schedule', params: params),
);