import 'package:plugin_pjmei_components/data/usecases/company/list_companies.dart';
import 'package:plugin_pjmei_components/domain/usecases/company/list_companies.dart';
import 'package:plugin_pjmei_components/plugin_pjmei_components.dart';

import '../../factories.dart';

ListCompanies makeRemoteGetListCompanies({Map<String, dynamic>? params}) => RemoteListCompanies(
  httpClient: makeHttpAdapter(),
  url: makeApiUrl('venver/empresa/${userSM.user?.id}', params: params),
);
