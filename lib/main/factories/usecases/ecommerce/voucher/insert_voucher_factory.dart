import 'package:plugin_pjmei_components/plugin_pjmei_components.dart';

AddVoucher makeRemoteAddVoucher() => RemoteAddVoucher(
  httpClient: makeHttpAdapter(),
  url: makeApiUrl('venver/cupom'),
);
