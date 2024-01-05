import 'package:plugin_pjmei_components/main/factories/factories.dart';

import '../../domain/usecase/find_order.dart';
import '../usecase/remote_find_order.dart';

FindOrder makeRemoteFindOrder(String id) => RemoteFindOrder(
  httpClient: makeHttpAdapter(),
  url: makeApiUrl('venver/order/$id'),
);
