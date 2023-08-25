import 'package:plugin_pjmei_components/plugin_pjmei_components.dart';

ListVouchersByEstablishment makeRemoteListVouchersByEstablishment(Map<String, dynamic> params) => RemoteListVouchersByEstablishment(
  httpClient: makeHttpAdapter(),
  url: makeApiUrl('venver/cupom/estabelecimento', params: params),
);