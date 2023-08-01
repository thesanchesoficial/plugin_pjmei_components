import 'package:plugin_pjmei_components/data/usecases/tasks/remote_list_tasks.dart';
import 'package:plugin_pjmei_components/domain/usecases/tasks/list_tasks.dart';
import 'package:plugin_pjmei_components/main/factories/http/api_url_factory.dart';
import 'package:plugin_pjmei_components/main/factories/http/http_client_factory.dart';
import 'package:plugin_pjmei_components/plugin_pjmei_components.dart';

ListTasks makeRemoteListTasks() => RemoteListTasks(
    httpClient: makeHttpAdapter(),
    url: makeApiUrl('venver/task/${companySM.company?.id}/company'));
