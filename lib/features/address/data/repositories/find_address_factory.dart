import 'package:plugin_pjmei_components/main/factories/factories.dart';

import '../../domain/usecase/find_address.dart';
import '../usecase/find_address.dart';

FindAddress makeRemoteFindAddress(String id) => RemoteFindAddress(
  httpClient: makeHttpAdapter(),
  url: makeApiUrl('venver/address/$id'),
);
