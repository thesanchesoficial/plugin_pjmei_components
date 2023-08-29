import 'package:plugin_pjmei_components/plugin_pjmei_components.dart';

DeleteVoucher makeRemoteDeleteVoucher(String id) => RemoteDeleteVoucher(
  httpClient: makeHttpAdapter(),
  url: makeApiUrl('venver/cupom/$id'),
);
