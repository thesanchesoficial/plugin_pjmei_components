import 'package:plugin_pjmei_components/domain/usecases/statistics/get_statistics_period.dart';
import 'package:plugin_pjmei_components/plugin_pjmei_components.dart';

class RemoteGetStatisticsPeriod implements GetStatisticsPeriod {
  RemoteGetStatisticsPeriod({required this.httpClient, required this.url});
  final HttpClient httpClient;
  final String url;

  Future<StatisticsPeriodEntity> exec({bool log = false}) async {
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
      return StatisticsPeriodEntity.fromMap((httpResponse['success']));
    } catch (e) {
      throw e;
    }
  }
}
