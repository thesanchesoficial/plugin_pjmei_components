import 'package:plugin_pjmei_components/plugin_pjmei_components.dart';

DeleteModule makeRemoteDeleteScheduleByProduct(String id) => RemoteDeleteModule(
  httpClient: makeHttpAdapter(),
  url: makeApiUrl('venver/schedule/product/$id'),
);