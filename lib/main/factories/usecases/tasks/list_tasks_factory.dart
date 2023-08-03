import 'package:plugin_pjmei_components/plugin_pjmei_components.dart';

ListTasks makeRemoteListTasks() => RemoteListTasks(
    httpClient: makeHttpAdapter(),
    url: makeApiUrl('venver/task/${companySM.company?.id}/company'));
