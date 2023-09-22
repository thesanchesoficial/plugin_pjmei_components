import 'package:plugin_pjmei_components/plugin_pjmei_components.dart';

FindProduct makeRemoteFindProduct(String id) => RemoteFindProduct(
  httpClient: makeHttpAdapter(),
  url: makeApiUrl('venver/product/$id'),
);
