import 'package:plugin_pjmei_components/data/usecases/modules/remote_list_modules.dart';
import 'package:plugin_pjmei_components/domain/usecases/modules/list_modules.dart';

import '../../factories.dart';

ListModules makeRemoteGetListModules({Map<String, dynamic>? params}) => RemoteListModules(
  httpClient: makeHttpAdapter(),
  url: makeApiUrl('pjmei/modules/filter', params: params),
);
