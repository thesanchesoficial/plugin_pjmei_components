import 'package:plugin_pjmei_components/main/factories/factories.dart';

import '../../domain/usecase/list_product_category_by_ecommerce.dart';
import '../usecase/remote_list_product_category_by_ecommerce.dart';

ListProductCategoryByEcommerce makeRemoteListProductCategoryWithProductsByEcommerce(String id) => RemoteListProductCategoryByEcommerce(
  httpClient: makeHttpAdapter(),
  url: makeApiUrl('venver/product-category/product/ecommerce/$id'),
);
