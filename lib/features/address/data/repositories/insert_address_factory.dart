import 'package:plugin_pjmei_components/main/factories/factories.dart';

import '../../domain/usecase/insert_address.dart';
import '../usecase/insert_address.dart';

InsertAddress makeRemoteAddAddress() => RemoteInsertAddress(
  httpClient: makeHttpAdapter(),
  url: makeApiUrl('venver/address'),
);
