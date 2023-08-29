import 'package:plugin_pjmei_components/data/usecases/extracts/remote_get_balance.dart';
import 'package:plugin_pjmei_components/domain/usecases/usecases.dart';

import '../../../factories.dart';

GetBalance makeRemoteGetBalance(String id) => RemoteGetBalance(
  httpClient: makeHttpAdapter(),
  url: makeApiUrl('venver/company/$id/balance'),
);
