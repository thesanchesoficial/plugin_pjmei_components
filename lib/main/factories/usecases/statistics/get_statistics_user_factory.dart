import 'package:plugin_pjmei_components/plugin_pjmei_components.dart';

GetStatisticsPeriod makeRemoteGetStatisticsPeriodUser({Map<String, dynamic>? params}) => RemoteGetStatisticsPeriod(
  httpClient: makeHttpAdapter(),
  url: makeApiUrl('venver/statistics/user', params: params),
);