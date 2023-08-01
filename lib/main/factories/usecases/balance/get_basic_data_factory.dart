import 'package:plugin_pjmei_components/data/usecases/balance/remote_get_basic_data.dart';
import 'package:plugin_pjmei_components/domain/usecases/balance/get_basic_data.dart';

import '../../factories.dart';

GetBasicData makeRemoteGetBasicData(String id) => RemoteGetBasicData(
      httpClient: makeHttpAdapter(),
      url: makeApiUrl('venver/company/$id/balancePlanAndOrder'),
    );
