import 'package:plugin_pjmei_components/plugin_pjmei_components.dart';

DeleteModule makeRemoteDeleteSchedule(String id) => RemoteDeleteModule(
  httpClient: makeHttpAdapter(),
  url: makeApiUrl('venver/schedule/$id'),
);