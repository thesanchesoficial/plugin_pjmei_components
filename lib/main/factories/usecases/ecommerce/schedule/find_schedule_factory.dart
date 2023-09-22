import 'package:plugin_pjmei_components/plugin_pjmei_components.dart';

FindSchedule makeRemoteFindSchedule(String id) => RemoteFindSchedule(
  httpClient: makeHttpAdapter(),
  url: makeApiUrl('venver/schedule/$id'),
);
