import 'package:plugin_pjmei_components/plugin_pjmei_components.dart';

ListBillByEstablishment makeRemoteListBillByEstablishment(Map<String, dynamic> params) => RemoteListBillByEstablishment(
  httpClient: makeHttpAdapter(),
  url: makeApiUrl('venver/cobrancas', params: params),
);