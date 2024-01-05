import 'package:plugin_pjmei_components/main/factories/factories.dart';

import '../../domain/usecase/list_companies.dart';
import '../usecase/remote_list_companies.dart';

ListCompanies makeRemoteGetListCompanies({required String id, Map<String, dynamic>? params}) => RemoteListCompanies(
  httpClient: makeHttpAdapter(),
  url: makeApiUrl('venver/company/user/$id', params: params),
);
