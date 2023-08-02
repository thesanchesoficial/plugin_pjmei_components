import 'package:plugin_pjmei_components/data/usecases/groups/add_group.dart';
import 'package:plugin_pjmei_components/domain/usecases/groups/add_group.dart';
import 'package:plugin_pjmei_components/main/factories/factories.dart';

AddGroup makeRemoteAddGroup() => RemoteAddGroup(
  httpClient: makeHttpAdapter(),
  url: makeApiUrl('venver/group/backoffice')
);