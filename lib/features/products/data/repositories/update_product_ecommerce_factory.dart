import 'package:plugin_pjmei_components/main/factories/factories.dart';

import '../../domain/usecase/update_product_ecommerce.dart';
import '../usecase/remote_update_product.dart';

UpdateProduct makeRemoteUpdateProduct(String id) => RemoteUpdateProduct(
  httpClient: makeHttpAdapter(),
  url: makeApiUrl('venver/product/$id'),
);
