import 'package:plugin_pjmei_components/plugin_pjmei_components.dart';

ListProductCategoryByEcommerce makeRemoteListProductCategoryWithProductsByEcommerce(String id) => RemoteListProductCategoryByEcommerce(
  httpClient: makeHttpAdapter(),
  url: makeApiUrl('venver/product-category/product/ecommerce/$id'),
);
