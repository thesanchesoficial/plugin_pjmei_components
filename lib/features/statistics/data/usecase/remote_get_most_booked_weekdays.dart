import 'package:plugin_pjmei_components/data/http/http_client.dart';

import '../../domain/entity/statistics_most_booked_weekdays_entity.dart';
import '../../domain/usecase/get_statistics_most_booked_weekdays.dart';

class RemoteGetStatisticsMostBookedWeekdays implements GetStatisticsMostBookedWeekdays {
  RemoteGetStatisticsMostBookedWeekdays({required this.httpClient, required this.url});
  final HttpClient httpClient;
  final String url;

  Future<List<StatisticsMostBookedWeekdaysEntity>> exec({bool log = false}) async {
    try {
      final httpResponse = await httpClient.request(
        url: url,
        log: log,
        method: 'get',
        newReturnErrorMsg: true,
      );
      if ((httpResponse as Map<String, dynamic>).containsKey('error')) {
        throw httpResponse['error']['message'];
      }
      return (httpResponse["success"] as List).map((e) => StatisticsMostBookedWeekdaysEntity.fromMap(e)).toList();
    } catch (e) {
      throw e;
    }
  }
}
