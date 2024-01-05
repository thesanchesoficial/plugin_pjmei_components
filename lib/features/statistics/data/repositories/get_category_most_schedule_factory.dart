import 'package:plugin_pjmei_components/main/factories/factories.dart';

import '../../domain/usecase/get_statistics_most_item.dart';
import '../usecase/remote_get_most_item.dart';

GetStatisticsMostItem makeRemoteGetStatisticsMostCategoryMostSchedule({Map<String, dynamic>? params}) => RemoteGetStatisticsMostItem(
  httpClient: makeHttpAdapter(),
  url: makeApiUrl('venver/statistics/category/most-schedule', params: params),
);