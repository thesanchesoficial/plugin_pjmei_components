import 'package:plugin_pjmei_components/main/factories/factories.dart';

import '../../domain/usecase/get_statistics_most_booked_weekdays.dart';
import '../usecase/remote_get_most_booked_weekdays.dart';

GetStatisticsMostBookedWeekdays makeRemoteGetStatisticsMostBookedWeekdays({Map<String, dynamic>? params}) => RemoteGetStatisticsMostBookedWeekdays(
  httpClient: makeHttpAdapter(),
  url: makeApiUrl('venver/statistics/order/most-booked-weekdays', params: params),
);