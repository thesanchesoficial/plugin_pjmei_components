import 'package:plugin_pjmei_components/main/factories/factories.dart';

import '../../domain/usecase/find_product_ecommerce.dart';
import '../usecase/remote_find_product.dart';

FindProduct makeRemoteFindProduct(String id) => RemoteFindProduct(
  httpClient: makeHttpAdapter(),
  url: makeApiUrl('venver/product/$id'),
);
