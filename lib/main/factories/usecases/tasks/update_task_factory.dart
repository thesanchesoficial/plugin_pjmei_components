import 'package:plugin_pjmei_components/data/usecases/tasks/remote_update_task.dart';
import 'package:plugin_pjmei_components/domain/usecases/tasks/update_task.dart';
import 'package:plugin_pjmei_components/main/factories/http/api_url_factory.dart';
import 'package:plugin_pjmei_components/main/factories/http/http_client_factory.dart';

UpdateTask makeRemoteUpdateTask(String id) => RemoteUpdateTask(
    httpClient: makeHttpAdapter(), url: makeApiUrl('venver/task/$id'));
