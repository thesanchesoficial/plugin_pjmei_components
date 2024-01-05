import 'package:plugin_pjmei_components/main/factories/factories.dart';

import '../../../domain/usecase/historic/create_order_historic.dart';
import '../../usecase/historic/remote_create_order_historic.dart';

CreateOrderHistoric makeRemoteCreateHistoricOrder() => RemoteCreateOrderHistoric(
  httpClient: makeHttpAdapter(),
  url: makeApiUrl('venver/order-historic'),
);
