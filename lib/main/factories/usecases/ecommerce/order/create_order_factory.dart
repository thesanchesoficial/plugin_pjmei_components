import 'package:plugin_pjmei_components/plugin_pjmei_components.dart';

CreateOrder makeRemoteCreateOrder() => RemoteCreateOrder(
  httpClient: makeHttpAdapter(),
  url: makeApiUrl('venver/order'),
);
