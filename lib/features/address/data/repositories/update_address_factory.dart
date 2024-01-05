import 'package:plugin_pjmei_components/main/factories/factories.dart';

import '../../domain/usecase/update_address.dart';
import '../usecase/update_address.dart';

UpdateAddress makeRemoteUpdateAddress(String id) => RemoteUpdateAddress(
  httpClient: makeHttpAdapter(),
  url: makeApiUrl('venver/address/$id'),
);