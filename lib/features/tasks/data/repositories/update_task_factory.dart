import 'package:plugin_pjmei_components/main/factories/factories.dart';

import '../../domain/usecase/update_task.dart';
import '../usecase/remote_update_task.dart';

UpdateTask makeRemoteUpdateTask(String id) => RemoteUpdateTask(
  httpClient: makeHttpAdapter(),
  url: makeApiUrl('venver/task/$id'),
);
