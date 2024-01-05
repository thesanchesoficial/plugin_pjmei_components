import 'package:plugin_pjmei_components/main/factories/factories.dart';

import '../../domain/usecase/list_modules.dart';
import '../usecase/remote_list_modules.dart';

ListModules makeRemoteGetListModules({Map<String, dynamic>? params}) => RemoteListModules(
  httpClient: makeHttpAdapter(),
  url: makeApiUrl('pjmei/modules/filter', params: params),
);
