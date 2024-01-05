import 'package:plugin_pjmei_components/main/factories/factories.dart';

import '../../domain/usecase/get_extract.dart';
import '../usecase/remote_get_extract.dart';

GetExtract makeRemoteGetBalance(String id) => RemoteGetExtract(
  httpClient: makeHttpAdapter(),
  url: makeApiUrl('venver/company/$id/balance'),
);
