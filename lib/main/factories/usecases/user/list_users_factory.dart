import 'package:plugin_pjmei_components/data/usecases/user/remote_list_users.dart';
import 'package:plugin_pjmei_components/domain/usecases/user/list_users.dart';
import 'package:plugin_pjmei_components/main/factories/factories.dart';

ListUsers makeRemoteListUsers() => RemoteListUsers(
  httpClient: makeHttpAdapter(),
  url: makeApiUrl('venver/usuario')
);