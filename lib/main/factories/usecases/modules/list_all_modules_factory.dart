import 'package:plugin_pjmei_components/data/usecases/modules/remote_list_all_modules.dart';
import 'package:plugin_pjmei_components/domain/usecases/modules/list_all_modules.dart';
import 'package:plugin_pjmei_components/main/factories/factories.dart';

ListAllModules makeRemoteListAllModules(Map<String, dynamic> params) => RemoteListAllModules(
  httpClient: makeHttpAdapter(),
  url: makeApiUrl('pjmei/modules/all', params: params)
);