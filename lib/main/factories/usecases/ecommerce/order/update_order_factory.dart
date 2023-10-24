import 'package:plugin_pjmei_components/plugin_pjmei_components.dart';

CreateOrder makeRemoteUpdateOrder(String id) => RemoteUpdateOrder(
  httpClient: makeHttpAdapter(),
  url: makeApiUrl('venver/order/$id'),
);
