import 'package:plugin_pjmei_components/plugin_pjmei_components.dart';

UpdateSchedule makeRemoteUpdateSchedule(String id) => RemoteUpdateSchedule(
  httpClient: makeHttpAdapter(),
  url: makeApiUrl('venver/schedule/$id'),
);
