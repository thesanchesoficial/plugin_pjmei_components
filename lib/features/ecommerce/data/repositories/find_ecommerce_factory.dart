import 'package:plugin_pjmei_components/main/factories/factories.dart';

import '../../domain/usecase/find_ecommerce.dart';
import '../usecase/remote_find_ecommerce.dart';

FindEcommerce makeRemoteFindEcommerce(String id) => RemoteFindEcommerce(
  httpClient: makeHttpAdapter(),
  url: makeApiUrl('venver/ecommerce/$id'),
);
