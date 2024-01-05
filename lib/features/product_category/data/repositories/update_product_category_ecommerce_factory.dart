import 'package:plugin_pjmei_components/main/factories/factories.dart';

import '../../domain/usecase/update_product_category_ecommerce.dart';
import '../usecase/remote_update_product_category.dart';

UpdateProductCategory makeRemoteUpdateProductCategory(String id) => RemoteUpdateProductCategory(
  httpClient: makeHttpAdapter(),
  url: makeApiUrl('venver/product-category/$id'),
);
