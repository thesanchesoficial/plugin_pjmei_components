import 'package:plugin_pjmei_components/main/factories/factories.dart';

import '../../domain/usecase/list_groups.dart';
import '../usecase/list_groups.dart';

ListGroups makeRemoteListGroups(Map<String, dynamic>? params) => RemoteListGroups(
  httpClient: makeHttpAdapter(),
  url: makeApiUrl('venver/group', params: params)
);