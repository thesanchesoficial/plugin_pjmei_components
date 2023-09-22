import 'package:plugin_pjmei_components/plugin_pjmei_components.dart';

ListProductCategoryByEcommerce makeRemoteListProductCategoryByEcommerce(String id) => RemoteListProductCategoryByEcommerce(
  httpClient: makeHttpAdapter(),
  url: makeApiUrl('venver/product-category/ecommerce/$id'),
);
