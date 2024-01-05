import 'package:plugin_pjmei_components/main/factories/factories.dart';

import '../../domain/usecase/get_statistics_period.dart';
import '../usecase/remote_get_by_period.dart';

GetStatisticsPeriod makeRemoteGetStatisticsPeriodSchedule({Map<String, dynamic>? params}) => RemoteGetStatisticsPeriod(
  httpClient: makeHttpAdapter(),
  url: makeApiUrl('venver/statistics/schedule', params: params),
);