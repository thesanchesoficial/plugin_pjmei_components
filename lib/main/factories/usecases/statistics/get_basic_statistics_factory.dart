import 'package:plugin_pjmei_components/plugin_pjmei_components.dart';

GetBasicStatistics makeRemoteGetBasicStatistics() => RemoteGetBasicStatistics(
  httpClient: makeHttpAdapter(),
  url: makeApiUrl('venver/statistics/basic'),
);