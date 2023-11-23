import 'package:plugin_pjmei_components/plugin_pjmei_components.dart';

DeleteModule makeRemoteDeleteScheduleByEcommerce(String id) => RemoteDeleteModule(
  httpClient: makeHttpAdapter(),
  url: makeApiUrl('venver/schedule/ecommerce/$id'),
);