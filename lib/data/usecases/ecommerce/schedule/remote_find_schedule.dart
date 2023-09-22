import 'package:plugin_pjmei_components/plugin_pjmei_components.dart';

class RemoteFindSchedule implements FindSchedule {
  RemoteFindSchedule({required this.httpClient, required this.url});
  final HttpClient httpClient;
  final String url;

  Future<ScheduleEntity> exec({bool log = false}) async {
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
      if(httpResponse['success']['schedule'] != null) {
        return ScheduleEntity.fromMap(httpResponse['success']['schedule']);
      }
      return ScheduleEntity.fromMap(httpResponse['success']);
    } catch (e) {
      throw e;
    }
  }
}
