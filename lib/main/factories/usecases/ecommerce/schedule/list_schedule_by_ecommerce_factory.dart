import 'package:plugin_pjmei_components/plugin_pjmei_components.dart';

ListScheduleByEcommerce makeRemoteListScheduleByEcommerce(String id) => RemoteListScheduleByEcommerce(
  httpClient: makeHttpAdapter(),
  url: makeApiUrl('venver/schedule/ecommerce/$id'),
);
