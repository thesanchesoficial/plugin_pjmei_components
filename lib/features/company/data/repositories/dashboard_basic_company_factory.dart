import 'package:plugin_pjmei_components/main/factories/factories.dart';

import '../../domain/usecase/get_basic_data.dart';
import '../usecase/remote_get_basic_data.dart';

GetBasicData makeRemoteDashboard(String id) => RemoteGetBasicData(
  httpClient: makeHttpAdapter(),
  url: makeApiUrl('venver/company/$id/balancePlanAndOrder'),
);
