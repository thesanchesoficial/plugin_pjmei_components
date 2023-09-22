import 'package:plugin_pjmei_components/plugin_pjmei_components.dart';

class RemoteAddSchedule implements AddSchedule {
  RemoteAddSchedule({required this.httpClient, required this.url});
  final HttpClient httpClient;
  final String url;

  Future<ScheduleEntity> exec(Map params, {bool log = false}) async {
    try {
      final httpResponse = await httpClient.request(
        url: url,
        log: log,
        method: 'post',
        body: params,
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
