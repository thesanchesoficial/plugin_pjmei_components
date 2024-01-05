import 'package:plugin_pjmei_components/main/factories/factories.dart';

import '../../domain/usecase/add_task.dart';
import '../usecase/remote_add_task.dart';

AddTask makeRemoteAddTask() => RemoteAddTask(
  httpClient: makeHttpAdapter(),
  url: makeApiUrl('venver/task'),
);
