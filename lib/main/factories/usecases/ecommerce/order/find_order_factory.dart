import 'package:plugin_pjmei_components/plugin_pjmei_components.dart';

FindOrder makeRemoteFindOrder(String id) => RemoteFindOrder(
  httpClient: makeHttpAdapter(),
  url: makeApiUrl('venver/order/$id'),
);
