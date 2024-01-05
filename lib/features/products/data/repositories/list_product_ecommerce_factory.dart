import 'package:plugin_pjmei_components/main/factories/factories.dart';

import '../../domain/usecase/list_product_by_ecommerce.dart';
import '../usecase/remote_list_product_by_ecommerce.dart';

ListProductByEcommerce makeRemoteListProductByEcommerce(String id) => RemoteListProductByEcommerce(
  httpClient: makeHttpAdapter(),
  url: makeApiUrl('venver/product/ecommerce/$id'),
);
