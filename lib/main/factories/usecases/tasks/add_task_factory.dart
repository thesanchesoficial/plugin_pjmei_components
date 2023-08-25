import 'package:plugin_pjmei_components/data/usecases/tasks/remote_add_task.dart';
import 'package:plugin_pjmei_components/domain/usecases/tasks/add_task.dart';
import 'package:plugin_pjmei_components/main/factories/http/api_url_factory.dart';
import 'package:plugin_pjmei_components/main/factories/http/http_client_factory.dart';

AddTask makeRemoteAddTask() => RemoteAddTask(
  httpClient: makeHttpAdapter(),
  url: makeApiUrl('venver/task'),
);
