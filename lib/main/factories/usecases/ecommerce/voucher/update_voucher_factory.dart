import 'package:plugin_pjmei_components/plugin_pjmei_components.dart';

UpdateVoucher makeRemoteUpdateVoucher(String id) => RemoteUpdateVoucher(
  httpClient: makeHttpAdapter(),
  url: makeApiUrl('venver/cupom/$id'),
);
