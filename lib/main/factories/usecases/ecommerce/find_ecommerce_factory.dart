import 'package:plugin_pjmei_components/plugin_pjmei_components.dart';

FindEcommerce makeRemoteFindEcommerce(String id) => RemoteFindEcommerce(
  httpClient: makeHttpAdapter(),
  url: makeApiUrl('venver/ecommerce/$id'),
);
