import 'package:plugin_pjmei_components/data/usecases/user/remote_update_user.dart';
import 'package:plugin_pjmei_components/domain/usecases/user/update_user.dart';
import 'package:plugin_pjmei_components/main/factories/factories.dart';

UpdateUser makeRemoteUpdateUser(String id) => RemoteUpdateUser(
  httpClient: makeHttpAdapter(),
  url: makeApiUrl('venver/usuario/$id')
);