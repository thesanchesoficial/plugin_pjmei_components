import 'package:plugin_pjmei_components/main/factories/factories.dart';

import '../../domain/usecase/add_ecommerce.dart';
import '../usecase/remote_add_ecommerce.dart';

AddEcommerce makeRemoteAddEcommerce() => RemoteAddEcommerce(
  httpClient: makeHttpAdapter(),
  url: makeApiUrl('venver/ecommerce'),
);
