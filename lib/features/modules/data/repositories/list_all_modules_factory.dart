import 'package:plugin_pjmei_components/main/factories/factories.dart';

import '../../domain/usecase/list_all_modules.dart';
import '../usecase/remote_list_all_modules.dart';

ListAllModules makeRemoteListAllModules(Map<String, dynamic> params) => RemoteListAllModules(
  httpClient: makeHttpAdapter(),
  url: makeApiUrl('pjmei/modules', params: params)
);