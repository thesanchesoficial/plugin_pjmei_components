import 'package:plugin_pjmei_components/main/factories/factories.dart';

import '../../domain/usecase/find_product_category_ecommerce.dart';
import '../usecase/remote_find_product_category.dart';

FindProductCategory makeRemoteFindProductCategory(String id) => RemoteFindProductCategory(
  httpClient: makeHttpAdapter(),
  url: makeApiUrl('venver/product-category/$id'),
);
