import 'package:plugin_pjmei_components/plugin_pjmei_components.dart';

ListScheduleByProduct makeRemoteListScheduleByProduct(String id) => RemoteListScheduleByProduct(
  httpClient: makeHttpAdapter(),
  url: makeApiUrl('venver/schedule/product/$id'),
);
