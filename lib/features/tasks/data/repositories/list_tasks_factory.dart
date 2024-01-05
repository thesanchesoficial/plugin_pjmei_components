import 'package:plugin_pjmei_components/main/factories/factories.dart';

import '../../domain/usecase/list_tasks.dart';
import '../usecase/remote_list_tasks.dart';

ListTasks makeRemoteListTasks(String id) => RemoteListTasks(
  httpClient: makeHttpAdapter(),
  url: makeApiUrl('venver/task/$id/company'),
);
