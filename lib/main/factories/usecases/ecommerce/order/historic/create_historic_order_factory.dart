import 'package:plugin_pjmei_components/plugin_pjmei_components.dart';

CreateOrderHistoric makeRemoteCreateHistoricOrder() => RemoteCreateOrderHistoric(
  httpClient: makeHttpAdapter(),
  url: makeApiUrl('venver/order-historic'),
);
