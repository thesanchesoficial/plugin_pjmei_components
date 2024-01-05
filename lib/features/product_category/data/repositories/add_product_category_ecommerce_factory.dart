import 'package:plugin_pjmei_components/main/factories/factories.dart';

import '../../domain/usecase/add_product_category_ecommerce.dart';
import '../usecase/remote_add_product_category.dart';

AddProductCategory makeRemoteAddProductCategory() => RemoteAddProductCategory(
  httpClient: makeHttpAdapter(),
  url: makeApiUrl('venver/product-category'),
);
