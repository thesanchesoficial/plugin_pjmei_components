import 'package:plugin_pjmei_components/data/usecases/groups/list_groups.dart';
import 'package:plugin_pjmei_components/domain/usecases/groups/list_groups.dart';
import 'package:plugin_pjmei_components/main/factories/factories.dart';

ListGroups makeRemoteListGroups(Map<String, dynamic>? params) => RemoteListGroups(
  httpClient: makeHttpAdapter(),
  url: makeApiUrl('venver/group', params: params)
);