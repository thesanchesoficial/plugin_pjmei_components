import 'package:plugin_pjmei_components/data/usecases/user/remote_delete_user.dart';
import 'package:plugin_pjmei_components/domain/usecases/user/delete_user.dart';
import 'package:plugin_pjmei_components/main/factories/factories.dart';

DeleteUser makeRemoteDeleteUser(String id) => RemoteDeleteUser(
  httpClient: makeHttpAdapter(),
  url: makeApiUrl('venver/user/$id')
);