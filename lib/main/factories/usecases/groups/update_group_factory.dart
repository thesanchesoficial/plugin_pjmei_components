import 'package:plugin_pjmei_components/data/usecases/groups/update_group.dart';
import 'package:plugin_pjmei_components/domain/usecases/groups/update_group.dart';
import 'package:plugin_pjmei_components/main/factories/factories.dart';

UpdateGroup makeRemoteUpdateGroup(String id) => RemoteUpdateGroup(
  httpClient: makeHttpAdapter(),
  url: makeApiUrl('venver/group/$id')
);