import 'package:plugin_pjmei_components/plugin_pjmei_components.dart';

AddSchedule makeRemoteAddSchedule() => RemoteAddSchedule(
  httpClient: makeHttpAdapter(),
  url: makeApiUrl('venver/schedule'),
);
