import 'package:plugin_pjmei_components/plugin_pjmei_components.dart';

ListBillByEstablishment makeRemoteListsadasdEstablishment(String id, {Map<String, dynamic>? params}) => RemoteListBillByEstablishment(
  httpClient: makeHttpAdapter(),
  url: makeApiUrl('venver/avaliacao/$id', params: params),
);