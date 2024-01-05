import 'package:plugin_pjmei_components/main/factories/factories.dart';

import '../../domain/usecase/update_ecommerce.dart';
import '../usecase/remote_update_ecommerce.dart';

UpdateEcommerce makeRemoteUpdateEcommerce(String id) => RemoteUpdateEcommerce(
  httpClient: makeHttpAdapter(),
  url: makeApiUrl('venver/ecommerce/$id'),
);
