import 'package:plugin_pjmei_components/plugin_pjmei_components.dart';

ListCompanies makeRemoteGetListCompanies({required String id, Map<String, dynamic>? params}) => RemoteListCompanies(
  httpClient: makeHttpAdapter(),
  url: makeApiUrl('venver/company/user/$id', params: params),
);
