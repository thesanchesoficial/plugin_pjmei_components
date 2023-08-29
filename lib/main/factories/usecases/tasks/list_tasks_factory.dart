import 'package:plugin_pjmei_components/plugin_pjmei_components.dart';

ListTasks makeRemoteListTasks(String id) => RemoteListTasks(
  httpClient: makeHttpAdapter(),
  url: makeApiUrl('venver/task/$id/company'),
);
