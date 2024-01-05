import 'package:plugin_pjmei_components/main/factories/factories.dart';

import '../../domain/usecase/add_product_ecommerce.dart';
import '../usecase/remote_add_product.dart';

AddProduct makeRemoteAddProduct() => RemoteAddProduct(
  httpClient: makeHttpAdapter(),
  url: makeApiUrl('venver/product'),
);
