import 'package:plugin_pjmei_components/plugin_pjmei_components.dart';

ListCompanies makeRemoteGetListCompanies({Map<String, dynamic>? params}) => RemoteListCompanies(
  httpClient: makeHttpAdapter(),
  url: makeApiUrl('venver/company/user/${userSM.user?.id}', params: params),
);
