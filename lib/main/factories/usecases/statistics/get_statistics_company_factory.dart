import 'package:plugin_pjmei_components/plugin_pjmei_components.dart';

GetStatisticsPeriod makeRemoteGetStatisticsPeriodCompany({Map<String, dynamic>? params}) => RemoteGetStatisticsPeriod(
  httpClient: makeHttpAdapter(),
  url: makeApiUrl('venver/statistics/company', params: params),
);