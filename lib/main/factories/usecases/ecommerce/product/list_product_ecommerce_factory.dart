import 'package:plugin_pjmei_components/plugin_pjmei_components.dart';

ListProductByEcommerce makeRemoteListProductByEcommerce(String id) => RemoteListProductByEcommerce(
  httpClient: makeHttpAdapter(),
  url: makeApiUrl('venver/product/ecommerce/$id'),
);
